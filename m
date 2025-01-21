Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382D21B4137
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737457554; cv=none; b=aVdKoPHP8Pp9jNLTH4dCtm24Gm2FNQVPe6EvGNbOi7pkFT5BlUXo8JNN8e36aVScR7yQk67gr8Mrfk0jD8ZABRoR3IVl0LpN7SNuzZLol3tFa/RmVRkkI+ITigN1k3GO+/6Hm+v7a4pUoii3o8p8J/zgDTYgtwyuYxomxc2R1Wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737457554; c=relaxed/simple;
	bh=x5P/VgJ7jbi8CyL6ALTF5z2uUYeHyQhjKlStODOpRv8=;
	h=To:Subject:From:Message-Id:Date; b=eSkc+WN5viZkP92oig7oyjhUPAJ3kzc+0jkVvSwXeU3hTTyQXf8Cy68HtoTv5fLCxrTFfLI3+XvYPzGbZbxMpNlEMGfbbRKJ0UtWZB0xBGYunLBhsSDBWf/yXW+Qza/s1mgyWm/UkBLhNyWV1nLCuRjgg6U7Pn39LA0unbDIu3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AXO665R9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AXO665R9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC555C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737457553;
	bh=x5P/VgJ7jbi8CyL6ALTF5z2uUYeHyQhjKlStODOpRv8=;
	h=To:Subject:From:Date:From;
	b=AXO665R9dJEGVTuBI6p7GK6E5i3zuo2bb4BOaRz/E8MxvdCZ7yQ0i8cy60X7mCTVy
	 RSiVOub+Zp3omYhrS8XemtG3zZiCDy6NLoNtjUtylnzJ98vAOrTR8Ug0F5LTVoNRU5
	 aVQKYmPV2pcT9V5oPOQfUNBeGAx1tEKzY/Ze8ntwKZ8hpx/8apAwZCle/X8EB5ZmyJ
	 z59kVYu2eOJW06ofM1MPSEUBA7pzEObL7OqjmytJo7SAgVUY8gUDk1nLDHe35W4mpX
	 A+1vHtsdVfXrVet4poYjevpTEi+TrJuVfCkco1l3BUgZ+B3in4y9h+25D6z3b6vcQm
	 dz46k0lpdETdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C5AFC02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173745755362.3112.6911270780424054646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd92ef7ae07a27c9033a2e5d9526b29a40daefe6776fb0b125f753ead3925897
Date: Tue, 21 Jan 2025 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737457553
