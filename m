Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6B0A3CAA49
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785570635; cv=none; b=mUmMBPGebilUyrb6qERAgbpp/o/lBv4CIqRUfnKu52pyjsjqhvpD87g2hz+R23Q8ld9OnnAhscNUl62qYvrTgFaUx1968dwqF2YyCFHbdzE9CGMws8THmloduoNIoUj2db6gyST9t5rv4uFErjF5Xd+vUOVTpRGWvFr+/M6mcDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785570635; c=relaxed/simple;
	bh=P1i1GOrgbdz94Q/6XbilYaLJAQsp0FFW2D42YG5jMkc=;
	h=To:Subject:From:Message-Id:Date; b=ZNqiBpWNF6WUK3JnaWuP3WQFQqacq2383Jv3MB5MYvM4kj55ZhtJiAKnaKCrJPuyOrery+yTnKg0H0C+5nIf7qLgLaYfY90Kdm4kCo/a1DgxRu//Xwly/EYqxR1SaiJBGl3JMZEaksuc5zHtY5cc4ZmaZZA9LN6DuFND2WmtWfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXvqFwTY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXvqFwTY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E265FC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785570633;
	bh=P1i1GOrgbdz94Q/6XbilYaLJAQsp0FFW2D42YG5jMkc=;
	h=To:Subject:From:Date:From;
	b=NXvqFwTYI75q1KQe/pbzz/3a2tFqjs/nGNZrQIOT95dpuKuaXAie1GZfiV4WOdUwh
	 8Vktib5gAQYTZzH0dH42wFlRFf1xiWpAJBdoLBPE08OqmlGBQ0akACsUuTfguBocJP
	 k/gEtoIr95cXgufLmcbH98gV8D8xO0JGS7UYTZkdR5i2Hv5zkMmUJAgmQOPQvo6xHK
	 O6ECi4BgMgc52Uw28dkeCiD2mnUuIENchaOXsd7wGnefSTGc5rlwZEjVomq9QG43Qb
	 LchfD9wTIC+c5ioodS+FlUNk9B140p7fDPKqrKFFJpAtWIZmKc5qIBB8UV2OVLuXiW
	 RslHbYfP5APhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA3D0C54FCD
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178557063373.18284.17670710426183310617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5730ac0782ac3608c9b1185cadca5b9fa81f846d2521641ce548fb7b79f709ea
Date: Sat, 01 Aug 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785570633
