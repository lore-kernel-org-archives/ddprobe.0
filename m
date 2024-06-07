Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5486E15A862
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 16:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717778243; cv=none; b=bfFnHr6drY7T6KCFo6J807DrYMYVf5+C5VGySOCwixJpoJ1LauLODYTLYF7qXpajKiNZBFxR4MPAyN2Atel+TO8AfMKocijT6jCXZDojKKeKD4zrbAdlTPDnZ+eherSFCRfvK+JY64qteIQXpdqpfBWz50AjviKluH/ymHWHBRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717778243; c=relaxed/simple;
	bh=UvNNJbQpa3pY5SUlOvp261URiitLdbBSUBNhM4JLcXI=;
	h=To:Subject:From:Message-Id:Date; b=Zi8AwGidBuVH3GGYnOKKZPh1cQvaus0g8E9qkFIDn6eGcbQEEFDHq66dpDiFnn4g19dWCbWH7LODZDgnM+xgs7WD8CzDsQxbl9LITsnWKT0DjFCKxitzpF7G7PJ6+o1bxbaBFxy+HLqhykjh1naKdMxduq62Ckh7pLDiYtKJZXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPmnSP7r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPmnSP7r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDB87C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 16:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717778242;
	bh=UvNNJbQpa3pY5SUlOvp261URiitLdbBSUBNhM4JLcXI=;
	h=To:Subject:From:Date:From;
	b=FPmnSP7rnyWBQGTUS6DCEhaYmEAVc/RiIJfyOp9zghtAWx26QHAk4i3qXP+uKF+cA
	 t4afoh2SIoBM4y8RqAhrEqI5wJw5sD/Awq4lQhJzBqH0wxHcp3t/H9uniZ2gTJmZfj
	 ZxcsPZkJOX6e4XYRLlcjYAm8OnV6N709FUzv3YIfJ4WssKUS7EGzRZa7aX2AaqX0wB
	 bBE+/qlKYBKTyzv1yNMtLwFyEGhE2CK3UCltwNm2jYvTfc/BV/CeHcgghYyCnJ/S6r
	 njr1Wur0K/HLljnZ9l3w1zUA+QwpwJZ3e2kSDLkFiIrQFzkjM/oSSwT+31MDMr0UrT
	 axOY5p72wkVsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE39DC27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 16:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171777824277.303.2523268175470943965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 707b2ff8f0af5874948b32067e27b3d0e00f0c94721f585f94bbc83fe8562777
Date: Fri, 07 Jun 2024 16:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717778242
