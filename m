Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F851C3C08
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754833194; cv=none; b=LpOAi+WZOR9KUM5PbOMLKvs4Pk9IiW/mil0WagJ247bw18PPNv0oTGPpHrN5uh7/MpFIBZiolTkb7lX0Rg8dIipYRciZsCn1C6ikpPo4XTcx8kUfPv10LIXKkFsR10JKYbAVGKjBDN2EX6Dh49HFLlXQH1jfAXtNA/D1fLh8u4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754833194; c=relaxed/simple;
	bh=HFEkPE5TJNF2aN9dGqpT06jge7414e0yvMvvHN0bOlA=;
	h=To:Subject:From:Message-Id:Date; b=lW7dodyI/pfOFfSKoUGC06JCwzBeKPDdpg4w6leMvlAx2qEOTJ1BN4o/voBoj2cltOu1TXfzZPyPsJ9PAQdirBMKbieCH7B6FNruAfbW83/xP73eEsmleKMSe2bHSupbA3Uo5MP1c8G56eVHhcxc4uQIp5VRLIPnurxdFXR+T28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJYIAZCK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJYIAZCK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBDBC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754833193;
	bh=HFEkPE5TJNF2aN9dGqpT06jge7414e0yvMvvHN0bOlA=;
	h=To:Subject:From:Date:From;
	b=PJYIAZCKFIStIgZVPj/S0+wp/VsW753qEdPlOaiEnh1oDIu1Ki0oVvHEzYnQWbZ5F
	 caboT5C0avPf1jp5RvZhyF31423AkuRoG24MBtEFqcaewCsBkkSps4flfn1PWM8kR2
	 iryxoV//U48TQY5k39zlpqUKQLen0PliLGeaLgs1xVMWkqoo2HdY45ctAPfx9Jy7FA
	 F+w/472d8L977ZBRx0HPpRe6QjEAH7n1xyxIwtcz+Q/UKvFoI3qjQmU8QMPrfgJfIz
	 aPqjAnj0W1o6qbtrMBJBM//nqJfCQfaQ3GI+XSwX+Qeqq6uzB4XUiwiAPI6GuUEpY6
	 Ekqm2iaS5xAvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FE1C87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175483319358.23055.9490997370046062706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cabc9acc6028c6eba8131465ed3a2e10d739ad08839b77273df59eab524c05a
Date: Sun, 10 Aug 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754833193
