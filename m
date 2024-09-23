Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E86811854
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727064954; cv=none; b=L7nH/96KOzFJ4Y64KFc012YO6a16K/RTnD2jai8R85xtyI+fbnHCQXmPhnGAe8Kc6llV04nqKPc6llRXVTL4DCQEiq5eB0UNva73TtTrlLFDSNMN6fADrDQz5u5BOLdorUoorSlDIp0+Ztr50bWlveZkR82qUmrVVOeppBoYK1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727064954; c=relaxed/simple;
	bh=+ZBtMYS7NGeY4qopA3GEkDB5dOq22QNZLRiUpWTHGXc=;
	h=To:Subject:From:Message-Id:Date; b=fX1on80EP8JnHHDMwkiJfD1mBJGMMFYSvKDDreuBB8bptuFHhPkouzmPTETwg3k03mClTV8CHMao6sx61IFOoh455vFWfsaEljf5QwbImiA3QfkP7ZH8rbioIYhU7oO/gMGC/sU7RCaWdj76MDTbYRbhKH5UnVBRzpxTo7Gb+CI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q26hPb2T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q26hPb2T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE072C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727064953;
	bh=+ZBtMYS7NGeY4qopA3GEkDB5dOq22QNZLRiUpWTHGXc=;
	h=To:Subject:From:Date:From;
	b=Q26hPb2ThACC+tTnXJKLz6QkiXljhv4Oc5BqXyJu5jJegxuSRx9ZWUAh4r9AF+uKf
	 JQbpLvTNcO8YRJUgzgKydF5CH9AtepXI0YIHBij4abgkBc9hl9EaAVnrijOewI/Xz3
	 DYDaFWiQF+WDzXxFuE5EvxgQx2gRyQMVQjmX58IhhOmEgKrmTOoU7+fifjwqif6dU3
	 XrGlXmS3zhFn1V5QAGeoKujkVODEeFj+hWfdrdOHNeMKRGH5HId2owLiI3WB1Ci+7S
	 PRfvBKUTn9aQa1ZCADFfXx/IaWGdxLK4s43gcAEGYhwH+E9r38PK3MVUf2eBl9Co4G
	 NQhc42ITstlAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AECDCF9C5B
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172706495359.29039.3409804482273608530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78dec9c3426006c999fc3d4c8d4dcd2756f889d0b56302d089f49ef64d86e36b
Date: Mon, 23 Sep 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727064953
