Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C4B37189C
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 16:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779382354; cv=none; b=AIdPtqEJPSzZcjwsh4s8dXbYXU98CT6paP1DLtjUPgF2RJm/T1As7MH4HaJLGiz8jyeKvg8xw1pXbEEn2ZP+DrQiigJjAuC0qhNwXI4sht/lP/gbSpGqN/p70GPbKNp2rXCS30Hc5J52AzWa5nqiqIgklIo5ZKhoNPiCggrr5B4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779382354; c=relaxed/simple;
	bh=POc0/5zqmE12Rytu9npGTcdyTLXmUUHEpPOgA+6sixI=;
	h=To:Subject:From:Message-Id:Date; b=VsjOjvHOLbe0oeygb3NP6NuotChjTC9yDRr0XUqFuEWj/Sac9x9eAF0zKg4m7a5rdAL//uODjPbwz+Uj2tutfpdPTENct1YHEWm6L2m+xy6gge/CvOpGNLWx/rvyixigqZe7/ecPsU+vQdAC7/IdvLPszedoghK7PUlqSK/xX+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHvlWf6w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHvlWf6w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC44C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 16:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779382353;
	bh=POc0/5zqmE12Rytu9npGTcdyTLXmUUHEpPOgA+6sixI=;
	h=To:Subject:From:Date:From;
	b=gHvlWf6wzsSyHaEHQ0YS2B6c3E0XaZQIZGk4YxKKsKG4KsQqTtnYiq6AC2JAduBLX
	 kh+NYv+a3X8Rxf3tIXoImipLqYp3cp+rH9AQpqjGFzXuR+2nMoeQ3UKBpVHp4W4xRu
	 00gsoLyRHLdUvav1y6z2N+LdivPaddOoD5Y0Fwur5aEgUvJ8z5rSsiQD1kxtCwG8ZB
	 yCbktGzFn+fJ5c3dTp6cgA8KVweklMR8OCP6bO8oDy+fGLLYjoy25mgs6kY3QHQbJQ
	 GHJBU16fB8oZf+//Bcuo510GPc9PQziMs31e/Bp+PXGmpcvGB3+gDbjuQtgv1dX0Fw
	 xaMD0g1ET5Opw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87D0CD5BAC
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 16:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177938235368.13902.12412169510497961626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47437c9c9c6d9946c3fea7c83f369955238e61fee4d15dda197193db84ba0bf4
Date: Thu, 21 May 2026 16:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779382353
