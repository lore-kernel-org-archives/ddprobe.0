Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FAF117E8F0
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 02:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716950663; cv=none; b=JL0WqTgOgMyzB6bBgdbJqSznsGWZYUArCNECK85M2grkZMa2WjhZSn8GnDaA+ow809yTI2AydG6kmG0U1SmH5u9yaILVp6koouwMCKPZJxpXCw1sIgeQupcwSbQiI2hxx5sRTiVs15CtF6jEHsB9fKGlJ0SGBJN6RT4skljnhJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716950663; c=relaxed/simple;
	bh=dJ6nQ7rcq0GYhBwJC/FpUp4s5oLMhYt85iSCvmklZeI=;
	h=To:Subject:From:Message-Id:Date; b=F7dktgHrYfVj4/XTVl6MIkeFVbk3+DKQ1qSVdKXRhXmNidRG/75nlUqM2Cd7MYrJ2+R4E5L734oJTbKCido/YarZOFOPTgysln0YOZGCxi1DU++ictcYNJbQpevNXjeAzCWmw2ptqZGzfur6Tz/YWp5wyaHFuxMvl8h7TGQNlzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCWJlAw2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCWJlAw2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8FDC3277B
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 02:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716950662;
	bh=dJ6nQ7rcq0GYhBwJC/FpUp4s5oLMhYt85iSCvmklZeI=;
	h=To:Subject:From:Date:From;
	b=fCWJlAw2WXWhmXR/GJCZGWIVRdo1eGh78R1gPwpv949xzjUtdSiYcBqMQ9hxQzlwI
	 urefnxad6F5H1A7pK+4iET7YGznz1zJvx+fXl0slUE0DPFWJeu6Ie67d0Z9w4ljjLb
	 eFJYqlam1zkTdBAYcXBMsnpnUPaegzu7VivvkU0b1iWYf5KnpxYdfF5SJ2g2DACjQa
	 NT6JW+mEYdyAd/SxQrWBjBP37T0efj/+rgkwZnOWS63j7mDLlLXB1JVC7FTeVJqDvb
	 8kzXcIYH81uPVJZ+6QeP7LWxYbv88XM2ju+Gr71UqAnPV1zQHb0LdcZZ6h0wvzKvud
	 RNt99LH00zpRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBC91C25B78
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 02:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171695066276.26481.1191236032631837390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2afad3d959a0a7beafc1224ff4337504c37f0779fbf46514bb4d82ebd7c0004e
Date: Wed, 29 May 2024 02:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716950662
