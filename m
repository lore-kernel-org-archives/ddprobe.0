Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF8A1E9B34
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742594994; cv=none; b=f+ZZMRe1iYK+2Ojxwe+T/+dCJ+Ki2rAVtHcbhdJLbEwjYCn9vgA7qC4hyjcu20k1OoFzqFK51PzLhtt66LwyvuY5OV2f/dc+vR9IpEs748cOSFKYS0QB0vcTODMRMi4MCnxhbo9N7NZ2fusBsbuNNLPLD1aeC70MPEendeUbSAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742594994; c=relaxed/simple;
	bh=2gJ5e/22yCpRqy3uUBlQE43SsPytE6fI9Tcwxg0uFGE=;
	h=To:Subject:From:Message-Id:Date; b=jH5L2sKqkN+a13ksZ7nEzuNJWMHboMzoChP84MtFJ0BWNz01yvsXVJCZP8WstQMDxZve7YCTrvxZ0fkcmSvQOgGsksiTPSfK+I/TAiINt2bMMA65S4QvqfRq/ng9RTq4dIDZj0yf4uIhvHQj634pKhbCInvf5WQKKlcPOy+/ZAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tshotvKU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tshotvKU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B73D1C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742594993;
	bh=2gJ5e/22yCpRqy3uUBlQE43SsPytE6fI9Tcwxg0uFGE=;
	h=To:Subject:From:Date:From;
	b=tshotvKUdYuAqvzt1SwsJO5BKHIT3idUG2aqONjNAGXusCvzIstvOXCtV3q7jTWy7
	 Mhw9JqigpraQY3O/lmG0Xk22QwBhJtyD5SM57CxE2OF7G+4gfKhzOvY5PGi4xsHMU/
	 bjcirXk38FBax9ud+bKtj7aNbAKozKP8HytFI+6o70eCtc3oCokCOiRRTt4X1aO5Pj
	 HhFSS/AEEJiwWFX136OT4CDpMdfaXaN/IkEsmpxmf6v/OfqHIUP+pXocdLkDSO4pGp
	 ts+7nEYlL8J6vaevVk5fKRMxOXZ8h+TbcTbAVTMeh3oioatxgddeLK0Av5o8Ba8RM+
	 Df2LPmal/xxYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED39C36002
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174259499363.18000.11925499677476908254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 071d35d016eab15e21527bd877eac86b4efb4a4bfc78fca08590e0cbc8a796a3
Date: Fri, 21 Mar 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742594993
