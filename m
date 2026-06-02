Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C855390C84
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 21:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780437274; cv=none; b=EUC20rbqgjeEfojosHFL+P97UA94NtHD7ES6YEmUz9KYhFES57EEmIo5hLNQXbw7USJw+jgcqq+Ie5WowpgVTyc5lYqUvjg8TiVq1ohe3QEyGjcRnioGAbDP4lrZR/dvITuzihVnaKbe8EfyPNj0lV9QWKM/yB6F0FkhoK2AQ4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780437274; c=relaxed/simple;
	bh=G+WnlRZ8OXVJU+RAFxiZbVz/raNTcx1x5riEdzhKcC0=;
	h=To:Subject:From:Message-Id:Date; b=u3JPye+NmUUyGS/IAC4Oel6iwdVeVtdRoMWDKyCZ0pb4Ry5csjOS10BILw50W5fI9uAGc3m27WFcMCgsNaCRA86O5dfhzv4LxFRL0FQ7pCbq1LjM8Yu0NCDTYVviwqwmd6hp2rJ/DSPNZIF92O/sT1IEgp1OTvDwnhKwAMMXQ+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Efh3UAs4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Efh3UAs4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3AC7C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 21:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780437273;
	bh=G+WnlRZ8OXVJU+RAFxiZbVz/raNTcx1x5riEdzhKcC0=;
	h=To:Subject:From:Date:From;
	b=Efh3UAs4+EEfm6DC+5HirUfS7j5SEl9DoubMb74hIs3Pfgv7QRNxi56pb8pUN8/hg
	 f/7DT63to4YxrPWpsf9yPGPwXh1df+lfHG5UY5tSdHykaIECwOuWiXyD1tmgpqtghZ
	 mRK2vdfMNIWqafbgAu5RwJ+1bDHTg5vStAXWYQ2qtsbgiwt0P0JJkw+ZYYRktJDD+8
	 Ud20d9DcGkIiaHFho2y479H/gCA3A43nVMbeUW9URr36RjRUWQUGdyvLDz5UZZhWNU
	 naX7HW39k82FfhOHCevaH46+vvWEPMSPJgSFWkpUsBTwp4MrqEpK8cBT2Er+qrnYWL
	 c2iOKeQdfx9cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9E9CD6E60
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 21:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178043727368.15944.4020720953065207935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0317138fce5292e9d4009c7e454fa3ffbe93a6607c55591d8628651e86308b5d
Date: Tue, 02 Jun 2026 21:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780437273
