Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286B117D7
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749881394; cv=none; b=DdQxIE+PSZmfMtrUv1cQhXoEcFRoxHafRGgcaJp4GQvxruMLMCvxDgRcY8DGn0QtiqmxC4O3cpqGwETQFjilmZce6+13gAGHzvj3dqORQ2SNQk8LhXuIf6OpmO8MRF7D/A3WYSqnp775Fr9M0/r66m3X1n9Nw6q31dQY2B3on/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749881394; c=relaxed/simple;
	bh=qFBCjYWxJNz0z0qPxxqN5kh86wy3U8aY7snvkhqrmVc=;
	h=To:Subject:From:Message-Id:Date; b=UIPiJ5YKIlezD/rPsmQ/F8xoXi6fvczPlJc3Mhe9KgMjwur64HC21/qsSMfB4rf30gsTlfoA7kwBlqwB8WitwPdYQVD5KFVFADEXFk+byN60g3eAK4f4sNAMybmL/Ork2FZjcjH2cIJUNW/6bqUVKal0suBugbZQ3XfOCpvEZ+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mfmp2t8f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mfmp2t8f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64B4C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749881393;
	bh=qFBCjYWxJNz0z0qPxxqN5kh86wy3U8aY7snvkhqrmVc=;
	h=To:Subject:From:Date:From;
	b=mfmp2t8fYgL+MZZwAGjAGHz12eaVewOSddST29IMrg0jsvX7AKdQ9jIGcwBV/mtYL
	 yGwi4Khmtk/XOJFEqbKR9LHIwdCI1CdwF9uk4VvuYeZWFhrclDC62DuBUSeT3ivPX5
	 kpmBhNm43NX5qNDc54KU06pSxSrifP6YAC8674/vhQ3tJKVUbv1tWumlyOrTyKn0CS
	 JQq8AuJhWR5eAMKqtXihlujk0seC5WZcbeqOcrOo7wqLz9TJyshSemWOHHr28EMrbi
	 c1YtKj6d80lLRRy0mqz843AMeEplFGS2qqAEIxMzXv0K9Kt2J7lpL7C3YqimXKoAU/
	 nm8SNiuTylosQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94023C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174988139357.717.13059976825414048156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cd91f293de6aec219c3f860ba688464ab3ce9fdc12b11b4c6d27bc29899544f
Date: Sat, 14 Jun 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749881393
