Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A17B25D208
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 23:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762991394; cv=none; b=nMfMa2vjyCum5N1/cPSjSDuIiDi8hFlnc1118NcVIXlcOvjmYlp/bP3WBgCcPpJNMdpqJMLqGLh0wvCxwJgWlDqtyooxBtkW4sjOPq33eXWfE0OVKIPGziV6SbT8WR9ET8bJ6qkXdtez4EBwLgHoi/ZL5+KJGd++SijOQcqemxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762991394; c=relaxed/simple;
	bh=t6c5eGQo8nNJvMGXe859DB4MYaC2BzW8GEtTxQ6UxHc=;
	h=To:Subject:From:Message-Id:Date; b=uZwukG3EwuCy6bz0zVvSOEM47Mh59MjQUO+NjHEc+iJlXr9oAhnlTVlYCMKOx8PcrdALUiv29OJ5ZIRholIa8x4aICeKQgxTjcd7Zr/r8zGNnGM0yA3LNGAu2KSjTVvWb0o6HSasLsnvrxxXP7BdcpiN8zSG8WQs2r1vbVS1pe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XhKqRDJv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XhKqRDJv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCE0C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762991393;
	bh=t6c5eGQo8nNJvMGXe859DB4MYaC2BzW8GEtTxQ6UxHc=;
	h=To:Subject:From:Date:From;
	b=XhKqRDJvGTzz+biIv1+MAJ4FAkTHJiCeBA81WlZetBEEFfqkVLx52pvb4+dZyr3gc
	 pNPKaXXmt5P/7SyhrElHfRMBquFl9FRh2+eAcym069bj1+FOjJ5S4Y3URhGBQ36AX6
	 I2mWpSZ6mYRCLmk4vm3rvOWkX13Cne7krMkd31w+f1a5P0G09HzR/r1D6U6DYlDuUG
	 renNM96L3dh6z35f/b2/XPdX7mkKs3NlkJh2qHmMCvd7jl9F33MwwuDz6jnESECXBf
	 F3Uyk/K4pqklpx6ViCI2KfOuzZ0QiAIfnEfXGNuS+j/0njKcpSscWiLQdDCvBCA3Ah
	 BB/8eKmxfNvcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964DFCD4F26
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176299139358.3762.9063133990110377039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6c71030ae8bcebb2f82cd2cfc8456b8a38c6ef5fb3a2cd798894df8f55f32ed
Date: Wed, 12 Nov 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762991393
