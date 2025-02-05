Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4657F20C02A
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738736154; cv=none; b=sxx5YyeERQBuRzbN8y8cnF/YyIfh9NOZ9PfWDTGJ4KUt2J2kBw7OB4w/eD50pvIOQWr1vnmz2roxDe5SnjEFZ4ljLYugz2D6V2rRjar4XrBvB3aRSFe0BqygNMKyPPMto00slwplYD4YFaMjzaV+AqFqOeqTL5+SStsYg33qenI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738736154; c=relaxed/simple;
	bh=INc7lE4czS7gbXlfanxFJ4yJJ7n9xlowV5YQr47hNC8=;
	h=To:Subject:From:Message-Id:Date; b=ihqVo4lIsaAWUddDm4oLJg4hCWLd2slKUEcmqNCMbobEwdmzSgrBDIlcExgznTJ8QowzX32u8QKREcdxUKTjdrW1DScZiCSnUmmGw+ZyP8ZB3AVWtSsKDCkPF99SZhSJZKnAK5zDADT7tdv8FoyJun7nWwWGwI9t+584lSMMPQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0gHog6d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0gHog6d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82A0C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738736153;
	bh=INc7lE4czS7gbXlfanxFJ4yJJ7n9xlowV5YQr47hNC8=;
	h=To:Subject:From:Date:From;
	b=E0gHog6daI8XAoU2CEyzpzpqfC00nCYSQGn4j1k5VBvq3GSet2Oiabj+ENBYo1hrJ
	 86G7JLUAUbION4j6x0LNrLRZoiCdjenuPbkx95aU/XwGz+x4fEk8PeRo8TAtlQV4cM
	 1CoIS+LvhBaR0snkdCe+eHxOAv1juy4+Q7dm7xL9GmjGYPo1UJDRNbunSoT4LwHKOz
	 bP1pRSJsWFTUv4oubfkmmDfRzFAFd/TsusbLlDHXs1/vZV6Ea+euRB7Zcl6GheVCOs
	 7qW9bhE/GaanWs+OACDKHHsiFjGhznPVmo9plxWkUgXCIX8g25GlMrwPTUtGwta8zl
	 mQL7ViAfMvYUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91981C02197
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173873615358.18137.11002060639074298621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4438f3433334a8b111780c77d70b4d2f637329df98b29725f423e47e7f2c31fa
Date: Wed, 05 Feb 2025 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738736153
