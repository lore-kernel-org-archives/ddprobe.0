Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538975BACF
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 19:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720726043; cv=none; b=pM6RdJFYgrfF4ua2WtilUlw5jxLE95upQIj4VWez5b1eA+G3q8vTojtX9Bb1XttmebmcDB9z574rsWJGxxGr36NHgqiVcYXJgrb2DqbNsHDwAbvlL3UQCvhQzM9gLRYUwmdLOWf58cHN3vt+j1pYIfj/lPEH3fMvqfv6NZwNWJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720726043; c=relaxed/simple;
	bh=14ptlhYwok/tK61uUjbgylOtZ0TSeYpS3J3DVgFIqQI=;
	h=To:Subject:From:Message-Id:Date; b=fSOBe+Uv698IBb2sYNI13K8tDXnnSQJ8qtx+L8REPn8tEAXgagVpQnkpWKTPeqkhBNNZLT0JhYRKNFNzZXnUhpIc0A9SybUXYDVu8UqY4GT/xEB7TI5Eev9dG8gVh09BTNlMywt0agIFkIA4vUPk4tuMxlT5+m3fH0ggHW8omRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSlRGuy8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSlRGuy8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FEEC116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 19:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720726042;
	bh=14ptlhYwok/tK61uUjbgylOtZ0TSeYpS3J3DVgFIqQI=;
	h=To:Subject:From:Date:From;
	b=SSlRGuy8lRxGi8uzBusFTOZ2fwXdibMW8joftwLk+8q+ap9A5kesfUpTZpXuYWITu
	 lipMFHQXI0YsCynSBcsuq8STYrSBoqdEXnEzmU8mdTHpFFY7mWmLDtSgYSefv1Ktr5
	 VUQq67Vv9rCW5yC041dYt4AzQKL2EInjoUlA8/amdlsNv+hOZ49QDGZ4CloGdTX30n
	 Y/kMb7uOj5ngFll/72cbws04dFNKd8l3qP3C8kxOTiOzp0gAIqVI59G6OBxhRh50M4
	 iuvmADEEMq3NEce1nyZdJzTf1hogFNQAfhjKIFiM12QjJ4C52646lflfGVIMlQXuUH
	 odGaUNmZ/dtpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD946C3DA4B
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 19:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172072604276.1765.9869830929511025401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a3167c14bad507c6d613f6304368257a7876ad76ffb2844f546fedd42b05a6a
Date: Thu, 11 Jul 2024 19:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720726042
