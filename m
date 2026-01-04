Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6EE241690
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767507834; cv=none; b=ldc7kbZjkpoXAheG7P7tUIL9/hUtV3O48LKuTWOG1hZtoqRBAHMK2gjBcR2FKKHZE/yknNXn5HAsQiTesZwnC2kFZtykTyMqp/KJhNWVLUJCloD04ufi0Tc5dI+yI9g7vKu+YaAgiwPrkFuwMpLG56+hhbWSv0LPDnofa1H2WLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767507834; c=relaxed/simple;
	bh=T7ccp+ai9u1AmnGDrhrD34YRxy+v3ziK8VCTbfc82+Q=;
	h=To:Subject:From:Message-Id:Date; b=sV4ZmJcCbfPDbzXtp2HJXQk7+s1d3seEE1TB9ZWgqN4xl5BEwoF/QfIa9VrbuC54Dqt3SVCK6JCQHytnnZ7aZsd2Vltr6m5ZaK1alQPYC6TEWJQa5qG8v8ZdyNw9IdovBaNVTqNcEfhB1rKLebwzVLVTi3GuBIl9OxbPoC4AKFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxRMPoA4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxRMPoA4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F4EC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767507833;
	bh=T7ccp+ai9u1AmnGDrhrD34YRxy+v3ziK8VCTbfc82+Q=;
	h=To:Subject:From:Date:From;
	b=IxRMPoA4QT0LSkG3PnSsgA5L4mgXRTU3aGTkI3Ur+isBih07s5JaSdDBm3sgfRnru
	 svzyqwPmOsr/J6RyJY5K3DI2SRPdlEtUS1X2NG6VgLJ7NYXHZ1Opc5Je6rV79Y054u
	 T1tUCrYAg3nVchmZwIRAcKtFYQOF5JhefBy5Z01pNShfpbWBs9+fXBEpaoFEHsTi5d
	 R51Z5R8wYscXPiZdZ+J+hch4AjKG3k7jgCskXA+jHt86dMNaNIIJpzgI5j6Lsi1+iT
	 HUPIzX3/DmJ53uDeU7hM4VmGJh0oE0iWANdZuB/hMF+gGPVSuWpHglKiGlghDCXfXb
	 zk3druiNgb5Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926D0C2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176750783358.8069.9447615652066530498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74bc5c9a0f60d381a36075f0e936c55913549cd895c343d5d06094c77f7b8304
Date: Sun, 04 Jan 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767507833
