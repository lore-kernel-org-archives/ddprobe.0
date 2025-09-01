Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145C332F77A
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756741194; cv=none; b=BzRYF/yEKieTPy0IztSy8WykWC2KxMjuGkzFZ0C7AaO1RK5hkjiW1i7iwLCoq7+YhSc0xwfL0gcYaYJK1+LdnzDUbPhRmfiCoNOGtI+2k9YAimeoSefxJaqnFBRASa5hTGfRsqxoMdDUrmyiM9QXRXZBQId8MKGl0G5B1m/yYqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756741194; c=relaxed/simple;
	bh=Hya9o6HNx2gdMjra02wvfXv3+VdnpnFPVgrEOIdWFdY=;
	h=To:Subject:From:Message-Id:Date; b=XC7H71O/LfT5FQSJ1eT9gnKBEP6NzkOa99fwQX8pa1hte1cidbO71qk5tN10HXuOJYFE9yqlJXCFgUGlQistE1JrA+LRPgZDnJ17wxhpuwES2haE4e/a8t/8/09KDTuWseqCX8y4R2QN+yM5Zih2CHIfa4Huitfj9ACIrobZxKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2jXSO5x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2jXSO5x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6769C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756741193;
	bh=Hya9o6HNx2gdMjra02wvfXv3+VdnpnFPVgrEOIdWFdY=;
	h=To:Subject:From:Date:From;
	b=Y2jXSO5xJQdLXMxGkDinnL3sexEJgVCqrThV3M5le0DrB+TbxYD3gsLB54VLysWpP
	 rWlT+cELHU555flnW1W2KlPpRq8Vo2LaD2O2YvsOTynl1MFX5/URioaVC7AhRYVnwi
	 FIQZTVF5pg+g9mLoBRMc+m+LDV8hDch4H9XBzXXzwnjQ3yP42ZLY6YsPkIEAgdq2a5
	 5gFswtDkhbaouJoS03Wmmz3jkKWhP6UBYiwjl72HoA7t1E/kwh6MCjF0+z8jmlLK3M
	 KHcCpaAZi6ms0N5/lPwLb/xGRnTIXSyRIs0LaXrAjMFBTGULJhGvbiV9YJCkxJPnM9
	 d8o03qOxGNC+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925AFCA0FFF
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175674119357.8270.3227996874286141599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd54fa493085eeb6ad9313de354c3626bedd1ea2fad769217b3fa6921eb435ea
Date: Mon, 01 Sep 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756741193
