Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325BB1AAA1B
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758476394; cv=none; b=CYJQODXJedZ67RrfGzc+pHKn8ilPCD2wx1Y8JE2Tct/ps2Jjr4ZhhJvdKPqdS71oPNWMij5Lfs9/ENSIxcbseLn2xGG969jbrLXAzUd5yXvcUfbalg296TyeibQdVKtLTudlIl408pYsiS8gjfiV7Ya2iOIBbvWNtvwDcyD+2Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758476394; c=relaxed/simple;
	bh=r8axTJ+yfbZ+aZrKtyIxRPhDob5fKcYEB3HRyJwvU+8=;
	h=To:Subject:From:Message-Id:Date; b=bqG+QZp4sNJAge+IxjDpuu9pUv18K5hRkgibrx+t8bCGId2xzl0PWQu4OCcbG89eE+cT6wkimIMDc2zgEWXE+KG8UXGLHu6JvksNhxpXyX0E+ppzM+63D3kmkWE77xPFfwke7wc3ITAU0aAFrwn3Fgjy0Iu03PML3c2kJa6wdpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rBEzKHIn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rBEzKHIn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB901C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758476393;
	bh=r8axTJ+yfbZ+aZrKtyIxRPhDob5fKcYEB3HRyJwvU+8=;
	h=To:Subject:From:Date:From;
	b=rBEzKHInsL4qNyq5NrvJD654SKlUdXpQbQOB22CPDOvSDl20C469Zz98reEb5CI94
	 FQ0mdJUC0ZNye+FhcSTfKPUww0qKtbs8qJn4aeIW8Cvnud1pO2R5lL1mxckPZ6N5o0
	 Sw394DXqMWvW3SZgiPw8h7y4TiM7a+cGAdMkVC4R2pUn6b01M+IZ6SQt5c6l4FEzgd
	 rNDReNuswZ3WvLjXm6BDp9at3RJiJzgQqKxQbzmmPBY5XfTGiiIDtfscUS1W2vl/qD
	 sP3Aa4/G3Bt5pL2bHakh4Ag9VIV6egA0JB1OUS7/3OX27/eUXlrUMdQvIBzFE9w1qY
	 UDLQn4KnlbHCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92246CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175847639357.19830.6943461919678809910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fd5728b7ec458453779a193c505f718242c57341417d2a7ca8153fafee881dd
Date: Sun, 21 Sep 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758476393
