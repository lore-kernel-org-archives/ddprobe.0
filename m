Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB2B38911B
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786878634; cv=none; b=t4Y09ZAGL4OE04ug1CrfLd7lkt9LQcGKALcKGa2i7k+FZxiZ0+JPJrpq/AJH3xhbW7eQd0yesDJtaJNjKt+WgVqvPHFjUPdS4ljT5jCx1s9cNNQNYcCwT6lSvDwQ3snX2KmLCEu4oEPmJLfPjdokeUbsOM1fKW44XLzofYsKyCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786878634; c=relaxed/simple;
	bh=y9hNcV8lvjZ/NoVGdmiikDHfiI92iHe8ZaLieiiydmk=;
	h=To:Subject:From:Message-Id:Date; b=WT7HySB69gTnvyqKB8TcpKC0RpN0g6l3RR5Dgrvb32OhkZZNYO1McM6TUHTWsJsdURO3Dz9B4kJ89rdJ8Zo673KlsKdy55h+UvgsHMqo8q47+u5XTWMA39vpfoKS516R1sPC+OmM+gTtVRxp737Y6IDcZb6SIApFbCfGataDzIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IrTqbMu+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IrTqbMu+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF64BC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786878633;
	bh=y9hNcV8lvjZ/NoVGdmiikDHfiI92iHe8ZaLieiiydmk=;
	h=To:Subject:From:Date:From;
	b=IrTqbMu+bQqrZL0aAbgKDTmJORCguQZUSdmIs2QZDUNaBAImQoAttoJjUQOUdiAGI
	 6rFjn3CfyHCvI4Ra3r6bU3Mu04suhJWO1aZ/E5t30nnww0BQAqbLWecsOojcmcXRWc
	 o3zYAueCIEtscn/yp3aLYQqmromXLtyqJtluh+dN7dYFhVzWKyZ8nxUJbQ1tLjbYy9
	 MnW+c6ue2fHlr0wffMAFvWmH7ppTWoOFp9TORbMGI3Do9WTaZQd6Xs3r5gnTV4sH0+
	 x4mDKTjWEgHON7iCIfxMPSMx3JpJzV9m74DLbpitgP9e4C31GJR1TyEvnG6YxP6/Vn
	 LS80Uh2BJ91WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9930C5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178687863368.4393.15444397721611596060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ca7976f332bdb6e8768cd1016e32052a089b5069eefb28d6ae43648fd7f427b
Date: Sun, 16 Aug 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786878633
