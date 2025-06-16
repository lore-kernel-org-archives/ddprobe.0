Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE851E51EE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750104595; cv=none; b=o2Uf9yIlJImNQT4HM9QvfWZm8olWQgWjPik7CM79VZSS9XU3MeqBm9DCOLhGnHVQRdT6+weoQG+5TKsnNHrB/JcYt0R/xCfutDanaLxZ46e/jjh4/+DEQzhy3AdCJcKWmOVTtIgAhkOAPIBjo21a8kwLutzvpbSTK+AjmhlyvYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750104595; c=relaxed/simple;
	bh=SHZOPYlcTZsmsIODYlfUeHTelE90q2n1kpT6MSATEpc=;
	h=To:Subject:From:Message-Id:Date; b=ZxDXGCsBsj9kjBRV26oGUdR/1F76Bhw35jefkErUfLWaH9LibtdOC7l40ewHEYQz0z4UnBSGEHNCua5dCsL0ZsYIElcocsxv4yDPeOuRmfnzpmtwYdYh9qB2JPzfl5O0IKIbdMg2bAGQWJ8xJd9jMGAJh7+9dmuCdUjNI21qEhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K0Vs5q1W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K0Vs5q1W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4468C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750104593;
	bh=SHZOPYlcTZsmsIODYlfUeHTelE90q2n1kpT6MSATEpc=;
	h=To:Subject:From:Date:From;
	b=K0Vs5q1WrA7Hz04OKY7m791gSKJcx/gr4DXaxkO6rSiMP3RrHv9k8lpUPWLWjQ5Ql
	 6otTolNihhoUvAgycHTh6l9JBSr+O5Gjd/erATcTIQPx7iy/lYi7dLT6ENRqGw2qXK
	 IZjCzXxG4t62VSmW7797N4qXzEeN+clmhe35BbGk3L6Lee8rpBAgp6asLXK7FNp31O
	 n6P6zRDrR+19WQc+0BQ6B6B6NnvDEtl5CqbdIf3gsaDCZ5/mL9cG4yj+WCKQxXNi5L
	 Hv6Mm/Lu9ydNVKW5iQFnIlhYifXw88+WM59zMeYC94NZ0EnpoEk9flM9+Jm6gNnoo/
	 4q8WOryIwkazA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9046FC71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175010459358.13834.7434421431757988096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f46c6f0a041cc2c5a452dbd981650821a17d387a2266f51d5261bb6079d67cc9
Date: Mon, 16 Jun 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750104593
