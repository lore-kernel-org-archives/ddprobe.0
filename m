Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260E6396D14
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 07:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789026038; cv=none; b=ZmdYGPSR93jxOjn3XQahv0I57RJpXu6RK3jakW5QZXjAd641ri3rzWwKCu0Yqs7v0k9YwQ9MhoYBs4rc8VoyN3re5MwcDiRFO64jdWboDmTndETubKtJY9Ojz0byNYKUWd/A+DzfgdX1FZSFALFW8hz7nJc+Fcooiow5uReNOlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789026038; c=relaxed/simple;
	bh=rGmElEUHYZFh3q9qVI1jNpXPPUx1I4R6xamm4pLJyPc=;
	h=To:Subject:From:Message-Id:Date; b=dVIb2dLGte9rSPGOElGzPo3ASYbPA9llCctqnVXEyQGzL9vZpB9dLNbAwqWBpXTlBuJe0PZqMsb9/RUy9yyf5EqfgS0hf7hGZbapSTwQ8z0l52vgqUrc4Fep4qkTQhjvJpksLxC76NqXti7JobZZ/qOmpiFOjSU8AJCMCEg8oL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oAMWB7iT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oAMWB7iT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3A4C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789026033;
	bh=rGmElEUHYZFh3q9qVI1jNpXPPUx1I4R6xamm4pLJyPc=;
	h=To:Subject:From:Date:From;
	b=oAMWB7iTFsTDhrsy60JWYaCg07IGpimPkD3ynMPK3J9TXkQLWp+vhAwhPXA3Vy/r9
	 vlScIKwjsdpNe29fgv0wBIoKnVm63NTvRrMSg0DQOTnYlvbFJjdnYiQ2eT0+MtlCdT
	 14yR0Bb4Rej9L5/JwWujFCQ12KXs+IMRONPrT/XrnszOOu7yOb9JuMbc7bs7M/18L3
	 C2bNNdlvbbTaXWH9AsahTADYrz1erhRWGDjFLIBSrHAf/a5ZAZBNKfvRObShHKuwXT
	 2eHcdirPbYnDeZAdtWzl3mftUMMXFW6ZRJ7wPgA56Lr1issMF0IDjYqCzpuQ6z7d2Z
	 ta6n1/JZFX6dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB002C79FB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178902603369.17325.2930879499771136320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ef45b70eec05a040656d180619b8f5a15474864617c55331602238fc014f6d1
Date: Thu, 10 Sep 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789026033
