Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532C03EDACD
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792144234; cv=none; b=gDZVtrwJSxU0OBhy89yeHnuWn5gAQdUe2tL3g8JJxt0DtI5bbA8E6lYActa9cCqrLMVXJkHTRu5Q5oYuyOiuqqrvlxI/7O4rUdFEvxg389UN8QIwdspOkZQU8yCNLieO6quq0iNQyMmv4ZTEijqmj2K/93OCKk0zwtx6HwuTrZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792144234; c=relaxed/simple;
	bh=VZcBhd+wHeTGVrCNDO67u0EFzWsz9jvxrWh/1u+52Ws=;
	h=To:Subject:From:Message-Id:Date; b=ez8gILy/826OU9AfoXIlxg4Yu7EnPL3fxVk1sEOHhMAa2wiM/u2JKCG3gBUsSoLgY7N8Ay7+MyHnhVz30y2palhonlIMNIQe8iajuhS0u+GmynywyLfbPcNxOV3l/VFyZJxNycVglA7KoXqpq4dx7AZwS8EybXE3jHgAG/WKbz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0rSIRux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0rSIRux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8E1C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792144233;
	bh=VZcBhd+wHeTGVrCNDO67u0EFzWsz9jvxrWh/1u+52Ws=;
	h=To:Subject:From:Date:From;
	b=e0rSIRuxNBFM9OYjabLuVeao5DhaJSkj7vHP5ihm+19QgjiUPn9F2QXTFoGNdTCxL
	 ucTLslysmsLqJb2Qf6Xc4pcgXOyX9rCuP9ELBbFP2wNQpaV6EwM/9KpPa1kwQFE/ku
	 pAnFFA+asnMyBZs0NG+JtN5k0FPZtSx4iTwCZd/L0+L0QwbQZyvAW9HUKi5QpohyOm
	 MV4xCJwK+iqfWxFstQIrZqOa40c21oKGGxFVYj66tFyqtFrfI/SyJtGFhFG/m5bpzV
	 PCIQWvUFSLs2ppon5SQzGWacrmjYPEqc84kJHVh0aEH/KOat+SvcqkOh5imfrLqjxU
	 8XOJmLp9hC4Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC68CCA462
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179214423369.32585.17899324967498777350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10d77127e730c980d5a71b5c1beb00b9626a23236084b0aae69da2981cc1d168
Date: Fri, 16 Oct 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792144233
