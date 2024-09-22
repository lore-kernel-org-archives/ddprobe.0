Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511181EB46
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726996554; cv=none; b=W+OGMMjBftte7BDFckWdNGXMjHOxujkcqCKy/uJfR80BRpeJYIJd9IJSA4bekGLYtpoxtwFHqh1TTS9079iW06nIM5BZVccQ4flxzKt/00qTbAsv42XcTUnhLxlOF3knL41F2ZxjcKfrmhZ+GqbU/FiIm5ML68DCie8vrt6wcU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726996554; c=relaxed/simple;
	bh=oQGIHeoZd2hbBJ6llf/NWiYs2qpYCjdAka95Dgrmj8M=;
	h=To:Subject:From:Message-Id:Date; b=cc6p+eq9YIgAU7DfS8Fy/cZ65ABnwEhx5dBHzeJlUZ9g2CFY1bG0l3WxEGj3Qndt51wptIik3Q7B2FPNZ4EAeInMS0ki+HJ+UfZZP/KFQ0H0pB3lXTg9NI9qKbm/iHxAamc3D6gc4N1s/33mXSoXXEjxVqSCH1qLVwRrItH399U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmA4/Bll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmA4/Bll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1BADC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726996553;
	bh=oQGIHeoZd2hbBJ6llf/NWiYs2qpYCjdAka95Dgrmj8M=;
	h=To:Subject:From:Date:From;
	b=UmA4/BllkJlHdJhfyOyg3znGCQU0xiJhx+kjDX4UrW6bn6veW7q44daqZEs65p2vy
	 g2k+whztLj5kjiwmpZPHkwJAj1Hs8A6O+2sjN8JVq2j/YVVxTpl4ukeUG4w3o/T93j
	 Ys8YoUCB/iExFrd9yNej+JIGLlFaVHFipos3eEWrqfY5u5RS5EHuraHS3MWS8miDfC
	 aDJbcuLtK1O7MpQ7JrYzeiQMlwmLmmMch+Mpj4XBAxWP46TK6U2g5UizJaQRY5nWxB
	 tAJvOctTYA8s5NRFOJ8t83Jf1BssqGY5KrI9DHHMWasg6nyWxwZw8gBq3A2jW4YDmB
	 QQReVx9P+Eztg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB049CF9C69
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172699655366.19407.8924305914543709786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b989954c8c3c78f2f6f38afdeb6721de6acb198357d3042ea3c412fddc8a78e
Date: Sun, 22 Sep 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726996553
