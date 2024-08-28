Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3644919DF40
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724874354; cv=none; b=CIe68B69a7jOiBNXUlj+HkcK0wKdoYmi2av87BBow0gOSjzoFOXdxOX6G3ZeaS7gQBOXSQM0ZjCiNbat4nMK0EU97hRt1ln3Aqeloe1nksqgrVPp/lPEqbmSFc4EYwZJ8dQF3KMHSNNzx5eahtFVDvfvOVbbFsQl50Ne5rN3vFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724874354; c=relaxed/simple;
	bh=fUB+U1PwIwUNQUX5VVFx80vCpciOk51JCakFBSFYnuk=;
	h=To:Subject:From:Message-Id:Date; b=JUkmWPIdHABbeQQQbHKJYksp8nXBcUgGsmqkmLT673bNlEUnhbEMuVcEA1icUoh7Ly8cYfoXdNxe206cdNUYXkAvTvyWlkZ6zCntFWjWZM8WtwIi/cS33bnPvEmUZhjV+U170A0tC2mZkVWLocKrYv2WRmREDh3/ScJ9DhUP1xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXvTZfd+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXvTZfd+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5CAC4CEC1
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724874353;
	bh=fUB+U1PwIwUNQUX5VVFx80vCpciOk51JCakFBSFYnuk=;
	h=To:Subject:From:Date:From;
	b=SXvTZfd+ZROxXM0vvN6CxOFeNgAmQEEzjGzKsBqxbL8x7Giu2MoR/v1ZYkGW6jaT1
	 v1mugoie2DLxRMN7rgl61EicFUPFQJMTwgSlxIUNxCHX5VVE+3cfgP8iuSNoOnQrWg
	 JskWoLwFaQIxFi1lSpyFCITfQB2Fr8ERwkZhEFXWvMwI+w3MfEa+OTDv7lmS20bpD9
	 VpNO0ixTBLqAKOhB8LTQWSYaHvsmPocN8Nn2w0Qcim/o7dyWsstJjfNnY+GH7HJbSt
	 T58DttXP2wd4JWlBMIHBeUGsqwhvfoqZZ1ESkmoNHD4bf7pEguKdI8IKDMr2wS0pF9
	 7y+RuCP7CB/pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98493C636EE
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172487435361.7121.7576683855289725215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab7df64df62437b079b8836f014d80257751361b49a6a08057f105c9765700fb
Date: Wed, 28 Aug 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724874353
