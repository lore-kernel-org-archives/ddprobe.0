Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FCAB4A1D
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 00:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721089523; cv=none; b=gpLcjafDGk4tn3Gj1bK5o4zAh3unlCksxJjlJO9b5816fVDZtAYQ50LHvPlwbAzvVbOTJkszuQcRQ9ykBjedZwWRuDIhvQF0pHmzsVMJIUpfAKcaynTVn6BrP9I7Y9oRiAKFUkvj7oWczMtIhhuhUlcFWhlaE2apcuWZJwBmgq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721089523; c=relaxed/simple;
	bh=Yh55YNtktnYSFcm3f4Rb758LlXF6AgwEM4oaa6wp9xg=;
	h=To:Subject:From:Message-Id:Date; b=gr1Qk/C3duTGDx0wcKTMfbhVMKkAnO0aHpiUNcJflHjCc29cSvorQBVUPxM5LPcg3daYFK6xCjylR601F+Ktn/+JWAvtrnNTWUsNDNRd3NxgDO8WJuqC+iNcDikn2gteG0R3zEb+FjMmSSbhh22Aln0iFlxnPfd4FWhtigdFnDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFP+UEF5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFP+UEF5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E72C32782
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 00:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721089522;
	bh=Yh55YNtktnYSFcm3f4Rb758LlXF6AgwEM4oaa6wp9xg=;
	h=To:Subject:From:Date:From;
	b=VFP+UEF5ePId53r0hb9sQLoZLLeqaGv8lb7ijstd66JSQZfKWw3u3PPE6FK0uywew
	 0VAVQIlVTXBHrV924RXAs5Iwam4K49ShzKxhjOczdtZaLQNR1MRxADdNdtljNuONvj
	 G/6gE+66MMwPIExiUkZUzlN3C4sDFLXx9L3fKGBgboGUOWuz/uJ2j5PzfYEbwTiz6k
	 nmCCQvUr5dwRqFzVyA5BLvjfTVC4Fhv1zb2nhVQqXXm8Aiyg0mHDmcOipNJQ6x6Ye4
	 E6bjWwkn9+uxPECam1Z0eU7VgUIqCeFSYpUFVnOAeNB45NpaiznUr012MgsW4884g3
	 C6TYMGayibntQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C67F1C3DA59
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 00:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172108952277.7304.7817864493524131315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a501ee610d8db6200c147a064484bb6bb89c0b5e3d7351a6cc4c71a546301daa
Date: Tue, 16 Jul 2024 00:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721089522
