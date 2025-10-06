Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2144A27FD51
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759759194; cv=none; b=Vk48xW48kEWBef9zozK9/B9Aa9YPuKqfZVKtKb4d5q2aF99sbg0QFWUIyaRh5pyRnVGgphIYzQKuycSWWm6jyuro48yTH0wdWAMntjGKcT9DLqrn7h+4xM5NOKrRDkJV1K0OYar/PqUwvuf/1q/1luxWxI6pV73eZDKE5J9dr2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759759194; c=relaxed/simple;
	bh=3tUUl+yJGssBYLppQrajrsmJv8x5AP3MVJhGBPBGC+s=;
	h=To:Subject:From:Message-Id:Date; b=iHjnXu1Sbr43YGLl8MbfiHUwOryYOixERbAHocay41bX6Z39ArKWNq7uJnFgdLp/5Zk0soiapG3y2inAPSWYSI90p1986fy9BT8NjOS/+LF+FBEwqyvcPR4/ruwnoagd5EcNoj2jq0TjSD3LwKGyI/EvgYuHrReY+K18b05gzOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DOSmmghA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DOSmmghA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1294C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759759193;
	bh=3tUUl+yJGssBYLppQrajrsmJv8x5AP3MVJhGBPBGC+s=;
	h=To:Subject:From:Date:From;
	b=DOSmmghA60ymRQOyXZEFBSYQVlibZzc/8KMJMOIc8v0fdVAwQAB35nPWalEL6+UZ7
	 yFk2PDov8pxP0DpukuM1PlbwqZFI4/A4HXyW+1vcM39sNZWdSCwjcbg6cQ2y17wQg1
	 QQUqbLrdmzJnEFc4k3k3mhlIjlwF6V57hMaAL+OHkDLlDFXYxFIsWkDPWoC1zKb3Jx
	 3eh77vbqsKFf8cA+m5+LRJdWZwQ4txGc8NyjaA9ki5zfxFGdKos3ouRXwGLl781R/Y
	 6duGygYvfHbPu9bN5b1myq3Bp8cRQlBi7CvBmQz58ErJzocOp72hcofeSOkTqfSoCL
	 XI2ifbrY9mm3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6B7CCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175975919357.31610.10439124939662013677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 762f7f659643c1381faf279b78f32ed69aec10968b7b1e7263c74fb07d7a9361
Date: Mon, 06 Oct 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759759193
