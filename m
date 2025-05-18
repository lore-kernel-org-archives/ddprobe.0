Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8B6EEDE
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747549794; cv=none; b=hxCrtWx1fecAOwp16OG+dHKyQ8z0r//x31vPVbJR8+7cVD04CzWFnyiOF50qkIODptZRtXNzID5psRlIrjZv1aQwH2ddddnpZXq9lyGh+mlAWLxaRzyi1YvLyHzL0CHUZt8D9otBhSSWkR2ECH78O9OtONk4pGCxuqKNZwS6iQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747549794; c=relaxed/simple;
	bh=d5cBGAVUwSCGc3vnP5+VVX0V9cyY8LQO7jpx2+TrjT8=;
	h=To:Subject:From:Message-Id:Date; b=WPoYwNv0tdIOTxVDbga+ThW2pgpM6Vv3BLgznZeo4COE/I9r2DJ5EwsYFHiZEi8VPcRGNg9+Kdc7cjMdQgBAnAw7cAG5wTAJ18spIM1phztgZDfO1pgoLFTbqJneYz3YynIpOMs8Fzmt9v/W6JH7XAyOSb7OU63KfVhVOs9KINs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ch6EzQZ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ch6EzQZ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6743C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747549793;
	bh=d5cBGAVUwSCGc3vnP5+VVX0V9cyY8LQO7jpx2+TrjT8=;
	h=To:Subject:From:Date:From;
	b=Ch6EzQZ/+g07dMXPiGFzPTzyFLipJbG7LdejMVZcOJ7U8aT7zMLrTojeSr0soEglF
	 suqjGoTq8bW3pLpcSa7m1Or4SgAyE2qgicfdrsO3o49el+/CUz14NPGFk546AmtKYe
	 i1VBijPFETYTiHogHSn+Rt177ahFLh8TumLeyIEYi0o+tBY2QObJheKqBi0OHmSaH2
	 x2E9kK0thEw3e18yWxRpsHL14bo14C+edtn/fucG1uVcgGYuS3KXziafErvSPPcTGU
	 BpMVfi1TCL2PrXdWlD1Efg7qwYCMKHGbfLrABQXX1YowLvCty3s7C0hj9wdNkCtrdW
	 7tuzk2plb3HFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E4BC3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174754979357.21194.6572280156630422552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdb49be29570cbf6decd9892c73e3aaedf3355f8516a68d512b429f0bcc764cb
Date: Sun, 18 May 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747549793
