Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CA02E62A4
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753442994; cv=none; b=MAlLYl85DdOtAwabUKVYRP4j7C1v1kHMt5SmIANXFIpKgfSu71OBMSEuP4gkRMwq9qjXibboyzJ2nPkjhXSfvHE9Da+OZtq+QagzdOVZgSnqnydDVXr0Bs/JK4utcLlbv4hG8uUiiSGorab6F98dq4OZwOsi1imWF3q6sdTe2SU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753442994; c=relaxed/simple;
	bh=dHBNbIUsL+dGG2UZIntWiu8uOdtCQwFvreCG90GAihw=;
	h=To:Subject:From:Message-Id:Date; b=FZWJUyTDh8uYg8J0t1q02IyN8HuMz0Q/oXi4CG/6HkJmr1OUlrpobvTYOQcLg3oASq5SttYSpchhufqLW2gpS/MuvBy/aE5lJX1agikSt1BjwqV8Nle7n1dRMEQ1gKweNWi7nA5j25Um0sy70hE9PLntUSLDcxPOHI80di0DiLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G+CsWzfY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G+CsWzfY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16D8C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753442993;
	bh=dHBNbIUsL+dGG2UZIntWiu8uOdtCQwFvreCG90GAihw=;
	h=To:Subject:From:Date:From;
	b=G+CsWzfYUtvygumui3MWo291v/8vcSf6B5LeRs2ksaLDbSofgSPc9uCaCxhwyFEMc
	 aEHPWp9TvLcaz6p/aUF4z4IHNQM7aulPFI2n7dLjUSftY2gGy1bjK6ilSfiPq5GFey
	 kUk/PsHGZmoq9XSB4kevSkTeVsF0HljmHJHm6cmFpKHz+TlKs2i/2LCGX0MU/xERaH
	 joVSsMEt2dOTwgJhu5+yvoj59SYMhNB0m+TA9g1fYkE1R/Xpn0wksermLbPhcHcXD2
	 E8mwc2ZMaVtWEAez8X2XciXUNkKDHEKlCMV3zHFii4igHMfPXnrVOKZoF0Og4i6Cmd
	 VM2zIyWmrbwpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECECC87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175344299357.7611.117781533606341530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58eff3fdb1fe3c0040abdea2246ffad650958d1615bada8c08f3751d3a7b31ff
Date: Fri, 25 Jul 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753442993
