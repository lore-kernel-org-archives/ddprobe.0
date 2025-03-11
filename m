Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4477B79FD
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 00:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741654134; cv=none; b=hK40wJ6QKy3xTmmas1/0Ej87LOzGZf+DT2YjhDDlD72Vpz3D4IZdSZgeMGjrIDUnPAx5kzsKSERK+vmeNYnoGTfKL+JO6TBLLIqgwoL2TUYcnP+l/A+TEbAWy/A2TF0ECt6wBLYOQznvc8FtBJuUF84iVN3dQbrBjtMvpd8zcaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741654134; c=relaxed/simple;
	bh=BMQlUqx9GPLiRr11ASzmT/JT5vyV9wUwDfBuHFXdF7o=;
	h=To:Subject:From:Message-Id:Date; b=lAH7RdkaalNCWcECbRWCJQA47IIf43CoqnMMNmEQDUWiThunttOniz1kZbLw9EwxaCsKA2DAM7GKIorkwNWbBKinV1u2lLjzN1Bv/9afHoZCfxGwHLTEs+FqGg4WbgKqXLarhsVGSH6t4EgArah93nF7QRxLZzyMNzCSgk/nXvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GbQFldST; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GbQFldST"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC3AC4CEE5
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 00:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741654133;
	bh=BMQlUqx9GPLiRr11ASzmT/JT5vyV9wUwDfBuHFXdF7o=;
	h=To:Subject:From:Date:From;
	b=GbQFldST5U9WGuUbKFlb1pQBkJ450NPTrzM5quZvO+40y2Z3PdM7R4fdqLh8diQzN
	 30OEWFJV7V4G7jL8riD/T8TC8GHlYnTyd1e35FzRQUnDhENA+iwaG6G9EOSaaQEv4c
	 KqdJRBX9gYG6Va2u6MTZr+WEQ+/kQgXdUm4k0/TbcUWKvvAZBBL8e2iLmWm4wm6Tvm
	 EniEKAyAvmp4EIv11WKMuLldoaSc530dq/MCZgcniR41C2lvwgjlASqrQ6WhGpenad
	 iaKEwBxGJaRvt8D7I8zlhECGEGJixnFoxof/aKB2c+xvmY98kmD+rPKZU1qRCSfDv8
	 K4koRrQByPbXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9892FC282DE
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 00:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174165413360.13562.5865239070286418312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5f3bf4bd438e74596400e3f0398cea9e6a29a68e4f5fde71dfd96071506b320
Date: Tue, 11 Mar 2025 00:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741654133
