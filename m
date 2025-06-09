Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B2C207A20
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749502794; cv=none; b=DIhcn3KnAiHmpkmajNXF/sORiTJRoxPh6VgeGu2uTdZGLKX0yAYhDmlwIspuq7q0i+UD66Zpor8iFs+haPcimX1sPmjIKV4z6+PwmCHylnrsKprB1wap/cOiQBAS/erJE5SOAgpvOG9Sa/WixdHapCeYjTsmhyy6tSq5LN8u0zI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749502794; c=relaxed/simple;
	bh=bVRAsT3nUoguZnybohmZDEmtW+QRcXB5wE/7Ofi1gF8=;
	h=To:Subject:From:Message-Id:Date; b=fUl5rOFsJJPYbCc+Fm9u+Y3j2feb0cxmB3bZeRbPaAYWKi+eCcYCmTeY/qUttWKBqgen2xqy3SXQXrMzMcaXjv7WkwoZf7tAvbTm19UYy/rGim7VgDF0JA0IYgDw/JtqF0k/Kl4XDbf68VbQqbNP2BAX4zumCYGKL65N5l47BRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NjlJmopm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NjlJmopm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A929CC4CEF3
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749502793;
	bh=bVRAsT3nUoguZnybohmZDEmtW+QRcXB5wE/7Ofi1gF8=;
	h=To:Subject:From:Date:From;
	b=NjlJmopmsYQje1Jemb+ByqC/lwE08wwVCvYAC8006xxlKGbbHUtUuOPJHCrys6l6N
	 EiVBBmDJ8Cbt+yhNQ6Zk72J4EZSetyjXvZ6+j9sxqavu7jKOuTypxFysyZsDhvl2cR
	 7T3sbGIhU+XSsu4LHpOlUi0ev9FK862RL2jUQfluDMmQSj6gMaRgirOGHuSiitNBTX
	 Ph24qVPaug5Kqgu284zd46BxDoLi/uT89pwyPVY3u4Pphr3iN2sxRa7t8VJldjfUG9
	 w/Y6uuvooDDzPvPlniwfM6Qk6qzBUx1v8jy1EoyILkdRhYrCAMJ4BBqM3LvqoM42hB
	 CBilqMgA/+9yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9787EC61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174950279357.13244.9451871720091080383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6834c3612ddc222cfa9d75c02b8ca6f663b7316777455bc54aedd126c4befb01
Date: Mon, 09 Jun 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749502793
