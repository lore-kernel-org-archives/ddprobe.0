Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344B1136337
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747115394; cv=none; b=Lr7ak8uXgHQBbLy6eqrFqYTibVTcalZvkAVOBTDitICORePYrecjnykLzKKN+pjc4v2z6BhtdMmhBGfD3R7FsddGTVlnk/xCBvWyRGzdde7c6SsI/z4IrWBeHWERCskiZGj14/qbHlfn8oNr3ML1Un8r0q/7KF/UwIT6AB07oVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747115394; c=relaxed/simple;
	bh=tfZu3eal8g+dMPeSFkReP4cmrjvEqTBrBljU6PoTSJo=;
	h=To:Subject:From:Message-Id:Date; b=bkHq9nzlIAhhfIPZ99IfAK4N+wXmov+GtE6AMzD31U+rd7hCtirEqZviw8B/EdwHbKC9txQmFlhQv4yCuGTkMUOvI6S4Y3f4wNhLnU6cUpJ5LfXxvm+1iOyiR9c5eM0T47uF63W/vbc3SQGY6OaQfq1l6YdI3DSAz8wpKHrOaWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kv02DDJH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kv02DDJH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD8BC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747115393;
	bh=tfZu3eal8g+dMPeSFkReP4cmrjvEqTBrBljU6PoTSJo=;
	h=To:Subject:From:Date:From;
	b=kv02DDJH6VROSwf4GFqKGemzSEbTCKOxXChHAwWSrFNaee9rHwAuna/Obh1rf9vU0
	 u5F9ij6dHU+x5/caPK5z0QGvaVxY9nKKL3iiNiZDYflEiH/1Q6c1PUDsHfvNAnzTWd
	 E0VVJfDv37yf3QEfvXgC/IB/tcOqSv/UwzzI/HxO7iHDcbMK6m9YLFCijOY4z9otz+
	 7ITCdxfx+n7KIVo0a32RcyKZu0qPs5q7XoKRmWqTHLaJQUUaKoUwR9e3vTKh47Uh+J
	 3tOP7DXqbX60sazPMQ+zLvQ9/5z6fLJx4VLsZLb+YAsvX3bZuhyAVqaARXlL5Az4cl
	 84vxuKE1jvqWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEDFC3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174711539358.1856.15434526253928300517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4b6d6244542007bfb2ba59b161ef8777bce7d43485a591b0d1ff9c6a999551a
Date: Tue, 13 May 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747115393
