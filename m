Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BC5276046
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762485594; cv=none; b=f/lFOw4Bx+JACtolLfuEqiPxP3uaB7dUw4iYySGGqwMmOINKKR3hqUgiBieUr3SFOd+IdGxvccMrBAWFWNrq8ePyMBgYuLs7MQHe6MpeGDzUXoicV5X/+tv9GjDxK8KsCoPV9hHY/8vePsjIqpYdHtwMpoKc86HkoexZU25qefU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762485594; c=relaxed/simple;
	bh=ppW5zJxeBNBmV3y2oqioJCW4D6Ugm8AFIE+ZbVoplT0=;
	h=To:Subject:From:Message-Id:Date; b=rNMFWvG+SuaYiNlrhqetM4ZRbpHFv1r7xNX9gk26Tr/VdbKMUYL31QCRDDUbQUv3f/D14AcxTaWG8aqcWaMeY5ozmktjqUqzZZkGSMuUIDmrDKg7lbC0TyD9EO1jHi/nO2S+gFET4ET+Vhic6Xh+131WAT9sC6koVWmQM14xGiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tD72bc/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tD72bc/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DDAC16AAE
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762485593;
	bh=ppW5zJxeBNBmV3y2oqioJCW4D6Ugm8AFIE+ZbVoplT0=;
	h=To:Subject:From:Date:From;
	b=tD72bc/8vCIrqbURk8ipZqN70PCWaG94md3thf9OnYqJ9UVTe4OPzs6lyVhDSCcY5
	 iNCMS68N/9dWZZ1mqIDV35VZ8fffkciJIFNMXe70HYqoR8v0jfcUtUo5B+1AjpQpa/
	 nJGzxKOKl/RqUSl1xKV79ByJ6cqNuOM1C9XEfvBvvxTfetnILGrD0juHTGqjLumuNF
	 wFmIukGXO0DqVljxloTmcG1Sn68yQwfXfsw42qwrvZwyM8gje+OJulX7936Y0AbfYZ
	 auTvMKAfqDt8C6Qfb64Q4sTgLQ9e9yKZbD4DWm7c2zMqN3EtenKDpyZoVTt+LiWRk/
	 0Twgkae7yp2HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BDACCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176248559361.16125.8691855398584623407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da44b0c31729282d51599fcc5fa273fd5f871def448ad7992a3a194e37aefff9
Date: Fri, 07 Nov 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762485593
