Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A24101C3
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 15:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705763897; cv=none; b=LKmKDZa7K/G7n7uvi9vbqcPt4yC3M3Z+mluOd7I96oYIO/uua/AtcDEmSLbja+UX1L1YsoyVKKvsFw1DxWiQ6JrBVGermpwxhNJYy7cSIXsmP1ObRux0zRL2rW4rXlkrIHQeMmKYflUHN1pKaLUQav4LKpHI2AnY2x/Fw0dupdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705763897; c=relaxed/simple;
	bh=ivDLBlItpEXL6NRPid9dxsfwDEYAvtAATBlbCpyZP/0=;
	h=To:Subject:From:Message-Id:Date; b=CrNnuFLc7H9QjrhbQ39t+DUXqfReT9jNNlcdJ6u4XqamKTSRY2lJ2gfGwnl3lR0l2Xqu/hdJM71TAbVy6XM3oCLkBRW7u43C/FxHlkYw3bgFhoXA7ycwfcRuq3lgyA5PeYmP6mbrjNlLC1JrUCbw4V/FPFjtHlABxKDALcDG468=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p96TNQhA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p96TNQhA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76F4CC433C7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 15:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705763896;
	bh=ivDLBlItpEXL6NRPid9dxsfwDEYAvtAATBlbCpyZP/0=;
	h=To:Subject:From:Date:From;
	b=p96TNQhAee1V7APUhpOwmcQ3YmIDJKgUb6dKH0V4QqEU7MsaD38VQH61iEC86oHqd
	 hqiKOokpvXjhF8Ibzqs/ntdBGxyQc+BQpjjdwCAWxan3SoF+ZBVgFZyvth7tJVt6Zh
	 1dhkkhLhP9L7fMezG2GdbJzuUG5szFEOPbNM2FoSQiD2tLNvdvLLPpUTPb+4NAclaD
	 rJhFSGc2ZdSKUeUPoNrJeF3Fr8YrxsfTwM+QB9xE8Sscp0ag7/nAMREN3j26UvfecP
	 dt238n2qlHmN168fj00vRF1gQ5/Q1AovhN1WWutgYSq2ga6Kp787EDKA7Skj4T1uX7
	 /QPcnOTN6Nhkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CEF2C47DB7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 15:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170576389636.25385.10558897829622442660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c901f935d033a4683681e3ba5d7b76e2c18c4f0e8f1c3fdb08ed5c18dc61e920
Date: Sat, 20 Jan 2024 15:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705763896
