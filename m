Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205DB1E571B
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753953594; cv=none; b=QWurOZoWNzjJNHil2FLY12g2iCIgR6AOA/v8v0UFeImgbGv69LWfpiw44F7iKnPzkEIlWdZ7Rdt1B+Fjso4L8oOqwT4PR4ooj61q5tk/w0oSOT+GBCwQ3qxp70Ypgr8MufpGjdR7fKPrP/dQGNGCATsaylLj4xqoBSnZ8WvH8dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753953594; c=relaxed/simple;
	bh=PesfJ7srQCbbMWRWIDhxDFjFJzJus3ksEjbTgThFqEo=;
	h=To:Subject:From:Message-Id:Date; b=ETYolxrpNm/Q/xM3Rr9D3FZCzWZ6dN57VR2z+g6+QozFzNlUZg47uihdtH6N+0Lx7ScGbc4S0mb2gL9E8G01DW/YFB9qnY2nNYrz0LmUOA5jxW2T6/VAOetSyrUyOkVdwRQkTyP6Zm/U3WI9oljAJGC9wmk42F0s+BajdwZc73U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aGwqwF5w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGwqwF5w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9D2C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753953593;
	bh=PesfJ7srQCbbMWRWIDhxDFjFJzJus3ksEjbTgThFqEo=;
	h=To:Subject:From:Date:From;
	b=aGwqwF5wGpuDgWelfxDEmubFR1pCs7VfftZseWVwtXibWzq2ptPv+Q1wbd1F8AM6a
	 Bv/0gFXxdBG7ddCcsE41TMpkIVjKJP2Gc+W8oA9loMwtoEYK0JCq28Cd0mZUOpoeWf
	 CnnWYviapPOhDOjmbDNKSISmCa4+8CbeHe510nK+c1Kf5zc2j6FOoZzHrL9hba91DZ
	 dmmo1KNiUkocO4CWTnyyu3ORbGa4lUjCu0mu+cLCG5H1pmuEshD5tR8KlgNxdGMoOs
	 cxMjpqvhV643Uqo/mJAeeOosceL9p6M+CyFs2K2GUed6wTT4gFbAIWMwGujdub3No1
	 W2SQdV9WZDMwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E924C87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175395359357.8561.9994134809059333237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36ec9d5a85705bc7fe98f3f3bc6c7c2d3c95153ed0d84d8e520ddfadcec19193
Date: Thu, 31 Jul 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753953593
