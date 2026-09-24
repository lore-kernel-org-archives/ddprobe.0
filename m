Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE264825B0
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790262634; cv=none; b=FlDzvcpyqGfWhAkLcpGLPdXlG2aHZ6v+l/Awn3p3Du0RcQh+J1bUFUDahF1S8oljggrj4JB0MB2/Z5vgXkoWsLEUGSWiK5Af51Vt2ZKQj5XDdOr1kpBFGTm9E9NsJY+/s4IH8LwdAKkmaSNOvn7ZoFtZp2gUL3vWS0i6MEy7e3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790262634; c=relaxed/simple;
	bh=G/aJ08hqlDEC+YzMyJFKzKktj63MJD1Ojgwh6B2bQMg=;
	h=To:Subject:From:Message-Id:Date; b=uEfvo1N1rxrboRfMI566rDfqX0tTtxwqmJfKseQqOfzbYikMPgfsg+qMvROKKQ5oQdm4ROZ6mmtvzl33qleVqUh/UmqiXAqunB1Mrj1rCw/Gyx+sYJfOCX5OjyOh1u0GI7AF8ay2GMSq1/ghD+A2wEIPSJMYVtUadFyTKByRqrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bt2hy+OA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bt2hy+OA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D70C2BCF6
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790262633;
	bh=G/aJ08hqlDEC+YzMyJFKzKktj63MJD1Ojgwh6B2bQMg=;
	h=To:Subject:From:Date:From;
	b=bt2hy+OAZtbelbLLn6Ms19nsUe8oDC2J2pcaEN0iHGhWtWCxAfWHqarOypeBVmkFo
	 EJ8sKFUQdCL5fQ24l0c/rf15H6iwB2ZjzZJUQNEAGslEl0QarRE/zy8/+z30dpgjnN
	 1yLaNBpg2xCTehJp2YV81bVvJQXVJX4eLNYAlvkkn/9Q919DlOae39x6HDUkcbBX9w
	 tdZ7f7D8cB/4VUizZ4+ikmqc2s7Ee+Cvx7C1Zu72YUubJtDEaIDQADkFEUVFjomaJ+
	 Kg/1E+Ebn/aUbdn1yR0MXoKP8lYlUBKWbNrtr7RXm3iN3+0RyqcMJovZyKzqugMzui
	 ErzJ0cakJVgpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE66AC9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179026263370.5854.18142534963909789498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6073f56adee3c035a631144be9ce6b40da923201249fc80ac9a42027a47a3a5
Date: Thu, 24 Sep 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790262633
