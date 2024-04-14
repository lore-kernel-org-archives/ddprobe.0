Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66D4A17543
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 03:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713066563; cv=none; b=E9pALruJZID1vFPGEC7Jvrj2XXmliDNPcFjFzP+t2ewQHAUlVgwswAytlJxgof20JF1rNn/XK5NPeupawgdL47l03uvbN/f/vti8QbADl0IsM1D58zv1CDxBOIXpWE67xpC4uRNcFtra9kERXvrQegfklrFYX2ghpJW6kez42jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713066563; c=relaxed/simple;
	bh=x8r8ocOUbBDP2erbp9crR3teKoOnBixSfvqUCxx9Zd8=;
	h=To:Subject:From:Message-Id:Date; b=pQyifAIbmgJimckAdA+Uev8DdXf0fpCSreM7FjZXND594mHxC/XidVOzD1hM/fgJV4lFzd6cN68hbrx0d4vO6Yk3MAx/ORXIBrZ+TtSERE5hE+lSoGiX6FOQTxQ/K1hAGeDKEHvACNIzWpSiO7x+F5uUj6YEuP3QlSep4FaSZTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ea44R1SR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ea44R1SR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E92C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 03:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713066562;
	bh=x8r8ocOUbBDP2erbp9crR3teKoOnBixSfvqUCxx9Zd8=;
	h=To:Subject:From:Date:From;
	b=ea44R1SRtC5nDEhNWNGmdoetQk84/2hRsxDXooepc/XZ9h9jWdFeF77m2KgLe67sX
	 /n1XEGo5JPLsxcwTYQzDKhTAPWDYUQSzA1fvku2LKjPn5QMYYQD5kMYP6pm8L1kaqL
	 jiJo/aFVutHOvlsGSKqhmJF/Mnv1IN52mRwD5rI2Zz9jhuDTIkaJ0c+rxTY4KrlgMb
	 7Z880+jLuHCgS+0L9Lcje3uliFf7RqQSx+COpCHp9+0YeGydc98sZX1OE0KUY9ElQd
	 dkOuxktnNS2IFoot5E3+TmT9r0FeUXblSw7hzURcXgklQ9nn8RQf/PJ9CqV9TuqTu0
	 ZxBQO8fzvPN2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3F49C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 03:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171306656277.26438.12927780706329953844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fde1ed33f3c777ca2626dadd2e232461f3157bdba191d6a6a7329019027a92f
Date: Sun, 14 Apr 2024 03:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713066562
