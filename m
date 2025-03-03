Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A54A94A
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 10:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740998935; cv=none; b=jpAgol9E87Pf5/Wr26B6bWIa50/VRogEZ9P0sawzIJgWkx5X7USJTIMQ8djU6qCLI063RwCfSLwPnpLRsNzgHINr5VOK4kj5Uo6VYFfGiY+QyjQSHtMPDsJgGbPmD9kWX/kdOP5xyrlhzRuNN5sFDT5XxF+RwpnlvCjN+njIrOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740998935; c=relaxed/simple;
	bh=xVpbepRhePNqxZHcVc7QuaMoHxagugZaxuoKGjNztK0=;
	h=To:Subject:From:Message-Id:Date; b=GsDR+t2yTgWlehVGCyVOHlk9n0AkIhPWPXUrMaS+4g2uxY7FzI+QI+O/6hA16xYmq8sI7OLszfiRW0jrVaIMmtv28CJBBA/wA5pHQHMHJHDmax0EN8xWzRHP2I0WUFP1nSc5W5FDOra8uxwo6pMg30IzFwhRLtB7gRgx283lHAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRJtULe7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRJtULe7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5B4C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 10:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740998933;
	bh=xVpbepRhePNqxZHcVc7QuaMoHxagugZaxuoKGjNztK0=;
	h=To:Subject:From:Date:From;
	b=GRJtULe7boXOxqzGX9km0tuVGQkiGk88HSIfmXJijluMvKNacOcK5F8nuNkYg0Y7k
	 7dw2wsPJtvHjLe3ObrULjgZLIWJk+FxZx/tbwqF8WuBHkX4ooAM+yP1raGdeOu0c4H
	 2O8jMglpYr7SjXYD0RnFN+0t5UZ3vlyJHZgfo5LAeH9EVXURPgqGsaoX0CKBRwvbbY
	 lrS6neXeIf7BrBvVz+qSfLEInIUlFOCMQzQEVYN94kUnUqnzfMMKAGLR2wt9FvScR9
	 TonaN88xqKcyIUUeXtzER4WcvTd1bDQftSEODjrGYoFGsh4o3RjB7gIs653TImKvdA
	 eTT5KawV6Rldg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D15C282C5
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 10:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174099893361.10743.9102933529980797257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb6d22bd34b091f1266511f8d0a3b95b74ac1738f7ccc9d1f8fdf33bd26f4a28
Date: Mon, 03 Mar 2025 10:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740998933
