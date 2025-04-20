Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C2013FEE
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745166594; cv=none; b=sTvF2LcJubzbEM7B5dbwYjn0rhsNtM3e+mhP+RwPSlMNK883dckA1uhpBCg5soxVx+Rd7SnL8586uxFmll1oPxZl6qpnOIpm11Ry39qTo1nOVaryXRgLLJ2WmsSyWvY5SlQheXA7cEkt0GlEzHKuDHq0uZrcCCDVgpYFgYReG2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745166594; c=relaxed/simple;
	bh=M1SORExFQaCoat6ZjsonwwSmB8EpgnktSOLihtzbv00=;
	h=To:Subject:From:Message-Id:Date; b=RulirnWliMQZ/DWGKrTtgntX/Rh5vx1sq7XTX6cWxS45sUGjvWjAqSY9O7RvqsgjUejXcc/5h9reYoDnDuxPL5VTJvTt5mvrIKUCSYT89jTku6b11gBMYS0r3B0v+Mb9tI49SIyF/dV9v0Epqo7L7n4d9SJUY7mnExhDiyecCao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uxpSJ+5f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uxpSJ+5f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0159C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745166593;
	bh=M1SORExFQaCoat6ZjsonwwSmB8EpgnktSOLihtzbv00=;
	h=To:Subject:From:Date:From;
	b=uxpSJ+5fAdCDUtXVAoLXLylZefquzm3uR04NGHjeMGXyEGG6DFiUumbH70bgxu4Qs
	 FiYpeKV4UlONG5Ik4sOtsXimtwJJtAYLpGDRsP3bTqLYmsVKq3PK9NmLKg3DJGZtXw
	 afKPH0Ch+yA5eJva/qX9/r4kjsL9DZTtnDw8S69JGIaoQ1TqqqRtBqZyNvilksJ+na
	 PrvElJ8+8RfYtJwGJTxOBRsirLzPjhEdQRLvojceea4ylVa+MuYufBJQc90bUFf9p+
	 qEekobo4rBbnfCzRSSVpe/D3jjYLKHlqEagf0SwwOf5cmozJRR3Ar64NEzV3MV342/
	 YiLqXc1at7+GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C50C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174516659359.31847.5211979659072313770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd085d55acf7b16737d7ecd628c22b6f88db7ba4252926fa435521b13169a608
Date: Sun, 20 Apr 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745166593
