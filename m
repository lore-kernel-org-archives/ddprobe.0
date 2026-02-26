Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168733ACEED
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772114094; cv=none; b=t+tdND4tFoc1FINvPSv1rAOhreqbpL6wPrV9Ap2OC9zM6jKe3ybd2hXJuGrCyCFVjgf1X/8UI0Nbc3PiU2FQ2Jm5XX9ThYzwJGCmiOCq71irEN1DE886xMMS1Kd4NSIdWLucIL1ZNPNAnnEtSOwYcUxg+DmnaaPnVCiqVdrTZrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772114094; c=relaxed/simple;
	bh=C5pDAfpIgb4S5bXliG6hHduAUvOEg7yWO7SkTaatcTE=;
	h=To:Subject:From:Message-Id:Date; b=KnRBbzlgeXfzj0cl6BMN/Lfe6itAgcdZ5qj4XXCImBBj0oqWtTeu0FCtzZJtlBJy+F0dQDEOzMTiznKKKHyX0BMqjNMR4+VsiT9/4j6X4Rs6M7LaPWnCoEEiaUmawZYZHV/WqdZ7Kn8cFHdcF7gYdchTsPDUvhe0hrKwu1y1ma4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKkLt5Qo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKkLt5Qo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC877C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772114093;
	bh=C5pDAfpIgb4S5bXliG6hHduAUvOEg7yWO7SkTaatcTE=;
	h=To:Subject:From:Date:From;
	b=AKkLt5Qo9Mstg0mRHeWKyqy4FoY7ywgqD5n5EwUFyuvC5lZVXZLwmOfL6K1T2V09m
	 /JmjAyVtGjMBK0P6HgiphArwfGNhC3QHtFJepslK0rDvplm2nZU/stknMmg8TXUpgM
	 wwynugeTJh0p38lCuNvqWYhk50rWVWmcdBLcf0q3tprk5PQVGc9ngOx0k48OTD27+Q
	 nMKj/pIZG4CK7n8a6ouM6OU0iEZpaLojzBxlk9//+IzLVlxWWDGSQq7NWnh/Qauvex
	 sG0Q1x8FgAa2LYac5a3zSc7xmEGPhVfGli9hDaWWMhy0HjcrZLWOuVlkMGzueoPw7R
	 Br6MX8NyQCUVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A661FCE085
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177211409361.26930.15719926817749974066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca3a3acd1a75bf318aaee9128c7511873acfac97882dc76f6aeb507c32ca4b46
Date: Thu, 26 Feb 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772114093
