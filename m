Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB65D35C1B5
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 07:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784447314; cv=none; b=jGpAskvYb7Sefk2F4vjlww3pIw9ySiPq7l6yKikH8K3ZfVS0+UQfQjUBeHeFbs9ZFhv6IHn0gYdredkSv1u27LOJG1r1eRjYQ1amaB4SAu54G8Ibzpx/12h8MzDf+Lscz3qterj0TrQWqpuo/05IrRRzhfR4IMek4cEwTZ6fERk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784447314; c=relaxed/simple;
	bh=wgDSzVQxnnEAxYGtANVchCa2He4YL5s9Jez48FMNOKc=;
	h=To:Subject:From:Message-Id:Date; b=F8cui0e8EWDQxYuEaWwVvZW3dFxkW1S2FYLUj4JX4IXpqGB+3WQURXtKQFHmimXn5c7C1qVQMNEnuxkmiC/bH2z0zrImDW737Au5IvDxmfPX+ZtFnklm/3RVpuFqoPdbaEWaIaxgQwlSj4VUesfJSA4AP9g7HC0in9d9EvTY5zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k3krPi7+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k3krPi7+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D112BC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 07:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784447313;
	bh=wgDSzVQxnnEAxYGtANVchCa2He4YL5s9Jez48FMNOKc=;
	h=To:Subject:From:Date:From;
	b=k3krPi7++uPN7cYanc4o+rGnXzIJ5viI/UY++CrDHyyuA+FqdQwwK6t8Gqsxr/cPs
	 W2QRq8neDP0UU0Hg/K23B0h7JPuhRMT9ObCcFPRdadQt8+imghMS51CNqSApHDm/He
	 YkbjEZ2eVDRajiCWCy2CmR1qO34axl36SsER0sCUB1QjVpEzJk0M1zOKRbGZaL5jar
	 dhD591DOLu9sUWA/NNi9ea1y27HLvegN/kVgNCc1xb93iS/zqyR8C0VymrJy/Wesb3
	 W0G3Lp80jm9Y6Qsx822LGeeTgxtKIjmoiHYbk/BN2z9DiyGbw1wuz+BkjAT/Ak0Ci/
	 e2WLfygWlW4oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA05C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 07:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178444731368.14790.1088085573983918329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 174b6b366dd04c3bddbe1e5f715df29de4b178f1f975707ab9d6497b32a009db
Date: Sun, 19 Jul 2026 07:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784447313
