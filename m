Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD431FECC3
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753532394; cv=none; b=VoTliPpa6fX6T09U2jvnySoFaBrZ+iWJjAjzlSE64Nivk0CqO/yyaSX8+0bYrE6k4H2WgHzSQWSmYG+XeQkEsJjwb63i6cLRSt1ivPftZKyxTN5Zs/ArPKlSktAtK+F/FPKn/r+9l98Pt9mwEsuvT8bAPRcPmvCytdJPHvtqT44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753532394; c=relaxed/simple;
	bh=w7aH/MmXz+DcLdZ2Tv9a4b6v82muMyWMQJ9LatTuRgU=;
	h=To:Subject:From:Message-Id:Date; b=HevP+swTuyRUVd7eUGqygBJFaB1X5pf3pmI7YeSL2qfFcz5QstLInhWRXvZEy/Lut0ns2QjpjCrFgIC/ktqpiOFcXMrcAQzfiPpQJya7KbWvWZ3bPvAdsuGoLqSvZPeYv6r1Vp40FUOv5BUIgPKn6+7CIQHhp9tlna2Wjgg7eTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CAaZZzHX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CAaZZzHX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0927C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753532393;
	bh=w7aH/MmXz+DcLdZ2Tv9a4b6v82muMyWMQJ9LatTuRgU=;
	h=To:Subject:From:Date:From;
	b=CAaZZzHXaG1KjI5gbxkb1hDJcrzjSU1tMOZPZojzIbcel+TFekiPmB1vzI/yGB7MW
	 9S1AwAqtt7QE3cKZ+n5C/j8oM4XPllVr5JQRYFggjjT7maieO7Pt06oWA4ZjfZxQMh
	 rqKlcW2JEB3mL1asvB5lAgLDidMzID43LhcuDs53AWSZ0q9TaB3QgD6lKPZ3hWrABx
	 YlayMMWZ9+9b6E88llS4ClyjS+KpuvCQ5u/CHRZW7n9HdFcIke32XW8PaXL0R3Ma/m
	 C8RQqpDXmt462XPjYGM5FxH8/rxXu53aQlumApYp+qFJlkgmaLcqznQmId3E8DjXR8
	 CeYAzLgYb5ckA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB95C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175353239357.15868.4349556381405471058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b17a107b9e27fe721a411502d72edf4488ea56c67f15c286dcc6fd5031cdc525
Date: Sat, 26 Jul 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753532393
