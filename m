Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEA71F03EF
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 18:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765476774; cv=none; b=WCkP90E/1Xxo/kcGP0v2j5FT2bV9EOa98IlMOqfzWWZNumHWjBQMSMNgoWTicP2umB+biDjulihF1Xe1YAh+5LvQ35EmugBCUSFrUMRHDXaQzmELSjd5099O5IBmL+NIhd6/Pfh3BHmPmmbLdumqPAjPiR9/td0heoF3RFNpq4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765476774; c=relaxed/simple;
	bh=QPnnCmaZ/S7Xy3D866C6Y+k1bEdIdKAtZc3I2RaeK3k=;
	h=To:Subject:From:Message-Id:Date; b=pRFP8Oi2d66avG92D5qujgpIuSbwrwz5QBgPxIA+XrrzKIT8L2zxC5lmjO+eTHjp9rqpo63c1rrVuHCLNZh17bsuNSq7Hpl9qHZLuK2vICk9/q/i4v80bgKZ5Ry8RHmNxaxS//1bdisvd5ZY/sGxTxEoge6ojLGWn0ggpT0b+sE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFyQ5rmY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFyQ5rmY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA1EC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 18:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765476773;
	bh=QPnnCmaZ/S7Xy3D866C6Y+k1bEdIdKAtZc3I2RaeK3k=;
	h=To:Subject:From:Date:From;
	b=OFyQ5rmYRuX6/FbOlaVH7oj8d10hqRAyHK4a6KG+nD8ECrKvd88nBMfochPNQ/cOZ
	 bYGku1FU/ShprD7PDIZdcqMgY1b1RpMad9+a5n11ux6oHUrH/F7dtfv1YSCOQzeE3T
	 wc3N4/sImxo19LQkl7tnlt+xxjB2ndt7KpJjI1eaLl4K/g5knoXPMxhraoZ38NOtLw
	 1rMm+AoDNLu48xF3DYBRB1CXDMrexL5hrc2uqIBRoNFij6l9IAa0KfVnElDgpAK7Kn
	 JWEsoE92co6LMAnhVPugQLnIdFZCnFWR3sTEjo86ESYTwgAa9TzpuSXsRMdRRoKC9A
	 aeb+diRTN7aoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9772DD41D7C
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 18:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176547677360.20360.17272971943841037026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f9229b446da333f7a368fcc2fe1b850178ab832cf30610b057eb2efb35d5c16
Date: Thu, 11 Dec 2025 18:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765476773
