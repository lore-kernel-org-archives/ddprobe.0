Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448A438FA6
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754121594; cv=none; b=g0WSR9lWVCuxKKUp+hl0hVe9x10QounW7ao5qk1zl8v8xlgXDYFn4IPEPnx5qxi9mNuea9OqIThs8FSyTliMto3voDOgZE1ruQg28Fpi+p1VUAE9LelLNoOtO11Kk2dtRwLgpwrd2EZq7o5y/9iy4wipLhtg4UjwD1fhKgRLw+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754121594; c=relaxed/simple;
	bh=ySYV1e8ARuKUh3hQWZUcj4fmUxV8YEV9EXUnpDlEhgQ=;
	h=To:Subject:From:Message-Id:Date; b=PUqz1jxjZ82RLcqDCU1fJgigkwLi2rmKp4X/Uowl2FmzTPKwwoQuWzuPKXhRHb7RSN5nLY2t7L7bOi3m3UW1kyYowTqPAXWBIAlxiXcqZxz/oQumHFP0uJK8qpfOQIHC8DgBlFrr1VdUxgxOXH+Nk1gyYDZq43k2n72LS4CBp1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6tontKt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6tontKt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EDFC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754121593;
	bh=ySYV1e8ARuKUh3hQWZUcj4fmUxV8YEV9EXUnpDlEhgQ=;
	h=To:Subject:From:Date:From;
	b=I6tontKt+yIuhY4wa05NSPr9mk7debgYVxXYx7bFMlG196jI3aG2wkO9IXx/bdNzT
	 QWK9KeR0xHdEt8Pwc3uM5O42RbXjEPJaZYvwKconPG1PsWsJ1obR4XtE5RiAb4y4Xi
	 qnGFdR29TsZJ5tT4BCjM5CKnD3JeOMBQgLovD62LenKaFVecRZRnKu8/X7p2SvDW+z
	 U3+9gb+O5hBcuDngCKZz7QK3KyfsVinv4eFy32PRc+PRG9kmN61EW1PUz7rdLylyQl
	 FPgU/GHx5W+kc8nUBLhdZETnjCqq/JgbAWO6U6WwOiT5/jMlFYmE5TGfdq8TiA/oi0
	 x7u1Sb+8sOblw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B5BC87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175412159357.23692.6178757317594906963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c45500fd311389b6b3cd33fb977567e2fcb5f49899ab5d008c9acfa5663fb75
Date: Sat, 02 Aug 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754121593
