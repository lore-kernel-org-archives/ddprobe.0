Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBF62C0327
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756225196; cv=none; b=Fsit9nY2vXK+2REzuy168mQJmYWVEVeXKkbEseaZG71q6XXcFJyQQ3QsFnmh42LvtYyK6LGXqpZd5PrGeBPoDPCueScqI4/KtdPiEjVPikgx1DDdJZc5k0SWtesXMiFgkl3tLf9zMtLRyp0HRW4BovJo0MhmgF9CYYQDcCWfW1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756225196; c=relaxed/simple;
	bh=RctFKBnN1GUNjqUgbrpIRrj1X2aQ+pxbUtHQdlodjxI=;
	h=To:Subject:From:Message-Id:Date; b=jtcwtDEEtdFNItyFJVhveCwg0+x77EJjiHqDtRe12SXsuW+BClWPJTSb7QRGRRZm6asGV7s77iJ3JzcJA2E5EXGZVe1mv21ucezC7Ln3HdSMd/VyUhQ1S9c5w8D2ZRyf/ZCwy01Z0JR90uI3uKCKWJrUw1+GY245fiv1OxCcWIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kA0NEYnp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kA0NEYnp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF39C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756225193;
	bh=RctFKBnN1GUNjqUgbrpIRrj1X2aQ+pxbUtHQdlodjxI=;
	h=To:Subject:From:Date:From;
	b=kA0NEYnpmuUZjnbd5vNAqgwK7lxWJO0f/ceEIs9i7PaQOAYaNek2Y6uiGF6HsaawB
	 l8Fu0aYmCbY5OZcA+GFehAPcn0v5z2YQdww4wUDrcvvRpK/t9p8pwBabLUx+ZLiTuS
	 obkcXk8LESs+5C9w0TaatMj2U3tod6/8HiEUQaY0/8ZwRtBlGodyq7cMbw45vbqtGI
	 oP/PNYBc7iMt/r9OZwG6PvrUSpigEoMzKDpOb6YUeh0hydkOwz5wjU8J95JMIR8Goa
	 be7rNZpIa+gBSvUmAXJ2L7jL0cZxFvhZKbkAPeVzgy2A9V2hBk+nWQB8VlSLx8AYxa
	 VeDPuUeEkoh8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90335CA0FF2
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175622519358.27189.1959662869691327192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef8ba76c68bd111037bf8227c5c153631c4f66c210861f46355238cfa42dea4a
Date: Tue, 26 Aug 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756225193
