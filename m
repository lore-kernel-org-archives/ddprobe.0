Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72EA314A8B
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 15:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718553503; cv=none; b=odN3/wJhrV87iM1faM4BTYkTtTKsTgXzTc72OSGVnKLD6/bilW2SSUdG/vouy/IyuUnSs21ekVbXwHivPwy/CVu7pwA6oFZRmFiOmr9vgxhCSt2B6KUqYwzQDEGgXi0PIwRtGQ/VyL37jF151HgRROig6Q/goQ7y3XE0pdiBnW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718553503; c=relaxed/simple;
	bh=ouoauAi0ZKqJUyA3wFwsOQhgHBIuENBsRu+zNDa1wf8=;
	h=To:Subject:From:Message-Id:Date; b=VJJZXhANgN6UprkMhdmYDh6OGB+v0QtKZou7vYwIlL6kr9nGjIPdcxmf0Z6UnhU4lmvPF6EkaaZ+5WqvrvADPBX1e1L1MPrRCSCDG6bOSZpaSGFBERK9NSkgyUTUPHEEkETTzvoCvpjlmqST6rBkk+NTSX6mGvhwzlIS4DX8c1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ls/aPPng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ls/aPPng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E16B6C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 15:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718553502;
	bh=ouoauAi0ZKqJUyA3wFwsOQhgHBIuENBsRu+zNDa1wf8=;
	h=To:Subject:From:Date:From;
	b=Ls/aPPng7X9vAJAi5OuYMMvlM1UIO7cXLS3poURgeM15Ums5XCZ6Jh8nAa+i2wssR
	 411XT/DGcOIPUikb66eG5OdnXqL592nbhdNn3XDUf/3ZPSv4AtRELXh3NUFcRMoeZ/
	 cW6JYPwFnLQI3l8Mwu/hPeX7Ul4AuRPCEYXgJ8Fr84AskKGfQ6+MUoGdbwxEigfPiw
	 6YtW6SpXKjVWSl0P8CCBx0XN51G236FzIok5A07u3dyYaJxObpJocgd2DzjsP1qi78
	 zWsYCBVQ+kHPJ4H4s7tyUHgIFA1sEpgPpYB6WelzJH0+WYuDy1+Z9A7CXjmybowFoz
	 5QgMMsmwEEZtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9114C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 15:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171855350280.22927.7494453618609180457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4c70a06ac5353a0913687add77c887bbdbe96eba546853531e24ec4bd72ea2b
Date: Sun, 16 Jun 2024 15:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718553502
