Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4608E2D638
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736907354; cv=none; b=FjzVlZaYNkMqGLDmn7m0DK2ZzfO8qBJsm1dmB83OzwdnzyVsxTjqVtbi2WZHCfXLMNZYrxvdKINIa326Wi6/PRbCv5BXMQFViADmifPr1o87qW+NZ+ZEpFFXzw9mP0jwu7EzzX1jxLwDYyQF+XamO6cujyrn6kud/Q01k//f60c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736907354; c=relaxed/simple;
	bh=leWRZcqMoLxR/nyPCHX5fvTJlBYzxwPS6aHF2PVXvsU=;
	h=To:Subject:From:Message-Id:Date; b=g3xvd7ralinmYB40ecPBfLZRzgDx2ZaiwUo2bMAqxDga+vvM3Wzj/2Vn2+fpb2t9c4pY1bAIfaJSTHjK49HGWmrV2a79dPQ4Uy7M98OY4gjJ1ZQKyJfv86fbS7Scs/XRPrnxVqvFA9NaEMB8wq373ewJK/dCZ1TDt8rLLwzc0LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DS8nkFE9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DS8nkFE9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B41D8C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736907353;
	bh=leWRZcqMoLxR/nyPCHX5fvTJlBYzxwPS6aHF2PVXvsU=;
	h=To:Subject:From:Date:From;
	b=DS8nkFE9UPnAzbx9//g35VrqWJPHUqoAPdIWtliH8MnalGV21gp81G8ew82MiHmS1
	 T2ygk2uDAkZhERqxAnR7/xaquKzCG9EEj8HRAyXOHU0cJG6kPDsKzik93NFSLQvrTs
	 PUORbN98cWj7Tbs62ueGGvXYKcULBAnduin8WQ3u6tl4S72S3me83W5kijMqC8Fod4
	 bWrzb96McIbfhUlOKdevZ+apcVZ62liOJlasdYk1mCdAKkOGJmsK27m9g3/UkkjYK1
	 8jx544nCXbTeiow2dO2x4Y5fg0WzP4XUkkfaSa79leDlsQ+vDVqU627IfT4/AArtQM
	 U4L1OeV9HNYEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC5AE77188
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173690735363.13640.10480695952449251609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa2caf7853f753efc04c86a7302b28a1a7ef772c4307c0154355fa5d128da43f
Date: Wed, 15 Jan 2025 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736907353
