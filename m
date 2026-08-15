Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6112427442
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786796434; cv=none; b=KNzbY6oAUbEtaRzeSMKZnQ/nfJhbQct/7KHb/Qza9kLcHh+Ed2gkIbDLc0FHXj0RpQqCFvLepCAmDSIaJKPPKy760F20pIzIAmDYO5+eIXH3EuVYMl7wslN2e4bde5BcNl6keJYoRtzkAAiZu5AfGcLPnIknDB39fmc7F3ATUFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786796434; c=relaxed/simple;
	bh=Z1GEAVnMT4WTzchPhb5nY76c0QYnRFRJIX+9+s7N+QU=;
	h=To:Subject:From:Message-Id:Date; b=NDRWyksN84oGbJl9MxtfnicvEEhdUGCIiKu/6qR7cH3feCwif4AxsAym/AoyPcsUQU5JhyBxSsG0DywmEqr/FffOwCLa6ctmBJsU7tg01Gt+56zTlyBHPHgaezPMhr0dPAjvH1xnzWQJLakMXdc0st8wrCam+HDL92q42OkxqQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O3Bbaere; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O3Bbaere"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D359FC2BCF6
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786796433;
	bh=Z1GEAVnMT4WTzchPhb5nY76c0QYnRFRJIX+9+s7N+QU=;
	h=To:Subject:From:Date:From;
	b=O3Bbaere9ay8zeruDPSekf4dnPZ9naG+DRra28hVCQKdSqAKcnFyrdQWkZ4AU76eO
	 nzb9lhyGteUcSwZvjKHz6P2ow5nnU5HE2H4zNL49XtfI72p58IN4zXO+QI665GIsk6
	 HYMk1S277BMu81Nk+oXaieyg283ao7JwpC03abgDTGDXcVj4VoLNiKNGKrkVbSaJmc
	 iIe+xs/fwDTILGoyPQohd4+uM2XdQNm8gmebzoBbpbk1CtqyBvj6is04zvn/jgqU+0
	 vfwSX1mzqTvAqqvhQRoawb6ce+LKcWdIUsZvIBie/yuMMjum1SIcLC/4bqldz8VeKx
	 +SulMqp9p92dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE04BC5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178679643369.22656.14346424328625113104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecac30f2f07902ba6d9e82f71c36a347ceae91e1864fcb614f457c5867f7376d
Date: Sat, 15 Aug 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786796433
