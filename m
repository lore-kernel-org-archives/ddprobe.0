Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCCA2E0910
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766061234; cv=none; b=Ife1KvPhs+X+Kj7IsLiYlweuoUkNeR/214QB4X6WuEUSB2yRbLisI2Pp4hq0pTcxDXFxgTZctr/hUUx0OVsMTA5rpZJh65OCAgudjGzS7aKvx+VA5jHvqFiaY/xw4hWKP9ncB8AcjQ/xB2RLVI9ZAlCkbxdOZMSisVKzqdCU1bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766061234; c=relaxed/simple;
	bh=+U3nCsJqe+Afs7IC2xA1wdLRY1TbeOb54jQzktYmkKQ=;
	h=To:Subject:From:Message-Id:Date; b=kCJAPeLCzi1I7+hV8vkMF5bEKnTN9uiWxUhq4UQiJ5vXl+AgQx13UDtBX6pNklJKZY9A8DtnTuLXRRJaW9CfYpzRdt+4Kx2QeYdzSAkv9TX1ur4bx76n3DbnvA3M4HFx51iZUU2O6YKkiadQi9xtVtnQf3O1Q183kxUxeRWvXro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3TSX4LA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3TSX4LA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13AFC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766061233;
	bh=+U3nCsJqe+Afs7IC2xA1wdLRY1TbeOb54jQzktYmkKQ=;
	h=To:Subject:From:Date:From;
	b=G3TSX4LAEviIKPvs1OC0hHRascnTkmq7uqyP15giCOJiXU09M8NNGq4vFb/c+BmJt
	 3Dtc3zxLhgahezPtE1YA2C5XlhSOYz1prGHUVoxCQqAmgkTbzCZQ45ejkarTY8fFV7
	 t4vvC2JV1CfI+MZP+4LbjrxxRWLU324wlOkrN3CFFv9FLUGy8UlzNpJq0450kf3pB8
	 rFByZ3vVxy4BNPS+U/hu6GdoVrkTAp0A9KN3XQcfbyE1AVQoKj+8C+uXtldC/b97sg
	 1tLe6RsUJRLRc0BIPFZz05NyvIEu6NxPKpK8BepeUlKjdIPcJUARBf30USvuwM5P1d
	 4z8sZcKM7VtMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906FDD6ACF5
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176606123358.7463.12963876891201680501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 163e702ca535ccc40d9fbe0ff3a7bedc3106e064e293a21dadca189b15c4631e
Date: Thu, 18 Dec 2025 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766061233
