Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5AF28689B
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 22:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775774854; cv=none; b=m5eiaH3vIEqTKR+rpSw1NWwsj3/3M/KKwlQxGW/fyf6K6MjlvBM8XxLJzYF1OtMr3DdmgOhNKTuBtb2hGAQz9siu86QO92RJiLipxS5vxjR5K2dnDhfBFpjQsHyPIrgHvJi4JJog8bSxjqaKXMl8CkkC7dQuATGzDQqIzYFR+aE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775774854; c=relaxed/simple;
	bh=N0seF4eFWPn3oyJtwl4OzLRy8HjZQHmhgFdzNOKeDqQ=;
	h=To:Subject:From:Message-Id:Date; b=L492SzE9MBGz5rRn9coyAuuUI4tT1Lx/nw6gvd2dovpPdIoRH+gEPQxUQp8105Ez7vK5CSb8bRroGNHsY+w4WQWQLSoQnYDOKzIBXXLZb62LdPIvSIx8miKZC0nVC+IVgpHDU5KeZHoeufjkoW3U7T4Sy4xAkjwoFtiwVXw1TX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2+3FmeZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2+3FmeZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC750C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775774853;
	bh=N0seF4eFWPn3oyJtwl4OzLRy8HjZQHmhgFdzNOKeDqQ=;
	h=To:Subject:From:Date:From;
	b=l2+3FmeZ4PcUlfzG+tH5Qfh+n3cUv5X97zsghmjMJ8V90IfKZhoRzvvX1nrAF5Vlj
	 d7zVgrPmCgI9Uzft/3bhiFT/F1XvOmkEYkfZBSH9RVEYmTjmaFFfgrSyJ4io7n0NoA
	 xa5VPp2SREAGQuwfL1ud2CHnUP17JpcQT1bSsGMGPBvEesZaV7ozpiGfib+hk4wCO5
	 v9fnENb/b4I+NyCjLVOzkLo/HC1LaRxFbn6xCQYeQzVoduupoZTKFC9JkAG1v64NKO
	 r4NMVdt9VMQyUrzwyXIohr0GIyxyk3s/it+gLnhGVfnVKwMrEq08RPiOAMTdSJDhHi
	 cDtmssJ/kiduA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BA6F364C3
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 22:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177577485368.13842.7076013838971976979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cae15a46860190cfa2e2ab496957478789aafe5faef4f1a5bd0ad63765bb6e5
Date: Thu, 09 Apr 2026 22:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775774853
