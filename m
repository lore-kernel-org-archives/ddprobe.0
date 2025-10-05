Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360F078C9C
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759648794; cv=none; b=pPkdztBNSJtQ9kL/FqTA31UkhZpC8tDt0y4kAdXbGzvIwIanH5l5yfGEFi9ZLiVMwOOnVh6Sz4W3zG3RF5Dy7zQ+MJo56UdYuiTWjwWLNyFrkxdA2j2zr2yrljw5TGtn5SaRfoHU8y2fLdcAx2lVmUnNHOnUbzich5BOBiH4wR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759648794; c=relaxed/simple;
	bh=AgjdPpFBuKN+AfSwKl/jeZnZbFK3yrZtYt/I3QTX6zo=;
	h=To:Subject:From:Message-Id:Date; b=COCh7t8AffAasFTohSgdNHxAOSKisvt2Y9hzNLxTUKpauG+UYqXLMbyahwLWgFsgQWSvRBpxvB6QP1mK5BKYArvU6Gn+Ag0ypiC/FPiKaluLNE7i+z1i2J4QItvCnl0M/w0Jb+O6VUP2Fvq+zfUjpnQl5IxJ/jE7ANxiXmZZ2QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X8dohTiv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8dohTiv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C74C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759648793;
	bh=AgjdPpFBuKN+AfSwKl/jeZnZbFK3yrZtYt/I3QTX6zo=;
	h=To:Subject:From:Date:From;
	b=X8dohTivecF/qtc6+mP1DlifL2GrxREBBuKmVe0kerLjswDstYtmeGG3qs3KlNSQO
	 bbPn6gnicT27tj/kDcSVh2PUA2bC0+OGM981ctIwG/HcJgaTRDTW3orirh6YSXo+Wm
	 oCA1TYEfXdjcEUNb/N4eUc9kxEwLsFGKdlUcXARi432eFuMrtaDToXc4jrdS8q3JrA
	 Y6Rm7Y1JrpZne/ZfM4G3jQhRcYaXxCgAh6gX1Zwg/0sJNH1ZriV0Py3Lku3iSlvd++
	 AXfk+PehaGqZECH96N/fzdzln7+kGd1oeg5zDh5nNia8pugfxkTRO5GQV2O7TWLAmz
	 8DgsfZGiTcGCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ECECAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175964879357.29353.6626995103559097429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2178cd2d3d68a381b25741c2ccde91cfad1e03dd20be3a346a40d0985ac269c0
Date: Sun, 05 Oct 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759648793
