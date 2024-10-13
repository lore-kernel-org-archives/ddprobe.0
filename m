Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAB02F42
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728836754; cv=none; b=tg/gNzBphOh4P+Ok6UmZPsMezVLGhLatWvb31vYsS5Vm5tlzfgBx0hIXsaXlm0q01K4iF47gjjt61ymH1LwFNef3/Gcz6CZO5BMFcUq3qDGfX9A/ZRt4rrMj0O3uBXDpNqNjU70Jp5SMskzrpUdO1flTuBXC3BLO6FVc0WEGb+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728836754; c=relaxed/simple;
	bh=UlNNL8P/tModXbEiSKHoC6foFYf0vHps3foyRMCQqoo=;
	h=To:Subject:From:Message-Id:Date; b=aotMxHtctrrX93nKHEsFAZGN/etOqsVdzWIY+Vf3NU4q2GxNrKcptrkdpbQ99ddRryACRYW1B3MlNFRj0wYEWTYf1YN2u1YjBVki/eECUHqc6Lbj5mkOv6O3Av+ZVzmTLXYsiouIx5s+ZIuWOnEO6A9kVSqOS9NW7Su1aNJQkeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QC/InYck; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QC/InYck"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFEC7C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728836753;
	bh=UlNNL8P/tModXbEiSKHoC6foFYf0vHps3foyRMCQqoo=;
	h=To:Subject:From:Date:From;
	b=QC/InYckpCLgdWcOOTkPORB2KSTHxzjx5nG8pKWZPniiIPfpPcNVj/oDzyZxr3e5K
	 hZZs4dj/Sq8TMDK0wJCoL6t6ZfOrO7sMMVctgELPW7sTXp2Mihwjr5wXRLAmWLMLWO
	 kBW1NE2tR1jQeQPM8leA7b8vGr6/+T3YXWk6EX9y3n1tYP68MamGeG9koa/ItVDUl0
	 533T8Oez4aM3jNNDbteUWMt6G7L472oGgLS6yhgYiJ2FkdKerOD2puzrDFQvSSFghT
	 rHHCb1SmKFwbFzhFHL7B3daLUK8JT/3WPbZj7+t0eioeWdFpFXIBSXIfVSPmtsnoXv
	 IY/ymfFPT5d+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F1B5CF2579
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172883675361.18195.1789802439985815214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69ed3cf27fa70a4e41589f7e43a468e9f0974b67552448d493a756b70a7903a0
Date: Sun, 13 Oct 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728836753
