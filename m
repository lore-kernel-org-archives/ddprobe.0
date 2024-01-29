Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D00DF9C3
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706496497; cv=none; b=kfLYIc9P1UVBb1IBN+K2GbD9z0UakN1uzV6nrks4ljelW07Orm747DrjH/yokKD1o7fyV8zshoVsdX5hSqr7uV4ZNPo1KHO0jmd21j3/DdYTWkIbgE+HV8VvjOVTUR27ZHV7Xm6b482tSnknKzb/xM8X0ZAwxDvmoPP2Vzz8N7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706496497; c=relaxed/simple;
	bh=L34bDHhCRavvPLjwEPNZxOJ+6fN6VLvlYHunOVtkxZY=;
	h=To:Subject:From:Message-Id:Date; b=i1oxQNszFKCeRfq/Jkkd7nTTM5atRlitvvQaM96yU//L7VBoHIMLHt71bWHS4a9oR+LOIdqVVB63m+CrllA9fhYHpgD8bU7kkvwlkNRvTaC50iGiCETgm5pV8kV2zK6uLkhhsZY7TDMdMiBcdgMn7fHwBMMfCKNuwHYgWmCOGc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMCdYYR1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMCdYYR1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B717C433C7
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706496496;
	bh=L34bDHhCRavvPLjwEPNZxOJ+6fN6VLvlYHunOVtkxZY=;
	h=To:Subject:From:Date:From;
	b=cMCdYYR1J3FyFeARrWMc0BvN7Yf3n1qRbtlPPZ2zqcw57NwMVPg8sauBLnwfMbgme
	 fbY0iS7on8AHcvz3ep3avUfNiZF2J3xSPSmCMaAKSl5rewCEcFeQzbHMp22cD+HS+o
	 yZxMTD8tq8VoxEduU6xM6lLkiBCXXsEEaFvSrZue6cvIbJfa1YNWqcJx55/siDiwRs
	 scH3JoS60vdDM1xPuKRj2Obh67ola4xqQTbMQk3Ub1D6ipaDqCUQxxC2u1HlolBGpD
	 s/tSpb7jdQMMmBBid5wxOjAl5DYAcwcYxSqY0COtib45gpu8C27B+wAX1JQeXFRIqR
	 lH9NchljMZ1yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E6FFC47DDF
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170649649637.16192.10658186393496822111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a5ffc9331e89ba284888752b36f0bdf2cc79c4c9b05ea6b82b58b75f1f523be
Date: Mon, 29 Jan 2024 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706496496
