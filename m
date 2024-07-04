Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C39D40BF2
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 08:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720080923; cv=none; b=YU2U08qVCZ7j6rTd9ZSfG91G1F6slqiiWuVKxLp0JHmCTK/i7zRUHFHlorN8nDWCf9rCvZo+WrJTXGgvdWfL6mlzsUH0I1UToHabiLIDYCH0DWoeGJl1D/V+QDijNFIBLVUb86PHotc/iLKvzrGxdJAA8TSqT9AE4/yFiLR9AcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720080923; c=relaxed/simple;
	bh=MHHsvWTEjfDE4TLyUt31vbyAkV4vKJ3t9xcdkyWK3V4=;
	h=To:Subject:From:Message-Id:Date; b=XN1fEary/WQy77Iv9BGr44SyiLXZO0TeQtIaelEPjiNqvfLPe4EuiAZiQlJO+s0k6bZJHIj+8C4XvIZ3AkafBDMq8KorIMXhwUaC+vSMASVcH2qaM2+NXc7xY2BnHru3Fy6aGPrd8fo6jcfEMyuce5WoMGqrdHkCsw3BlY2b6RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=siY0vQI4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="siY0vQI4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7387C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 08:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720080922;
	bh=MHHsvWTEjfDE4TLyUt31vbyAkV4vKJ3t9xcdkyWK3V4=;
	h=To:Subject:From:Date:From;
	b=siY0vQI4WK91rsAQ+qJMjoAcbleA5Tc1wH6ZNMpncUENqbj26eBIoVmqaybEGyWB3
	 upHO3NvjKzAB5fAMAuvSXApKv614SyCr4wtx74ZevJ/hJuAhvpfoPC2r/hWziZeK7x
	 /WxI8VuJq09Qjs0ODfoFFuCjq6pd+E/SYOOtIvBDjnZVd99+ValVIi7gun+xEneXma
	 eEGU7diDx5x3zq4hCa61XQhd/i1HaH5D1lrI8aHKGEvecODHbFvxs7VJEStYhNCd0+
	 9Ei2oKKBLnC6zhLkhsvtdcmhjTfX/c5Vn1ZVsCLbHsJnB5+KLPnPGlN5OIWBWFOFoi
	 rBlctJRssVjXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F77C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 08:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172008092278.11773.11423973396631815079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89144ea788165d45aebb8da16688a3df60a96be94c05100dbb1809b01cdeee11
Date: Thu, 04 Jul 2024 08:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720080922
