Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2D13B1BD
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771068894; cv=none; b=rNE3Za2DoZACOQ/q1E5qyOk1TQ6rNgR6hbjVP3ROynD7UYoxGI7vypBCJnnF5oKzQ4s1X5gK6FJLdCh0fdz0sv6E6nCADC3Lt2dyiB7qCzS3w4Gow+4/n2pzUE97vWn1qVnK2Mvu7Fe0Q5GgwOX/DktLOCLlFd84kPTE1FqjtRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771068894; c=relaxed/simple;
	bh=iW89q6Clsaq8hsXkCg2avNX1BFTZpOyO/KBdvFkP6zw=;
	h=To:Subject:From:Message-Id:Date; b=ttB6fjor9U4TsJHUn/jjEzJ+azLT4l5oKQGDjASV4bHpjmfwN3U6tW5isaTJ6tFYQ0l2wKEYDBNk7gxPXsv1AXeT9AAQwQhh+PbnxfYCA8uxdRLwwa75XHltXtSli8F6YCsK8FrfZhYYCKhxCwUg4CLD5LuM/ZEU4iNGEvUKgeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WY9Cm0eS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WY9Cm0eS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C080FC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771068893;
	bh=iW89q6Clsaq8hsXkCg2avNX1BFTZpOyO/KBdvFkP6zw=;
	h=To:Subject:From:Date:From;
	b=WY9Cm0eS7BCCY2CXsm0PpM5mCauAOAgmS1oijtXwcLFr+KEgxk+hlo/N2yyRGmju0
	 siMnrI4AjqTBZTDursreW2dbuf60NOUVxQWMkQyqVa+bjlOiZSSLHNT68nxoPlxkJk
	 9xrpzLGlql98y6DtZSSfGcPTI5YICmFABA5w2y/MntbBzMqzDLtaMULciX5qfFi557
	 AFtqWo9vQqz84uRQ0QWA/Lj1+3/OtjBfb98puEFFt7OhkWBC7gW+Am614+qCqvntIy
	 wpf0FqYKyYXVK03Xi+D0RhOptfr7CtX7QbUcBWU0vVUAbRj5/vZ5XD1GlAVW4jRYIP
	 1Ca6+uUPao86Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1B9EF48C4
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177106889366.12699.6640844923886534228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f580260240af8f887c5a6580b3d1ba5656c878586e78efde4f66dad12a5c2395
Date: Sat, 14 Feb 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771068893
