Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479293537FB
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 19:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779823354; cv=none; b=lgo7B6CoH4+DGszGcvLv/BPO+uwnrp8/+HhBXu9N8B5A3y9Pe3zZotarCQWvcysMNPreOZ3Do6rckQKP6cKLVlUAT729flNadGt+EynRZfyFXIKM1uuZg1DqKxVPFgXwiUAjv8YpcQK76G202xztPjaXfp04z9G/Mylp+3dTUSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779823354; c=relaxed/simple;
	bh=mSLvPnrp2th8LHDsd6geA6S9MfkDyyxpfbIjIbMViUE=;
	h=To:Subject:From:Message-Id:Date; b=Qm9uO1uMXdhh9PjwD+06N+R3x6Vrjm6nvL0dQltOg7lBu5ohn923vyPqtBb1S3m9bkY6au/awdEnFrqetOgV4txyPsjja7T6e9u77nDHgOlaWqKx/ijYBtzgObTxEcMDAgrk9NjeUuJ4uDN0pdA72L1FdgjvK+pYSFbMWF2rQBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QmymsnWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QmymsnWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C79D8C2BCC4
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 19:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779823353;
	bh=mSLvPnrp2th8LHDsd6geA6S9MfkDyyxpfbIjIbMViUE=;
	h=To:Subject:From:Date:From;
	b=QmymsnWDhwywuovnGlYsCLBWeT1kaJXUtZf0v2RzkV+r3iNF9Gml7uYMKoVpA5U8l
	 Wwgz2RuT7/JgbfM7s4GcoMLn4E0GMdnGwLkzqnB4nqbO7a01zQs9qNHqt4PB9Dv25z
	 6msd8CoX/RamwLrrhCEHDXdPv2NLAmss9PiH/lEPyKEbpJO8wxmKpZXab90I8B5iyo
	 zAa7xK69jiVFybN6dDoCY7B4ADjx44NFTcQWX2RleDyKDtemQEiJX04vqYzZuxokyi
	 SolprvMQ7SQfIdOUeY3yAeEFbQBcm0eSp0LLCVsV8gkZrlDjtCLR9VH+VG5ILejkRe
	 9OiaXjwTkHpRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA011CD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 19:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177982335368.10008.2791865256562730474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b02ee7367868119aadfbcf3dc30829e29c08ab9b8bf71418cef98c1d1a4ed49d
Date: Tue, 26 May 2026 19:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779823353
