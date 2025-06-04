Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2559F28FA90
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749045594; cv=none; b=cAY0KKLuPnh5aKZ2vLefnsTOsa/aDOki/VueXZ59+eCPHTxO9rbj8C6goNNZpUk42DTuchWUzm6I999DJ04Ok3dh/yaIPwNDsojwRstUSN9sjJWrM0Qdua7/dHjodeGUDGOvgAbU4W3dcKd1pTSaENTfD0MsoUEYqa2NO7xrGAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749045594; c=relaxed/simple;
	bh=xO35sAUbGNPyFLG2eUYD0zREpCZgJhoGA4PGpBREp+k=;
	h=To:Subject:From:Message-Id:Date; b=gVqTjJevMvDVgciA0ECe8Pe2D89botqutmRs7XwOlTuXQqEn2AVaF2239EaCasUK72+3bp6RzKGEGwUts2CRKeOuKeHKT/ZdJjiaJxgVLY0bmiZwrZPMfJn1VKsVOEv0UGSAiTILOAJ/TSkBoSG5z15zymHpX2IY6Wv4qEsO4tA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9yTYaIV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y9yTYaIV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13E0C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749045593;
	bh=xO35sAUbGNPyFLG2eUYD0zREpCZgJhoGA4PGpBREp+k=;
	h=To:Subject:From:Date:From;
	b=Y9yTYaIVNl2GgD59OUARG2sYFkRnDe4GSCmgZK5uSAD7VtzEVB2LJxCo89bcwIUm5
	 SqflNilgHs8/F8BAhlcEVGdlvlqzwVUEKj1nFxcYYd+3/dqlaekr8kSbvd899LpM0a
	 CrHgK25WXo4XoXjBJrenuvDQmhqEyFHCB1TsGI4bCwhUDharpuLN1sw6xBY3zwDYIe
	 wlpQ6TPbZSfg0oaSC+N8ah/8xkV8UwTnjTJmCJEOpApzp7kX6GWuyU9oqbBmhCagYg
	 TjjiW/Id477ObgAGm95xxuq4FrL+7T9F8wo8Rgsiv/jhk+plmdJesm7L/ipl5AhBZH
	 QVmvECq4wCKAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90504C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174904559358.10615.16495507206230467931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e77cf8038449d62d1f5e67d3cfef0e46b6fee60ea08e4e10559da18f8a3659b
Date: Wed, 04 Jun 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749045593
