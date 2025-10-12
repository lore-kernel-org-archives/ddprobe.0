Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0A81EEA5F
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760261394; cv=none; b=lv9ESghJyKJfBEW4smTr6Nf8SwaF3nsBEMxhsZHEN5fUOLIdT+2pea2L6NJAmeJwLcdsKxKbS9dWzfctAE3hyELs83POMp0k3ae2p0zwrXyuYibJurxJUpaoIfo13Q3sRMwXI1adn55ngYtZLU2VWZs46KQDv+IlwkYMeb97xO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760261394; c=relaxed/simple;
	bh=w2JLb08Gd3nicY1bCXprZC3ayll4JcbilH6af9N05no=;
	h=To:Subject:From:Message-Id:Date; b=jCtIhTYdQ7sKjZaRl4zY9vWCaxuIV0FOKgtn8cgKyfOq71U4I93LrSXx/U/TSppxStGOgwaE6OQQNTDcKdhrz8VEJ8yFzoz8i8975XYQFPiXrse5qaYPMascUhsZDwUlgGGCMphos1p4XJQJWgkHoqX2tjUemZeMjW9MpZBoC8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DcheL0W1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DcheL0W1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A921AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760261393;
	bh=w2JLb08Gd3nicY1bCXprZC3ayll4JcbilH6af9N05no=;
	h=To:Subject:From:Date:From;
	b=DcheL0W1kQSLwxaQJKy8xtSaAZrZFq1TItmMZ32XmPBzCggq4ISaWolLL5XIAwQGB
	 qn8q1jTD8clUCsyxfS0PXoDKe1IUQ4JzT42EejRXNIwmAm5VIwWeuK6ynKObAq9w+B
	 SwtxIJCOdq2SxmJ0TZrDtL7gz0yAjbhl8fAKAPXvivJ8H0K+0MI+6PKWdPYPysdSkI
	 faNxznA8ae6TE0Fi7bLA8V0BiJnBdKOZwD8ccUefoeXEC9jhAP3rxVqLBPkic6jvu6
	 d3x2c/j6iFioAZ6dliuj37UH/1X3ehsPZYW7go6uCejbTWhd3dkOzvnXKxbLM2Yk3v
	 vrfzeY8ZtDycg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F36CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176026139357.1562.13055132473182889906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 028d2eca17746fb6ef04ed36e83387072a88a54de288723f67fda001a904d529
Date: Sun, 12 Oct 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760261393
