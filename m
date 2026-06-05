Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D0464657E5
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 19:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780689274; cv=none; b=i3iJbFzi1YZcm7yStdF0mZNMZJWsUzGHi049zB14DH9zDxKxY2/y0EvOgNTHAJOBL/MeRsJu/fM//a7RVpc54kRoRln4PKis6ja6oyISddCZ1JCEop/N+SDTAqEqElCBh6+Sn4jAZ2SPRbL1W1WWmwMAuBQksTPwwkhVI4rjkUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780689274; c=relaxed/simple;
	bh=DmR7pw+sOeiJpM4lPrzmzYIQhnLOnEPlz3ee0jFg1YM=;
	h=To:Subject:From:Message-Id:Date; b=WJZttBlMjz4JkYNFNMffxoHKvUicW5IbaF9HAJDYKjOkKXEg2eRAGdlYjofwq4RCo/Qtswuc61Hr7UlKqDud8u51Xxay7JyDaLxOMDTessSOMdFPX0nKONS+8WqgH+Rtanm8TqkYYiV1jYuLsbf3fsGiVO+6E8gSrosYZIgDuk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7y85LeN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7y85LeN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA348C2BCC4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 19:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780689273;
	bh=DmR7pw+sOeiJpM4lPrzmzYIQhnLOnEPlz3ee0jFg1YM=;
	h=To:Subject:From:Date:From;
	b=r7y85LeNFDOOgqpqXICooKFG4EKXfvVR7csLjLR8zrR0zM9OlNxWCcK0f7iVd4oDg
	 pcxymQJG6uPkTGk/0GQTNz3zzrqITArKIFJq0mgmANR4iCavqyXSCbATbhvZs1qKRr
	 OXhqZO0aEPAx9fhTZzv6LPu0gMP5OSYtMLgjQkz726yMqay+7VLIUPyGHraBIONN0B
	 YkP6F4/3jof0P6Am9/mhFSh3wN5DrCY5rLt5VV5NQZEnAuJ4mpmonD32d99qf4Y2qT
	 TAGD6g1ndWjltoksiy7UikOyfM9/o5BHpNBRHT2QleTvht+0A8m2lWIdl3Qrdp3pid
	 EgkZZCvEdaqIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF58CCD6E7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 19:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178068927371.31143.2958660470346069098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16b27db4948427cf8d04845adddd2caf887d2baa305320e61e57d64affc7998e
Date: Fri, 05 Jun 2026 19:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780689273
