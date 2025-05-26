Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B61B81724
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748266794; cv=none; b=RmLg+7nZ4FK09yvmBmPOld0e3CoP4ATWqRIgMsC3dXWAIgrTP+8hEH0XkUiR/DvhLN4QQbBcggZjWUM8pDYZ/TJKfOj/JGuVju3SUUDuOzFONb1s4rjFGG1H3FRNgm/RoYutq6DX5sjWMs5y7i0hPqDExljrmI7fTSWYYm3YoHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748266794; c=relaxed/simple;
	bh=UQLetoB1wk2WTWAk6YesHNCEs5p5MtAtwtrIQbsZWFk=;
	h=To:Subject:From:Message-Id:Date; b=tyDxscxq8FXw3Y6llN4D9r2aNvqhZ6kp7/P6IgKunYIW0mFXCkHkwTQZfR0gj02i/KS9ou2LGJzxFvM3fJImz8q81La1BciGK0M1m0TWj9orj2p1QEANuP1OgPCV5a90/Pr8WgWjruTZJG+EnOnOGenZpmZt38TTMOUSSDNmLG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m7+dkaoy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m7+dkaoy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B871CC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748266793;
	bh=UQLetoB1wk2WTWAk6YesHNCEs5p5MtAtwtrIQbsZWFk=;
	h=To:Subject:From:Date:From;
	b=m7+dkaoyh9yBwQLmHs9ZvC+fXv5JwU096Kmh9AjswXDzQK99bh/z5KpFoZTTvdYdz
	 FGFuKqPRLKyNelVSXuzH2PFHauirrPvF1sF1Svxk+TxrHZBs1FeYpvahEIccpW3eeI
	 TFlzBTWHDlP77URha/Iw3hDc5uEVYbMGjoxJEutYmScLyzp9PQESMjGnIHSarR3bOB
	 pN86vz9x9oGfwd8StJHZhm4vhHuRnhUVIgI+nkeZwjhuigzehEIsvYEH2VJWFjHleH
	 qaYsYbtonugPKj7a/WI0eYeg6d6shxP+nVyUb/vYsZP0ddcsb/dQ6TVf2w18LZVzYa
	 R6b7/kQpvbrRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A436EC54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174826679363.20908.10829791249307606437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebca7840bf7734b73f53ccfd942c2234db51f3ee5a2a9c45b283d811e877e5ab
Date: Mon, 26 May 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748266793
