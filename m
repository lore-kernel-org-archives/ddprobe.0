Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0E8248883
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762026594; cv=none; b=rmRb8Vr7K5IgjTPQR0qmRWUQmDpkSvMGeRIHjjYyV1Af9MDcz/GDqlZUprL9ugkVZaLM5UaGiplAzQv6t9LRyW9KNg5Wb/KUX0vmi1JWor1VOd+Q+suJkrIC/hFrRfs/bYe9scXstexaD3SPhlJpP1wSFF9mSnPr36fkp1aaLSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762026594; c=relaxed/simple;
	bh=85l/wxDIjlB5LYtwHZknt1FosfApECm84lMmQRoUml4=;
	h=To:Subject:From:Message-Id:Date; b=aZ+UTAyYlni1JFx20qhBnQVTV8+A8IlLJxPXfn2BVafi5IYLRkY/QPzoT27ijsuEkoFScDI62fAlulyBdiOCKYF30j28Y5EF4doX8bYhvhVBrgVJPD86pAk8HbfOcq2rvpLXaxMDk/CfKjP+HB3T5y2yJKr5gAtdsglpJqV8wtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tO8wRhbQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tO8wRhbQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89A0C4CEFB
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762026593;
	bh=85l/wxDIjlB5LYtwHZknt1FosfApECm84lMmQRoUml4=;
	h=To:Subject:From:Date:From;
	b=tO8wRhbQx/O1OwDr8axemAnogoKOPuQpNNXaqzJuJ3mHXUZED3Vo8tButWiaI9u52
	 UYa0pnnen+P0lG6kY2n1SqXutWYdqdU2G3SK4AVm1fR0oppiGrYN5xg08uhMXpbddK
	 E6QXJ6QuJN6Ai+xe47mBtmCQwKP2sGa5oIXifwEKWiwD3q1TewFZvVqJEiHPkddv2q
	 e7Dq6RRwpoSCO/oxoSvjioEbLaykmsB2s5BQFJMi4ng8PkAn+cVER8STIlQqGu8ajl
	 9B3Im3b188lJwEc8BXU/3kqkVSsAOT+Va5bl3of+OQ/rNWnO6pzJ1HcKZW7crMEazI
	 UlKHiiF8ZZ0IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F85CCFA02
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176202659358.32159.7339371853560768437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93669da32ef5ac25347425ef28feabf99a99651031f56cf663ada7415a461ca5
Date: Sat, 01 Nov 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762026593
