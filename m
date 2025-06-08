Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C7220A5F3
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749427194; cv=none; b=ogHYjsIJHIgj6eTAqJ/CEnDDlgkSUMKw8rLlXYcwRXNG9VFd1X+IzgSBqPHfFcI/nT0kSsnFRjtXZhlXUaSkYVrI+nd5GB7cLotqfCVQmKN5WxqGvfBv3bg7Nz0ekN5dPSmDccwqh2psyg04DI5svxHfBnqUi/JOoxpoNhuodMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749427194; c=relaxed/simple;
	bh=Kh+kwdrVIJyR6eCDDQqTB6vVF+aQfq6Maz9fh1uKkdA=;
	h=To:Subject:From:Message-Id:Date; b=FksB9ejvT1WmTS/fzOnIaQ6x/usTK1oLCd3mWyyGhA36x08y1ErcfXTXn4U6avXnZbqIrjhtxbEn2t4DjzeO+r31+GwZR3LSx6FYvx1J4TFJlaDqNcw5dHrQdIhVCMJZRVOI2on/770COoDqHfL6E/r15vdBDewjE75YlM0jScI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=teBgsiTz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="teBgsiTz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6177C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749427193;
	bh=Kh+kwdrVIJyR6eCDDQqTB6vVF+aQfq6Maz9fh1uKkdA=;
	h=To:Subject:From:Date:From;
	b=teBgsiTzPADUhJxFC7NqpbyKPbizxyrsKpg1osrs3blXJ+LIf8d7vDecI2nc79SdU
	 +9uEsNVx16k3Bbxo4RM8zN0p9227ZKg/tjI4PQOO4xxvqV65ivemp/7OBVGLhTw+Fi
	 lGlLAwU/1YOToPm0EP7rocJ5M0rdmrnYc53cBp0u5MSMoDBYr5EtLE7tXM0J0L1H46
	 nzTOMFAAsCUm0kTKbmfculE6ORXLUsPvs0G+f7Z5o4JAiwhxVHqo4YnGOXYppG/mWi
	 cbjiwfxi2N+C9QKfbPelnucgb63scz1kGk3ViAs7G8rIiGVs6tAhwwz6OoMfkI8yZg
	 A7jAk0vALrWqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9364AC5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174942719357.32332.10262607453363988138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7270f00216709930f4d1825be68a4d778bb9f48d9d11c2d01afc21895c18e2aa
Date: Sun, 08 Jun 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749427193
