Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1DEB15B1
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707613697; cv=none; b=T0BgCEH4mrlWprNO3dZunwU1P2lWbWzt7EhRxXuxjSi0vdf8/FAf6X0bYguj6TCTUMCQEdUWVVjSB9hoVY+jAvHhaJPzKzL8DNSmxPUjrk8AFa41hU18rCwEKwHimk5iEQvVVorM5popGkPF6Yd1+DNm6F6CKcpQ3yrPEoApNIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707613697; c=relaxed/simple;
	bh=gideixBwRlMEi2mELiw9peOiPi0wUtEjC7giy7jE6Io=;
	h=To:Subject:From:Message-Id:Date; b=CjFu3Ezscd1Wsf0LH4Jx3nUBvxYXnFFmS0U+W2qEPpNUWycFXEpfE3uxQBsxBURCA6JspyiosKEt3X5K84GpFhvAfmEnjmFKBc8rvhsn0H/LL6XtDf/rFXfH980DfRimvp6eFBE1p6uVGssAs0tUTM2kSEsTsIjQ3jFmacgMcnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfI1IS+3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfI1IS+3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BC47C433F1
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707613696;
	bh=gideixBwRlMEi2mELiw9peOiPi0wUtEjC7giy7jE6Io=;
	h=To:Subject:From:Date:From;
	b=QfI1IS+3TrLg3NtBlJLBkJ1afmacrlDB8EKqggYyQM0AF0oTMkPOuPgnKlpBjH4yx
	 XiDEF4L/hSTzkF3v8CJJbxxSnswvsMLi97sbR7BrjYob9dx0/TpbjSKLoYmnnhBuRM
	 Ty6WhwO5As056AlaFcE+QtsTTJoKJjwtcNhnRgP95gIDsyZ5UVG/fO9WCA87o/c6Jl
	 93+UJNd+G7BR5fxS0Bs+2+6BLT9zuMqBfU/2rVKCPeL3yyHVcJey3aumOc3asbs581
	 7YShORK1FyLzjBUvKC4dT0GlgTzLEi8yczKJPthfx+8uBN+CbxL5ohwduBPq6S5txE
	 JZnTl/209L+8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60D4BC48260
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170761369636.22558.8032640369581328480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75f9813439fdcb9285096776d433fddddb2929dfd93f2e5685a01b629f598707
Date: Sun, 11 Feb 2024 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707613696
