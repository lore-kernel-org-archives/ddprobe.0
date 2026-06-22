Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61060393DF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 08:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782118594; cv=none; b=EfxC4o8AvASjB7vLjZxyYdksK8anTQ+hp+OuX/WYLhEtQK0FHCz7wSzjdizOwnEsFr7di4R1iipV2d88aAx1A/aqAMSYxGLTX88yh/TZMzvxquJwm0qaVOadniGQ8G3juvHpNrSo418GvTuY52Sr+Rlm/QagYmKs7cVOOI2wIdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782118594; c=relaxed/simple;
	bh=fYy6dTjQHpdJYsTttMJhVY7tUt/9DuH9yqJ4ixavKnI=;
	h=To:Subject:From:Message-Id:Date; b=DxnP5v6M4VkO3DV1IPaLIi8I+IHLGjQLCS1mT0sudSut3GlhtGb7OWedGqWPEFs3byR5u2kh4mNwzjd6e/fPBtKbR0jV1v8A3njy0Yf1XDfKqAlXJcFXx/f69an9SyL6UY5qq0zJrQEmRjZccQMM1YQWo3tJwyWiIA85pVo8Rxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cztxc5u3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cztxc5u3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A62C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 08:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782118593;
	bh=fYy6dTjQHpdJYsTttMJhVY7tUt/9DuH9yqJ4ixavKnI=;
	h=To:Subject:From:Date:From;
	b=cztxc5u3Pq8KXaEk4wgPK0L07Ham4djxSGNxoze/8L736LDwh/VVKEwriUUSOEI8G
	 2NChauL/QCe00ntavRcP+FAjFv71AV9YMWhOt9GcU0cfhKExzodP3+KuOE4s5sd4IQ
	 79G8plE7/XtQLvjzDCcdlOjNvAsig8qRgkSCw2YSGcrHi7EBf7jZwYXTDR8n+dDQ4L
	 wOtLzN62cozSbmyOrN/zw2a9vMPDu8vXCUVPxUn612L5ryij5cwcS+8aHhw/VRcKv+
	 bKZ0GfR48QJeEjveEwLi9Z0wMxHlzIFMc0N3Kl6R4P94TowdNcgsrqVJUIo6Arv248
	 iD1+CMJp6n3zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF569CDB46B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 08:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178211859371.5325.4300744743714981172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3a69db6710150283966cc876f373ae0a7b7c70972c8bc842b3a79d3952e2c11
Date: Mon, 22 Jun 2026 08:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782118593
