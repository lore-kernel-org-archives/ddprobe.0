Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1368722D4DC
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773017694; cv=none; b=YZ2nB/mgk1x3PcIhxFqCkSkS152u/TUa1WAYA0Ow6WoKdtlBvcmz0n+6ZlyBz6Pr/Al8LvI61tnTialkyPdlmCI/OzQcYxE8ME68QnffAYpTrJi6jCyPRq4pAqigy1HtpclZmL2J7pQovC1m/hPFpTkSqjq+dgkwoGwwkVdMNos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773017694; c=relaxed/simple;
	bh=9XOSUgN9peNkDN9A6uX68ohdgo8gEGly2qb+gm4MtMU=;
	h=To:Subject:From:Message-Id:Date; b=V6YBAW2AOYdDy/vL8AwDOaD5+efIw8wy7YsZC3h3t4KdKnSPWuv0sXooACDdAcXF60vkUk+6bO0et+RA03uyfXf0HOAwhq6ULOsahUJWGfbhR3F13tWowJYp6uJU/aDj3fPZZ4rbPRKLlOyss82jbXPWuJjIxT0fcCvtNhQt9VU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6lq/och; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6lq/och"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FECC2BC9E
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773017693;
	bh=9XOSUgN9peNkDN9A6uX68ohdgo8gEGly2qb+gm4MtMU=;
	h=To:Subject:From:Date:From;
	b=Z6lq/ochkjyVeO4xpomBfsBr5wxbji4J8MAsDOcQMD6lkA6ppUOkPBb/16Dv+A4pL
	 egxb2+SwV+1lMlLrf+m1gep0PNVFLSAqj3+t929og43BI9ETH+uYVCLtA+pXPq9Xnh
	 QXEbdk4wzRLE1deO89iMDvWNzjKPlIM9RKBU8PriZtkk74mQ0Bj77L0P3i+jEUdS7l
	 xGUNT1TTkbxw3T7By1ejd3iTTsZ6NmBxkcrtLN/rSSir7yW34DRToFBe8UdxBrwlIx
	 LSpzzsWEDAM8eoIVYPFPQRyq3KlMKXad173bITrb3Lg6mEpw9OGROo3gT43Ztr8XHQ
	 kGXoTvSpqJv2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917D1EA852F
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177301769357.15952.13809374242994315366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87f8070a035c624ddd68a07a99a2d4064d207d978c76165ee3eb65f8ea3e639c
Date: Mon, 09 Mar 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773017693
