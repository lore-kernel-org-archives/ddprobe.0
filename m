Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382271849
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726445754; cv=none; b=eqeZDCScMdoEKRiSgpm1M99+C83T2RnSMxj5OzS4X2lMlS6HriEsS7oGYfT5V2heQM4FiauCu+f/u3OGi4M6V8rWmBoPNtTOsXZvKeftxUMuoGkt/8gSzPQxE4ywaDYRjuRwNNwVGkV3OZ2SgN0acXFduG2hpFDsXJP3kMitbqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726445754; c=relaxed/simple;
	bh=Uz+e9PUbBuF+zbRKnrCgS+AyvfEZbm9DcIXdNPx4L6o=;
	h=To:Subject:From:Message-Id:Date; b=blWmcqzhumRJ9Kqv2ZdAyHZvQiZgNUqWUxFhUr1EV6+VrD+mQVMtuWcEA3rbWeQ5jgu3V8HsxcCVDDMKG7Lhn1x0ZQvRz6c8JJZU/UNNPeS/ZiHgLVhCEdQlv1oDiYWTmqCYUkmBgLHQnRqnJaAiWZrE9RQiYZVSncnoHnPedRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=caGJQMJF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="caGJQMJF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0265C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726445753;
	bh=Uz+e9PUbBuF+zbRKnrCgS+AyvfEZbm9DcIXdNPx4L6o=;
	h=To:Subject:From:Date:From;
	b=caGJQMJFoEiH325aEDuwxSXfkM0taGxyrR4Q6usqqDYvjcRZ/UMvnxVK3rrK9rpck
	 o4QZ0agARTqriIOtzCHOHSVZIAPgzVZvzJoUb2tpuiioRZbDn11S23FQKuF6yYdZe6
	 av7YaCZPmFViITkh+ykPV/litlAfYIw/aaQsh/v+fXlLDuVjdDBMbdoEnJy0wgRL0L
	 vLYJiTBVVlF8XE2wPVoOBu6GNmdQsZUp7kRomDp/O2aHIspxJ/1Gl4iU6xDd23IS8a
	 7TX/bYB3D6Bgrf1n+6V8lCLA7Wi1muRqC65PCBQ//g6lMq6tSQCUJDAPFiZ4Mlkk71
	 lxNFmkThB/aLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2CFC3ABB7
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172644575359.8753.9211528960268077984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0136888f22e6e74172f9d71fda3f2ee0f13db894bc4915d434183efd7820bc12
Date: Mon, 16 Sep 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726445753
