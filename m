Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437671E1E00
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745106594; cv=none; b=Jdb6f367cu++z2zoEhtlvXiEB/hUdsS4mBwRX8eMlPRH3OFWCaqE8WVnZVZfxdRjAlD/WYz6iEkJa4YsKDm9wxGiZgdGHMA4IbKLO2fciGiTBZ6RP6OnUIFj5+vSof/DeY4qCXHutl4l7si9iOKQ84zRK+Vn10AYYffX+QtXA5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745106594; c=relaxed/simple;
	bh=/0kx/X7ea89ErS1DM62uceUcSyuf8pqcBEAcs8fczhI=;
	h=To:Subject:From:Message-Id:Date; b=gOY7bG8WxT383QRiGeTHnoPabfoX0FB1fakMtOdfhnbxi3NbUV2pg3Rxp2Oa4Zsh8V4OWFKnje4Bz9uBS0pm9mpqRpRXXxXwmfdwQha9U6lXlKw5BQex+eAQPcjgx/Gt043V6DDR97Tx06l+WfwCIdpd1qNsJLU06EJ416RMUXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7OaDvIm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7OaDvIm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4BBC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745106593;
	bh=/0kx/X7ea89ErS1DM62uceUcSyuf8pqcBEAcs8fczhI=;
	h=To:Subject:From:Date:From;
	b=F7OaDvImgFJZv2J1mkhrkwF2Y5ucICbVRglGPbw5XI/EgPI9LqArnv/Sg6GZss1Uy
	 M3msodECsQrM0j4YuZTOfuzWaSaVNmIu0qrC3przvgMurnTQvbNoWW4OzYN4hg7CaX
	 9HRUPI7H76nr+D+ndFS1KrbKMryr+ITlMlTFhk0lNxAIQQMx4JDe2CGfK/ST0XKv4j
	 rU3NxtPKPyoFQ3C7MOB0X7dwH1uIcLDyru8mhI70zheLk0fnMelyxk3B0ZVNWIjX2d
	 GCl41oAftT/fcDlx+q7t+BPQ0YjsvFxR/vd5WDJrlNt9twho8ePo8wdbkNGNHpfrkV
	 JWyeOzm/RihfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D12C369C9
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174510659359.10530.13156654244669001701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e469eaa21e17c07542e8dbe849710e71bc7b049b4b9dadc06d544e959439011
Date: Sat, 19 Apr 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745106593
