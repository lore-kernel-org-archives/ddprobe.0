Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD492309AA
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 05:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782364054; cv=none; b=fHxhpmO2h3sW942ZMKq6Evtv6Eyr7BClR3LXN6nBh351lhizu7BIloyt7zrNPrUcy8lXsJmRfX3zlVa3pqHOrAkn0W8X/2Dd31g0tn/Y41sGFszofARCMwCLqdXzVDuQrT+LrWtmgvin8LD08GrzaVy8uShocrXO5xTZ9gbplqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782364054; c=relaxed/simple;
	bh=LOmyD75phC+Amg5mYahaarKQKu5rFlpYm3J7n7iqpvk=;
	h=To:Subject:From:Message-Id:Date; b=tqhB+OIXif6O171l/FAuVeK7N7pIdu1pTDmFwYkEbTYrIZeNUetRhoQtGeb2MveDxGJagcc7+DwDA/V9IOHdG2Ugfl7ziNrTadPF9980k4Yal9BVmM2ct019qNdYoDFsNyoqv4QkT61icadvJT1jrVh7TD3xzpHUkyj4ZNfQ7Zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u//H46da; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u//H46da"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA125C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782364053;
	bh=LOmyD75phC+Amg5mYahaarKQKu5rFlpYm3J7n7iqpvk=;
	h=To:Subject:From:Date:From;
	b=u//H46daawKS3JFSPgRQ6pS5zZ868cW/mFiJ1XOd5YX5LfkPFwD2nje0JcaqmFeAO
	 R71AZB0IT5oVC3kWSJxaHFfKW8zGgJQdsn2gV8nd1Vhi4Vm7XJmB8LD5XNFfDyLrFg
	 o+B8FmeIs6f5fnpS7eQo6jFWxfqfjg0Oe+/DZqi+vp2JIPhjPpu5CCQI748r73k9TT
	 EddxcgmawaeO6DdqVIu1BTb+d3PwWg/fjn6NTrCwPXkqDJ71vwCyNhlvgzea/8CtRG
	 2yUjAjIVjdb0nZfLW7f+Xkb/saavj3VXMU0Br7LjfGXSfx/L+490BfI84vgxWGzr2a
	 NN9w/q1YPNXCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6AFCDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 05:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178236405370.17247.8114996000845889308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7accb9ba78b93c66eab6e966546944d629fb5684d4cb60568c30ecc1e7cee458
Date: Thu, 25 Jun 2026 05:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782364053
