Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E30311C00
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754928594; cv=none; b=CifnYGDsOaqx+CX/rAmMjU7P78Lsy6bwwH9jPk7rvl7AQLwgG7S/IGVnvu3PMUkU1nIESGnl7fw09+FqdRa7rKClGQOitg9hlUcDw2X/iXp937aU9RWNa98mTXPy0/9Rlp5vWDgvHdT1rVP1qzjFqDIS66SRKFv/EPBSPtu3LBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754928594; c=relaxed/simple;
	bh=OGC959p4Qj0l9d2paSc+BZhUpNdAvIdAI6Le+pl4VfI=;
	h=To:Subject:From:Message-Id:Date; b=fU+xdUSJiCrfeVeTII6od7ZJvSVkI79PTjWww7gfgi0zAbM0olEtjP4UNaen/nFoU49ermHKlYZH9KMqNozW6hmBywXiwZ+3MJjSM9XA1uqV5cYnIyYIvp7qOZ3n5nsLfe0aODm2oGxmFLKn1RU4R2h4Ou1auwSW2jt0GzL6tPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k3ZJBj9X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k3ZJBj9X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D02C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754928593;
	bh=OGC959p4Qj0l9d2paSc+BZhUpNdAvIdAI6Le+pl4VfI=;
	h=To:Subject:From:Date:From;
	b=k3ZJBj9XoqFv8jvX41ngCinq0Rq1Up7yG2r2V4DHYNLjcda6p6ttiV43o5FKkv8PE
	 l8Ram/B6jIwLYE2krniKHzO2UFtCQSHV1Sa/jCGSYvzWSxgYypB9M7VJmw8oBkCDtk
	 dl+tavgwUxIFPs5QIjh4uG25LlqLV1fSIyh7M/fxX8Jwkl12K80dNkl7PsXWQdm+19
	 4pLsXY3pm7VNjya2BSPPfqL9eUoyywjTYLjYvfYtN8JHcGcxW9NJ9pwdHXSV1bMpK6
	 dUC3Dew1S+otIqY/FOIVcAsGhQUgHWpuIUfFlWyKqtL08sPaZRKx8UkFccz1Mo1nh4
	 rf1YoPsajeelQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F1BCA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175492859358.20603.157679695468577881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1149776e9b361a7595a27902e1c3daf8883d52917e919cec7617a951c0745c41
Date: Mon, 11 Aug 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754928593
