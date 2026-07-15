Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D103D5C32
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 23:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784156914; cv=none; b=T+3QHYLkQeplgxQUXm2QtGK6EgfzZFCIz0b1eSpntaC/JI9fBJDrmcUTqpJioCC5WL1gBLx7zeMjlYPfBliM/FMtJ5zQH5W5MGeef4ahu2QO8d6GfQpqEpibRikB/DMAuJHthDV96BFnNxs00ZsTYutm9KdF8l+5bQVKyBif9Ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784156914; c=relaxed/simple;
	bh=U2AzipuEre9Kjg+7dkEu++FL6tcGkb8kWXrEYcW3f2w=;
	h=To:Subject:From:Message-Id:Date; b=EXHPvk0zblics3D/LBZbUnfAlUYb3F2Y3MAqlCu2/n2WRGuJbgIqyuASP+EOXhb+QYUt1zaM/DiA1cr3bcTOeU0jGHW/+yiMBj2J7bgijHQzsLc02Y38mdRqOrgShb/0f/5QfI8SPrnX67CzR5KpAcvyxyCJPG5GOSWbvku0LU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnh5+QAE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnh5+QAE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA332C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 23:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784156913;
	bh=U2AzipuEre9Kjg+7dkEu++FL6tcGkb8kWXrEYcW3f2w=;
	h=To:Subject:From:Date:From;
	b=tnh5+QAEhUbOeTN4folga0SCDaherehzDwq/TjOH6SVs9Jv1TQ/O9Sp0JgyJtPewh
	 G1YAVj4N2iXH5viuzN4zTFQIs95QI75NqZ4j1QIGQFESexY0zmkVzgTELHLnu6GUMR
	 BXZkZFPwtD+qXXNCGBktULfkHyIgudQWlVYJfeZpcBLOoBcO4yidcXIIekHh3tPy0x
	 EUdkMqrGVKak+aaQFL3SsVUPHkbGFNgm0Ml0l/YfyRyxbD+xw2G7vxEx7k/oPjHKL3
	 /ODdubXtfQLIG6JRRyz3ziddKqE2A3f7O+zW6V7CGS1xtVqxAyzFEkOATA/57WBuhx
	 PNf+vw65EBQHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF219C44507
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 23:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178415691368.22157.10103899691863714505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e41aac0886d71cd39a8d0072f35b5b12a9a1cde211c962d175a7c43746fbb29c
Date: Wed, 15 Jul 2026 23:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784156913
