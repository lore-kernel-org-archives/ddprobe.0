Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3274B39B96B
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773315294; cv=none; b=u6spCLrKMwOLmBeV87pNLT1K9/VRaloHCWC8lZl5D5Kv20R3mTLZWed9c3AMhJWLJlYjHvpNMKEURD+kHf67S5Lk3oN0+w4HevgnHU0TPrILOrgJWORJr8srUiK3Q3dU6hb91HjGjxXGCgqF9bBxZcaGP/m/GftCGKQ7qEG3fDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773315294; c=relaxed/simple;
	bh=CbaF6sZOruP3AjBYdTH3T51lZSgcoi0/KdSV1GiaghA=;
	h=To:Subject:From:Message-Id:Date; b=Aoec8XCGq6+0XPzk84p42QOTC8OxJXR/E4rH1Ae24V4YXD3qhZ1Ynh9YzzfraATb7LdmyCS2Pl9nOTL8UxoYhpe13b3fAu+WMeMBscG+FTA5D4U5ZSyX+Qul1VoTAF+ZisGifiATlSA/AdKvfpnaBEf0fv6Jg25yFwI9XgkktKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PNUDNKw5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PNUDNKw5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04B0C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773315293;
	bh=CbaF6sZOruP3AjBYdTH3T51lZSgcoi0/KdSV1GiaghA=;
	h=To:Subject:From:Date:From;
	b=PNUDNKw5p0I3cKm1DtUWbG9F76IHsXVyozlBnbXW59S/P4zaQ8UCKeHDXjW3nyKdu
	 F3vdmpf2Z8ItRuOi6MFjiyj/JonyFhrUJCMbqGBOO/pUPA5ckg94+4ySgVHHnRTd9X
	 g3NkP9pxFbJfEJCnLqlsLmTDhMCkxk023kgB3Ekvsc3H6xS5e/iOglLZQOlwYIJTgB
	 ZY1lY7hrBCwkI/fodty4KtAdEDmwbddfzzybcB/zuQ0gVm590tAVH11RV38dPUty7B
	 0fvP0uYKQxfQNFQqWja0unjYnFWRNwfiayF8BM/SPpU0UlSxCQAU/3ax5qSR3Beu4O
	 Sc3JRc9PiGrmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F488105A589
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177331529357.12828.16966733597459508765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a105b5c912b7fc4abaaa15a6ed42f704bffd5ce2d47bda8d06c303d7ffc3bc10
Date: Thu, 12 Mar 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773315293
