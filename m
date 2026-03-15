Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 061D934DB6D
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773590694; cv=none; b=H329EBNU9NA8888ED0wJdC1PLHYkpKO5+ckfePle+YX296Sc/MsOM8mFwKBq0BgZF8BAx1zGtpqhz/iaiATso4sda0NTsSYR4eI6NxSl+x6cpkEMCWuuRSkDMjhkrwaN+GAIzfjJrC7pREI5ZIWLHQvzaowpyxYNHX8yT4Ldiu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773590694; c=relaxed/simple;
	bh=8bvWEx/Mezeu8ex0rRoJfO2uClANlPDH7xyjSLmSTQc=;
	h=To:Subject:From:Message-Id:Date; b=sfyC71DoigLSq2vjsSfQtQlyuvD2Plz9UVfnQEm6VvTSg3CxtrxkWrihb5MQzAEZNJUR0BC+uEK0jWq+bmvQoO5bBRk2suCLGMKVS6wPBJ6oHOFM3xeIwd7c1anwBvUqegqmweubFdVUxQEOYXbHqmcp0ki+XQ+5hD7QXZ296EY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EIfIGPxu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EIfIGPxu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F15C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773590693;
	bh=8bvWEx/Mezeu8ex0rRoJfO2uClANlPDH7xyjSLmSTQc=;
	h=To:Subject:From:Date:From;
	b=EIfIGPxu9kDpu4ZwxuJAV97Mu0GdXYT6mrP8lidRC3SlfiZ/AVs4/sPA7S1rDWEqy
	 Pilz7nGCUQ3EdM0Z/LEeX93/1QLMkW0QMer9imxwvsgy7Ki+YiCYhQ9FhmTw96o1+L
	 OzhIOSKY70PKwRhkUNKBCRk991jdz+Dw3D+5SluY8i6s3wpeGgBf37hPhGdEIWbglh
	 UJftUf9AAN4+8f+O7s1Yd96wOYYsEElGLOn2d3W+qk/fhdsglED1E1/2My76HX4RN/
	 KcWo3LYG9lptODSZB9WVOSBpAHcwJu5W+3SLMjD5rcu3Yphg/9FjipziUPlUNYgRKy
	 SOn1V9tF+3VVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A26F3026D
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177359069357.29995.11695239121890362700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b82791b6bf4d11125a0b16d006f80e98bca87f8b7ce1e44f923dcd5dc97f5013
Date: Sun, 15 Mar 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773590693
