Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8E1A2EB854
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756981793; cv=none; b=fn6mu7SbDRFhoFwZUVBROBhyjzPycmrTeaAqyQlJjw9pbu5veV1Nx1I23u+ZJqmCLSw348nJfn96Fyp6an7xi+11xETok1RQqA2s14SwhyMLUjH4zTsdp9Bh9kkTRqk8zLc9UyTThiLbI2ntcCHUy7f//atxYy3TljeiNIdyfeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756981793; c=relaxed/simple;
	bh=vqPHucfFpY12VvwVbl4dRpR+5P180rOpaq9zact52Zk=;
	h=To:Subject:From:Message-Id:Date; b=acdP3GX2qI5aN40LdC2qxlU817tkz8afRQ5zDg8E70rJAn98tZ7iePV8ps3qm8/Gd3KZXzQhOGAh4io8lJ+Amv1D3BA+6UV9XYBErPhYjOtZEiI/+Kr01oj5zNf2n5X4mHYCTmLV/zaqErSA58P2TAeTyvMwtxJTHlnSinkIPRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0qef+Ug; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0qef+Ug"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B8EC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756981793;
	bh=vqPHucfFpY12VvwVbl4dRpR+5P180rOpaq9zact52Zk=;
	h=To:Subject:From:Date:From;
	b=V0qef+UgSr/M3S6ReWqpCOrv1u+5HUhKXvhsPgXQpIegk9UbFrIXRvnfq3AHU53jW
	 s5R526zp2jU2OCSdSCWomsZeaqES5MLFFMlNUT9nJ4Fsg7Igny/0LzaQ8tI7yeNESK
	 mayahSNAwVlHnYd75C6tO+7//L91BvHdS/yoYOzZFdCcB5gF2AWN6vgRv54WngGX8L
	 /0Jk+ng/h5nXfD+L3LwJDWxXUfuwmkrnP9lnKEmAfLOD4oBLMQ5xZgsN1glljXu46e
	 yvx0pVgXm6R6WIXE/ek+967e5eypIBXGPFd7oU+h12baljkbHkC6OtUy5sTf0FcbZ2
	 GmAE+dx2vUq/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D0ECA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175698179359.26459.7210171542678700590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4b2ec357b9dea29106023da94127142d1e1c95473049834f871433bc36e79e6
Date: Thu, 04 Sep 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756981793
