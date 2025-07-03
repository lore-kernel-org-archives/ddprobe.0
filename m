Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A51C158535
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751512794; cv=none; b=kJuGDUXkCx8/FMl/5TnxTBrJkm/2UZN9DZQM1q5w2hWHQPhJWKebqZJxxxhAkxpgpCAO7ddcSm/8gqxU3w+885ti+BnSiBK3x9sTuppMjC0ljLUi49w0sCNw5sYKW2tVptjxtcbtbFKIBJHSEfjaaCMhaiVNSgqTavKyCigGpUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751512794; c=relaxed/simple;
	bh=NBvFAsgOo1k+r74stObVqswC0xqOzKr8fmtjQ9vEixg=;
	h=To:Subject:From:Message-Id:Date; b=NzbWIjll+lYnr9lHLLKSZbxkWgSX+VAXrLxd109CwvSWG75IAIilR4RF7tgOT6xadEq5cyCDhbnTjM7PLMZWMsV0y9IuFg9FvIwNe3YRoNy9hc/2Goh8fL8Hy+ND5PLCYvGbONvIqAK9X6qkFbrn+USHi66/j+Awjk1y66igPr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vhr4OQbi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vhr4OQbi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BBA0C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751512793;
	bh=NBvFAsgOo1k+r74stObVqswC0xqOzKr8fmtjQ9vEixg=;
	h=To:Subject:From:Date:From;
	b=Vhr4OQbimb903xJz4u2k9fFmbjsCio0o95luOIyawb/0OB85glUQe+L1sxT760RlV
	 dwIs0PYo25LKeTpFbgFTKUscPl+uGRkFQhtjN4BUgwt6gt62Pc/ju8e4uq91AC0P5Y
	 puMeZRyMgDJmoMykRndYz0AX612P1kFdeFu08fVBQwbLHdj3akkKxCJjwj8EnRWnVb
	 hD07SlXCm74iI6bUltt+xCrI4tthON3SHIF6A37qe4mbCVwCOLnzrRr9cxSeqrfI0i
	 LOhVHKvHFvFSGjH3LBAHZKh8jhYvWKJ2hN1mKKAN1YeyNx1x7Yi2wrMGkF4h5B8PC3
	 Vy575NIvrFSbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4C6C8303C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175151279357.5626.16030938324830598110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 375395efc517f551d2ad45b28f77c03b434616a913562dce46174b52554c90ea
Date: Thu, 03 Jul 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751512793
