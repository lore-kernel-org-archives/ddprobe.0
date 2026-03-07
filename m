Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14008310651
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772855094; cv=none; b=KrU5s/sopfnDAJmdtzXYAbe6O7fjiPqaxFnKm+1P4+ltCVeuGVyz+K5xHST6cpLYZjLo0AijskJ9zlq5jJR3O//zRp7Cxn+Z2fLH7WAQjzeV02CfjIukgmhS/NyebKQl58KbR74x3MH9WztoxbnCeusqLIWyizCm2U+17qqVrxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772855094; c=relaxed/simple;
	bh=T+DCMPp2aoNx9PJODatif70H59o4ELWgcpXTfp+3o0o=;
	h=To:Subject:From:Message-Id:Date; b=c3KRvVoE9vQnghs1X+Y39oM1vqdGA9c5dJyPnJDo3inLJ9EsY11vs96kquzTzh93fP7z7vh3gUQRXiILdHjdsqA6jN6NP96+9iFh4oeZQxNxPzGQK/EbWWQ1foQ0pCB5cWmVUDnGLDWvsmvbPkJis1N4OnaAUSSA/WdBVHfxIbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VekU0Vtc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VekU0Vtc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6161C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772855093;
	bh=T+DCMPp2aoNx9PJODatif70H59o4ELWgcpXTfp+3o0o=;
	h=To:Subject:From:Date:From;
	b=VekU0VtcxVa6uh7DW6zC79vtlk3++YsP48Gt/D61rH12rx3E5bctCi2hI1Z4ewWLh
	 9A5LvklRNaBwGNkWqVYqBbe+Fk8cFkyb8v4diIqLk1dwXBIEVpkJ79sxOXc8wE5XKl
	 c934efqXnBInWTmobn8wjtdx4OspGH0uuajwFuDHr+RmZ7cRocTHX5hcD1SfO24urx
	 8U9JliMK2T6QR+XLC2qrnS6cEcjmIPWGC7iKegp7LG25jzUKa6ELamLLnYS9jYr9Tg
	 zVYkNWcQNfErtB9ZzQZedyD6g2aTHjjlP8kzdt+AmiNGMCUaefDwl64asHdjfS3Qz2
	 HaduMXJ+AMZfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97055FC9ECA
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177285509360.9872.5867413000850823107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c6f551f30708fc2bd4bbac854178351c8480a98774aed40ae2117f6d662c3c1
Date: Sat, 07 Mar 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772855093
