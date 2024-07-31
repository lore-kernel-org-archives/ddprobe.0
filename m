Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBF2210EE
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722458754; cv=none; b=Lh7UFbbvYzqDoU3DW5bG2I7npKNYV7/ujDZIIpq12N36rLQYP9jlCIfs5rP0vu3NURAlBxRwzCwZOlrnUsbv24YbDaqD/Ii1dNDZ5yKDNVEqsgPGQyZYiY2SNQwxZABjgIZMSekxCJa/lTTDMyfLaIu1fH6VRgr0RbVMnYKsb7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722458754; c=relaxed/simple;
	bh=BCaymvFOmC+YZqmpzjwLWslTiIlqb1UBBU1KM4qYvqo=;
	h=To:Subject:From:Message-Id:Date; b=ZaqlhuGhmi2a9VjOPglDixYhTrjRFqMXM1KNN0xihcRRwhqwoNVm5PZG/zg/It/xYxw6YvAUIQeI/gW6nbxDJJMDLo7x/fIEqLPI7go7k32EWSbHkcYjdDe8fErBpC1L0MO5oBuhOY+g7rh4Mq0uL9wVmH/gRpxxCg0TdVmgXLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HnP9yy1z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HnP9yy1z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A878AC116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722458753;
	bh=BCaymvFOmC+YZqmpzjwLWslTiIlqb1UBBU1KM4qYvqo=;
	h=To:Subject:From:Date:From;
	b=HnP9yy1zkWyFL2kmZmraBwn9XSzKrOfvtFmobyZjkbJ0y/6jDX7v2K0SKjBZO/R2U
	 oPaml4PSyMfs+VWjA2CinLzi0Ms6/f3pYV2ucgGeiAj3QcuEQuShS8jOH5OobP2Q/Q
	 OOTF8WGsuquJAwG0DcAMVG9FvF31iI1ZGdoWELbXCQtKILd5lvF2s1GXLxThwYitcs
	 sojz0rwBessZtT6FGzhITInQ+QHpSKSDuSeJMLb1qvmRYevHBHJdoiZoyyTPocX5L/
	 YMfiRIfJb5z3i9aTDwaxp87GWoTpHYVaV3v9WtRFLthd5WuZaRA6Wni5GkCJ3tZoIO
	 aZU9e0FvJkFtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91758C3DA7F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172245875358.31218.4050649085920543938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea0a497a2d244cca03e6c034b48c0677b699451980153ef27cc7b80d9638818f
Date: Wed, 31 Jul 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722458753
