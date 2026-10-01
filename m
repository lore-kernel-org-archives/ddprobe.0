Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B54D33DEDF
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790848834; cv=none; b=EM8R8adHF2XKKq1fca/B9SDhmHDKnMEoPZWMgLF3PdXkEm7osePMtY38Dcuzs1X//Wwh72nugDStWpSaAPcI679/UKyZv7CcWUfUjP2gj1fQwUnmGsNpdIPY5O50dKQYaDeX394zhG01eO8XNVScZqdz/c+NiJnsafnR5pwmpsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790848834; c=relaxed/simple;
	bh=eJOb2KuMmLiKYQh9LKK4YRcxKImstK3qoDFsFvNVWgg=;
	h=To:Subject:From:Message-Id:Date; b=caV3JuIU8NeiFi/FsqNuBDI9bRTytkJpNVbUOnqBgLbFKYWoReg8phWAu5Mpzknloi+9KyflJZF4lHlBcsXwI32eWq63ExE0acpmjSB2SGna0pe0q11Yehpb88+LBTZaXA9dHP2+WRRjxpWvBE6rkoQgVDj9i+Ru4DQ2Oydf0FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JyziAEqI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JyziAEqI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A67C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790848833;
	bh=eJOb2KuMmLiKYQh9LKK4YRcxKImstK3qoDFsFvNVWgg=;
	h=To:Subject:From:Date:From;
	b=JyziAEqI4OGEC+HOypBlDEXAUxW1yp+2xDiXil6zvsa4Hkh0jQvCkKdF4f68s0UJi
	 ZAMd4aNy2O4n1UFhp7mRuBcTKSu0wirzAepg8X2knEgIks+FiLRTpqI9EDyn8iPY+g
	 IXBBGE/S4O6/nn2tZF68udZbLp1qMQWxnPo9bG5LgBnZtZaqRY+ktGw/kP30PnZYgB
	 QVjXLw72KCWDQMgV7np8iQLRd+JWdaAwSYemx83PRoB+if7cwgy2ukcdcYL3k2b8w1
	 C0UYnc2lD2FVtd7VzeDfH3fDAKKs+ZRqisakNKTFnlLvzbzsfiwB2APkVSHR0SGOxN
	 jh1JyAFf2r/oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F3DCA5FB3
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179084883371.15251.4116678917149009051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 171772f4ee44977ed4c1ede54f13e8365ccd24a8d2016e8d3802f6855ee053c0
Date: Thu, 01 Oct 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790848833
