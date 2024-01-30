Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0591382D8C
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 17:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706634497; cv=none; b=Jhnl6lKsRCg2Gj0JvPmaZ0DcH3QiY47Hngf/Xzcek7ouI/rKfuIhsbbqPYar28NudptR/gCoZYi1vt5tr001h0S3IcDpeD+0t/q4MR3Vw7zS6idAiuFF3M5qDvJU2XCZfke/A20cbAljMjKtPyXlwsmqQ5pm3gXoLmecZdYyzDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706634497; c=relaxed/simple;
	bh=6kN963I7zDaQ1O2zXigE4qLay4A3xG0UzZav6Q+2JxA=;
	h=To:Subject:From:Message-Id:Date; b=iEbmNs5osLPuGsOt4AK9LPaXpRyMbDG0iwTOHYdhmiiLRJ68ApoFk99Ne0WtrcYksQk6XRsOG0JzGGzo6LRqUYz/Bei78BF7QkDh1aPTFC3u16Yzz7G50BNfeAvaQ0Tu8KiKw77iRSwMPmeGzL4mFkSM9szN21bfRs0V99McqvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QcudQ3H7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QcudQ3H7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89733C433C7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 17:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706634496;
	bh=6kN963I7zDaQ1O2zXigE4qLay4A3xG0UzZav6Q+2JxA=;
	h=To:Subject:From:Date:From;
	b=QcudQ3H7G4NTr+R9Xu2HPDgRGQz9w9WDiWKf5jFg0hU46hKJ939BiI57pysgLCBBX
	 jMRNRzEMmWuhDfjGakBgDAvXzdUYOG2PQRNIc9cwL3fBc3QZnte2+rmXrWlVQX0VLF
	 U2tw4XIPtIYI85DIZaN2H/tgd0SWcMvLFroqVHzojCZuc7VcqcCFCltZBP4msH/12j
	 QlWjcIp71pQMEX0CCCF4Y0d+C0J5cluB0aTtVdiYKpjQW8wBx50lDC/C69zDSVb76c
	 1SO7ncWrFCHus3m5J1Ah6WTKCHqTXxy/QGk5NY1EXKATrCXLMZl1iibzlxPGXb2sEs
	 7veVDboj5EBVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B555C46CD2
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 17:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170663449643.32122.2022833259014931562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 223071ebff6a7b21dde24af98ae7221cd9fb4ec7b8d999e6be253d40847c63d3
Date: Tue, 30 Jan 2024 17:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706634496
