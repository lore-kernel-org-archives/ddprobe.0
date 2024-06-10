Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F09D823CE
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 13:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718025443; cv=none; b=rdF3bxyxOY69q3byeJWUSKhhehbWUeznv50GKAwvPah1DjEKYl8gHbk29EHNXH99QJmBwgZLttZjczoSjm7F87xNe14zuTo5+bdWveknmbKoof3zTM1Fj+YpW7fdyKWLihSKQlISw2L6MTWldsUxO/KTqb3fgzxMXRSlU3bgnNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718025443; c=relaxed/simple;
	bh=Fe+M9SLRRDmNLJ1KbKnggabmBFDmTSaut0Z18HOZf7k=;
	h=To:Subject:From:Message-Id:Date; b=XZxg9zg4fV4yjSxSmS8Qj32zQxjF0j+KwYV7RVW6NNgB+m+OyRW6NZMrCFEkrW42vCmQs6M2F2IyIDg6IlPe/J43yyVQCkDrl4B+sp+eJbvB6BpwNMdarfiV6fuNMghIWvSEinRJNnlkdpAH0ky4eLQfERkIu8NLk8LL7ZskVqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpj+Mlq0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpj+Mlq0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33F9C4AF1C
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 13:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718025442;
	bh=Fe+M9SLRRDmNLJ1KbKnggabmBFDmTSaut0Z18HOZf7k=;
	h=To:Subject:From:Date:From;
	b=fpj+Mlq0J0ZfWIouSHu5NlqwzK9arCLad2F25wRJ2U6tSW1VuoQiR2xy9OPbWDL4a
	 gAon1kcaTnUC+F+NbCXr29MmW5FZ+p7S3l/t8pwd5c7jHGCurbXSXdK1FZPprMVUFq
	 4pF1FAjkQGEXqk0p6PIejtclJkq5iGKGbprSlItezitpoV6gdE6/uXiP21N48Dc0kt
	 HpV/c8r/LVYk/1CLIGcTbJ2mKPQjw36+x5inAuApdj7MkV+aXGITPBJe5cJWl1gVLP
	 V9X/LcARakY5fUR1xR4k1H7jxFQCsg2y+ap3uP6aVJSNuTjjiUGw0dsVHJD5Hn1ucx
	 OoEwVAIN7mlyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C21F6C27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 13:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171802544278.13013.7069572121033032287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59402b466997771ab80f81af62f6c210f19bd8f4719679f9266da9e5348fd80e
Date: Mon, 10 Jun 2024 13:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718025442
