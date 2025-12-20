Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265C91BD035
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766259234; cv=none; b=kFkJuCbakBvVQOlbDrlFS9k15UFdt1qhOx/c/EqHfNQcC7FGKBvjI9N7OFjDcXKHBUiuMcY2pXdbJ1CHYwhHk9pjLCVy/u4MJN6u1SSaZDXVvM+0epFMMGk8DZlVBZLzUmKK5bVmvlboypFSgTvQW4cZGLwX5Z8ldgHjkGe7HLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766259234; c=relaxed/simple;
	bh=s2u/j8GRnB0psDKSZL66tUPn1vbeTdD8gzWPSm98Rcc=;
	h=To:Subject:From:Message-Id:Date; b=MuFoBIQviVD71FvIFrTJ7Axagi/ANgu1ZDrtMchZyYbrHMSHzZGXIyHTL1mtObX3CNxU56CqC7i4yNyFKe/TUPcKmbtdDIbbNIMKjNEww7CS350Eevw0VosflbTp4XzZ6JHZv/42tAwDvVUNt7L98fSL9sfc+adpp8B2YfZvlLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G39SxFh9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G39SxFh9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F7EC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766259233;
	bh=s2u/j8GRnB0psDKSZL66tUPn1vbeTdD8gzWPSm98Rcc=;
	h=To:Subject:From:Date:From;
	b=G39SxFh908NbnLxkfrUTzVX7y3XA9kLCafVY7wCNIaRKnG1Fhuh1RRtTVNvKXZYhB
	 VMTw1+aGRzb4XR3C2WEycte5p2E6mXEmHHywlHTWubSCSRvCLbdzpcDQ904XMyHimu
	 MzFgamoisZpdsu9MZe3PPZ/UH2GIPkL07UTGQK0+XAuE8IC0lIJ3e+iRtAZ3Cklo21
	 YUnRVRtzs9tFGjDvaCML98RKH5W6WZ/shC9oSomh4foo6Sg4hnt8vcWhqQq1gQoxQz
	 niE6rvuvrPS+ZcISY7F0B5WPVc7/ZhmwC/Avq6Se1NVTmg4PYwY81qzDmdDTjafGdP
	 eDdzZehnRscXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CF1E668B8
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176625923358.12505.12600413177881745747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab6ed93be19e5f9097e3628956143f760b02e03f1e066ebc90ad3964f04bad81
Date: Sat, 20 Dec 2025 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766259233
