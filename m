Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EBD12D97A6
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760642394; cv=none; b=XL0bpLG4lxX4SF/S4+zAn9rpqQ6XxcR1vWn2ioFE6WtfgqV1mf9yTOKdV8p9G2DpOE5Mx3gy20rrvGKUu5sx8JEnhds3fe+NsNk22rKJlJUwllMkHC/brAcE+qHsUVT2fnBdGD4hp93S83z6c5v0EkDn4ruGyGJc+fDZqBoF1HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760642394; c=relaxed/simple;
	bh=RipZRUvRSUIcpUjRovIWlqx5XpUO8WApo9YicDBlTvk=;
	h=To:Subject:From:Message-Id:Date; b=iJLECgEXq/hBSPe4zEoc6qd1ocybU+CXT99w8hDDMvZaK17HWYq+ocXJwl/DKQTcq31XOZJlil4BkoSoKGWnz09M8uUfAZm5AE9zora6/TYu1VfqCJykCbfef1n123RpstAGNry+p6SVQxf4vtUuF2qnykeR+IU5fmaxxIJv1d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NkAW4NMK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NkAW4NMK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6ACC4CEF9
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760642393;
	bh=RipZRUvRSUIcpUjRovIWlqx5XpUO8WApo9YicDBlTvk=;
	h=To:Subject:From:Date:From;
	b=NkAW4NMKldqJ8zTxXka+QZyM9nCMjCkdwrhFA105AJz0GFMeb3B5RwyydCpGGRbEJ
	 HqxrrV5uRvwas8pVrd7oY5pWd+NtxClER/Lo3ZTaCWYyr1tuhpku6oHNBL+ohyKwsX
	 UZzg09PvCIBfzILsEszOSrCxoHmzzgyINDoFuAZvjwSjlSLmM+xmHGhRDbbKQ0/GhK
	 E4OIN9RjoYSMMAgmCGG8ogWm5krVsfl/SbXCHeyZqKKWrjHydJbnZm25TH7H1/b6ld
	 DVmodI/rd4dnq0so3SBZKkvw21/EtVkQcAQfkyFuvChEvW+pqw1z5zEa5XR5hctctD
	 vUZa/2CqLKBag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979CCCCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176064239358.29689.3301589568408789398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e87debe1c71359007cd502ffa1eb7129e0574bc85b691f0a79f8e936347f9e9
Date: Thu, 16 Oct 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760642393
