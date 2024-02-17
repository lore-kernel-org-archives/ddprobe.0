Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3DA8101C4
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 07:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708153697; cv=none; b=nlySxyhzXQ0flA/DncseFG5jCpR/AQahUWqnGuPkJvLPI0fPz+azz1XVKnxeh7cUgh157+JY6eC7u3XVqSS2RkYglog1YqeZDZh6ks4x7IN1YwCuTt7oxPbXK6Fw5r95cDcSQv/hNh87BJm5JdPSevvawRAiAltl6740B6YvVBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708153697; c=relaxed/simple;
	bh=UmRCPHzCitzHAljJH+yMtLyY3as6EQ/qwMfH7wuO+jk=;
	h=To:Subject:From:Message-Id:Date; b=n2QhXIxBQoJlEEw/epBwzYDAuBzUv7aWq5MAvjEaiVcPTlfNTci352z8Rp3vW3YNPL+UxiL0ytx0NC44G/npznk7901IQ4hPO92usSIfdepKvXkb5xIxABUOMt0V314abpD/MaCEcU5rJ3+VwGHMF5Ts5SkAfRO3KM6pvszKP/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=quM1NjQM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="quM1NjQM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DD31C433F1
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708153696;
	bh=UmRCPHzCitzHAljJH+yMtLyY3as6EQ/qwMfH7wuO+jk=;
	h=To:Subject:From:Date:From;
	b=quM1NjQMNnU8Gcw/w0XAFbqghS4YpuBylJa13GMP9JNKhOoNDKbPYYEIra7KmH4be
	 z9Rs3s2YsjHxFRPexxi/Ox6nn0Bhf+ULs9+0lNFgl3w83yHtGkpOBM8F3XMSvEv+Fr
	 4XJR1Xo3o8h6gEtrTZRBo6MIBd2eGtTJU0Q3lg4OgYQsxpwYpvaHb9Jd0TB3ZvVMr9
	 8jJrY3qt0X0NpQav+oLQwCXPsCuh1B0f1n8zsOUG4U1vQNPdapV0wGFAZafCO7wcKv
	 QqPCN3HVluipbFJ3bNmgPZBfqXFyRyDnJlMd+Le/aQ/fUxXdfRfJPOZ7//o8f0xkVZ
	 dr/SgEfTCmxkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63032C48BF6
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 07:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170815369637.4459.16466904309789091198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36a1f31e567aa5395207124ab92c54bbc26217c1fab4eb2b1dc72ba261cc7a9e
Date: Sat, 17 Feb 2024 07:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708153696
