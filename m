Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113751BD9D0
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769940234; cv=none; b=dU83oRhj7em3t9Dk54tBQHlMvuNui3LZXiVvV5Y+/JVNkU6nLgbbWsikO849BbpPc+/j8HK2yqfjrdaRx2LswheQ5zmFG0YYGLRYhwHe8vmuo7drlC/fOoWE4MDyqxTlPqAqa5LbDKy7wumXbxy7c+Zb7rlcP8Wpu9gJ7iPGxyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769940234; c=relaxed/simple;
	bh=Kse6GKP1d7O8AFn7Q1/WmnO2uz/AiEk5SQzj2rh3li8=;
	h=To:Subject:From:Message-Id:Date; b=A/ih1XaYCJwElj/9m0KkNgPPvvZzU28b+PXvczcgBTVt2xz6pmGFbTR+3IM63iPvzzn+wIKhODESiqQYqRdQYtCSaJ+Jmfzd5xsN6lFd1brBPM30jK+QgfOEDA0O+d6Td6GZQhU27maOPdL8TKDN86xpn3NARsMayipXR5pQ3as=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdXzdMfu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdXzdMfu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CECC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769940233;
	bh=Kse6GKP1d7O8AFn7Q1/WmnO2uz/AiEk5SQzj2rh3li8=;
	h=To:Subject:From:Date:From;
	b=OdXzdMfupy+hIon+lNGPJmXhfrFYBA3CJTuOeb2mc0ewdWsByhZwzLWf2gJd0qIDr
	 AMuimHOzFjtKByPILSIYmXiqZW6p0pldev8pA9q8X1xQj7coJgQ6sj9ABr7cLz6Uiz
	 xx+XFXgvPXfV/UUsi8t0HgKTGIDSgk0lbvoQ+1gKjjapWMQp0IS4bLVc5l0Dk+GciF
	 lrAMIVy8wJ3IbtayuFZ6n8PruCameAdmYmTVh9e9x9gRyLnqUDXePcfx9JoX418y3Z
	 bV7gyHBSo8eHlAdLZyeOKvnkVgMoKgYzXIfsHbRvROcF8JbLFJNeis0b35+qF015Xn
	 Kl3a6nQNdmPYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94619E7C6FC
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176994023357.26829.17132158216738933168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75d3e94c948e6b485353306e0b7f8dd7bb14aefc946aadbe8577afb925a2c180
Date: Sun, 01 Feb 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769940233
