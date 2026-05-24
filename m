Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430482F9D98
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 08:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779611554; cv=none; b=qB6jUlEP780rRkPINmfm+yUf+08ObyODGSWZau/i6xKr8snTbbJheRCFFFevFDcZze0lpV/kqxCCt3xS3M1uu6BG9ySU4Id6CTqGdgReHeFpPyrEBsg+OK2W2S7wJJe0rZAi2Yy5IiGBlUCYbM4UbQLzusOw57LVrD015ImqpGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779611554; c=relaxed/simple;
	bh=pTG6Qcc/mHTkPtk+WQwEGGmMtmr/lOr8C8UpVPxIKiI=;
	h=To:Subject:From:Message-Id:Date; b=SUmQXIW7sHJGkgXyqhZY4Dhtq6+X6ydbelAS1T1eGrdRl/tA59zjxHNWjfUOFJR897rEeBk7DiBsNG/T7NttD9khn5B9Llg43vQAbbKg1/EkW1/ME/jPl+eB7G8MzQ0D2FudCwOc8/q7+cgyh38XAd1u0iNHw0cD9Ax3zlAGqDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TApPi2Ef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TApPi2Ef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E7AC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 08:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779611553;
	bh=pTG6Qcc/mHTkPtk+WQwEGGmMtmr/lOr8C8UpVPxIKiI=;
	h=To:Subject:From:Date:From;
	b=TApPi2EfZwXCoTz/h/w9YnbWZnkP+fVKCv8kC5PBkAWrVVyR2pILaGd40Eax7Ul0t
	 lSYAkCGpfj7ydtMMYUL1yKAF0XYulxHmziu8miQC7IdoQIgFqAdpNwleNuUlV2D+VW
	 g2OUDB55bADFBkp5FcnpNkjqeWI6YD+n3sG8YXC4u0wSAowxyoluhzMmqcPCBCM8er
	 OFmiSBuL8Zzi/jA3ZzdeYdCOi/0kkr1Ga8oNGcvaPgvz1RUS1TmUggmfoVbExntFjI
	 +ityDuWsyy4tu4bdYimQHxU6PO3eiB7MguAYOan9hh+Gg0+miVeNjTmQgRUorcLSAw
	 azCDOS/Izq0nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA78ECD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 08:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177961155367.9550.1296089568641700996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18bb081764cbec58051b587f5c514d0c21c1d17c71cb40c057e5119c87d6cd6b
Date: Sun, 24 May 2026 08:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779611553
