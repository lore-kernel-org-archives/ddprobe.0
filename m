Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5415A2E7378
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 04:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784350114; cv=none; b=Y9hgHhSpzV/40qbi25Eg398iXnfr0+0yKJyRZSwlfy3GgygovmrkHlCJIMVk57AoLXsr2HDEhgp9aWnKqimmxiiFmkC3mtnOM1EKzfmPsE9RtClTbb+0ECNyEhvnuY5VSjWoj87g2zYNWtJjahXparVpDuHb+xoRU9Hg9keRLYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784350114; c=relaxed/simple;
	bh=ENFBnCrtIh5hVLvZpRu8TYHNZdB8SbvSW18h5AwLCTk=;
	h=To:Subject:From:Message-Id:Date; b=i9Me2hEVSg0EG7EcfjNKYMERzpYZZRUoYsNUKS1L+cfPFFvDrzDgiQ07f/j2QZJLkK9eXFFWg50RhWU4PXw885slNO1m6j4O4eHlYhxPI9Po2INMUkFuKU8HOuLFDRMOsqi2pBPgSuWx7DvitFeSTStnzEkrZqhOT0CklENmmR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+YRts5+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+YRts5+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38EFC2BCC9
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 04:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784350113;
	bh=ENFBnCrtIh5hVLvZpRu8TYHNZdB8SbvSW18h5AwLCTk=;
	h=To:Subject:From:Date:From;
	b=g+YRts5+U2EGNgPMuV/SoZs3AMVYJn0OwHjDIygZpdTukfWjDhhkR05kP4slDUuNj
	 bw+46KwnC/Ja7fbvq1KPk4uhfwaV+iWjZOQ+Gse73H77roJZGGn63P7FW8ysRlfjOA
	 knYsyjfbUK4tpXUtLKlNzffPwn9uik1i96nYDX1FLvxAygEI1pfArg85x7xMHxZkpt
	 TTP+goICCO+9IBLQh2jqAZkaDFcZvCxo5BJrhgc6MftziJ5P0vppBdeL9O9efs3N8b
	 2PqGiqvp3UEL+dSUxObq4OYDqK7bCfQJrDsMyHObXBjslxfLcAdSrjY3iLcrwE2tA2
	 AOlHRfDwND6kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFEBC4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 04:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178435011368.27879.7564293268814999106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a9001c5b3e2f349816c31757b7bccd36a49b85a29eccaf8c56efbd0e45b53de
Date: Sat, 18 Jul 2026 04:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784350113
