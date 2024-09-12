Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241FA44C6C
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726155954; cv=none; b=pQrVMBaz1SIMGaa9SwZoMNVB29nKErm3Ffbu9Kr48EKRuwHWvhFq3v5x8uJLplFwChN3q9RGK9qiuqw4fOOR1XamX5NHaa5xVjig6C4sD8YwdiN1GanYq2J9Bvae/C3De+TlXOgjR5HXYI8feMzz4V5VM5mb+VCrRKA074w26BY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726155954; c=relaxed/simple;
	bh=4J2GBhsRl3juPmBSNo/rN7IqIFF8pgo+vcnSsmLBOcs=;
	h=To:Subject:From:Message-Id:Date; b=a3qJd8eS0n68p5gveBdiR3FtVncE4iPFyZc9ZJx6SwMil+9szJDeXHQlJyM0Vt8GA3kacHfLgVAMGRTbZnO1UJwm3Ws2Dglfrd3+iV2uhUVe0UJYPSChsa7Pk7TCxg837Ob6PicIfoclKnuYkbRYSmJJfkZr4pla6dV3sLBDilQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGYtiRMB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGYtiRMB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A49C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726155953;
	bh=4J2GBhsRl3juPmBSNo/rN7IqIFF8pgo+vcnSsmLBOcs=;
	h=To:Subject:From:Date:From;
	b=GGYtiRMBzLfU/xDaw7obDGFecoikgX/R9P2B4+/bzSWaJsorHqvgr5NWxJvCJ5ekN
	 EvtTdK4CFccfrCxH6W821qYxH3q3Hqb++NR0Fv2jePUbUvXCbFzFvwsvZuVDiwTIKp
	 NKI2u/sq6z6JW+BTtOw5dxzEHQz7iSZHxXJN4mzJt4YrwH935vNCN+4IfwSDEfQB/I
	 x2/qj1MyViOjRQMOvilJj/IYSNKZFx/GQHz9Ate1iE1S47zEkGMiRqG4t0ffy5h+ih
	 EL5XhbtmmPFsT53mmARQOCvSI8MI1vPra+sC39rwPoEYOihOS1hiU2DfpvfH70R28d
	 pxGTovUkcqDOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F79EED615
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172615595359.4138.7789030495947207058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b495a2fa27d8ab748c65d6b16a8445397c2cb52b33b8cb6cf465f1b1b4dcb89f
Date: Thu, 12 Sep 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726155953
