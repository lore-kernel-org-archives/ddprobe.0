Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A8D2566D3
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765934634; cv=none; b=o+YZR49mmpihP/9n8Nsv287j1Ty5gupeVKnx112YnfLMwjmrm398WG8QXxySMmBhFXYQETFvz54pjYiMhxy2SKZBNCjWh/xdXYr8KkCyQ2pCpVlBAsGWgcBfQngehWDZs3G9F4cP6Ys/w6HWzufEkI3girnfzRS5OWZBQTs13Us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765934634; c=relaxed/simple;
	bh=T4ZB8BHqYPdhV4n1iLcs6pAQ3McE2depVXd1efxqm8U=;
	h=To:Subject:From:Message-Id:Date; b=nMWYZKOLKGp0l1Xtxbt/PEL5OijJwcaifqEb8t1pxGyPa2+NiI1hyYijmoID/UYoicZhpse05DeTV1c8W4e74SJ3PqiWztLdDHEZl5YdBLq+ys1OMzG6vgjaIfvLBikQpobQimFgibPx75zU02EWZcioZuO29vw23qj2URYlLVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDMNBdpI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDMNBdpI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FFFC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765934633;
	bh=T4ZB8BHqYPdhV4n1iLcs6pAQ3McE2depVXd1efxqm8U=;
	h=To:Subject:From:Date:From;
	b=fDMNBdpI4C4MtD5noSYg7V1lT2MejtbFOd/tWYs9aFCi4sNlWeuEMC/+EYl19ooTq
	 CA3YV8uxIy/1GvaggsmVT81DOfQ2bnZwuB32+0M9SJxo0oWqqTcdQqWicP2yHSpcxX
	 nskYCVxbl0da3S89n3lIBxKsQEZGEbqstwRHtQ0xmA9s108V1nX9/qOrYSDdDVgw89
	 q5fRVwUR4IVRVCZuHve1FmpO0GA+gc87ombZgaJCUni8TFtqFisgifMXEkO5BcpcTB
	 To2hnO5D+XwwXSQgqUq7DnQVZqD38xRD+JlLeicNba7U4LHNh5hLHc1XIFGl9u+PRX
	 yUfSvDXq0en1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910B8D609D5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176593463358.5230.3156370826299284159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d80bc82f2f7bd67f74d67866357e689348abf6088a2415e9f3c989f3a05e2ad
Date: Wed, 17 Dec 2025 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765934633
