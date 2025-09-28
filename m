Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC89A927
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759069194; cv=none; b=ZKcL7Wg5Ym1uHUDcjbPvRD4zLqCbYJ7AmEtqKJ2jTCOpu2vGL7BscRu+0vr86xd1hB6ERXJE1Q/LI+HATpcGQtTJqsJ6Snm6/m7qC5nKNLiM4Kub5JVblc3PqG1F/nbV7TWreVhsY4Oc0kjugpNUnPy0fXMxvA/NfmDUAH+Aeo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759069194; c=relaxed/simple;
	bh=ZyoWYmjctwt4YzQdF30Zjc0mmswmgv12cRfjaSsqWRY=;
	h=To:Subject:From:Message-Id:Date; b=tNvK81uzpQMt+H1GWSTwpz3d44ooF6Pa20jJ1MBB+8QXu5pcial+TgYwQsVBj6YYw5E9S0myEYjY5EVmqHkN2FHVQTCG0tdFNwAtJJ8A5hNydnMtFZNc4vUOMvSilKECHjXLcqIAEFRpkbxO9VqWRw526Hexezbd3JirzIoCHx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A8XZJzpU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A8XZJzpU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB9DC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759069193;
	bh=ZyoWYmjctwt4YzQdF30Zjc0mmswmgv12cRfjaSsqWRY=;
	h=To:Subject:From:Date:From;
	b=A8XZJzpUrxhayqgHN+M6kUgejkZKOri//2BErewrw4yhecVptAN0vtoWGcPm3zPx6
	 AlOycnTJePXJBUCwY+cWmd+vHoJaCAsgXBsx4h/LPjBfIvvMDVLMPqzJKtzcgySfPY
	 xEURulwZHwU5EcqG09S+JxJwg2jku1Xfe5rGDfDqGuyJmNFpZuKws2cwyq9njistLB
	 Ue5hKTLKaUlFZGsSc+Y2l3ROp41J8QKuiGeuOOYHAlf0+HwRWZGGmRuWpCOMitYvcf
	 V1bxkrp5nkj7UiDDgfUqfwcjb3cJ0TFAA92gKnEaXUc47M91FnCXMU6sOByNpE7bsw
	 b4wopHHDgxBqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975BACAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175906919358.14991.4066289768100902363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a83c7a9be29f9b40aa261535522c84f56df972a046c5817482391561a1fe60b7
Date: Sun, 28 Sep 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759069193
