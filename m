Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18AC920FAAB
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 11:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763292054; cv=none; b=V7dgI2iA50SKXHiyn00umrcsyILQArN3haIGzv3BSerRXTuy4tVwoQMbxzJ+wVh8BwZ0gU+BKXaOrdC+cvWjZWILXcvuNaDbZJ9J8PqDkv8grKZHLrLUfx8s8P1E6fx7IIO3elDgPf6Q7d9jdsNL7JSgMTyjPLnEpNbPJooN/Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763292054; c=relaxed/simple;
	bh=2CVZ4YTrNrmpwCxU16Ixte6YC0wVz6703WfxyvcS/kQ=;
	h=To:Subject:From:Message-Id:Date; b=ShytVIphrhN906RUttkoAq8UCTbfDKZjitMO3lKXAeD2QPPe8VP1QJnRvri5QgJOps8ZnJ5vbnnDwh/3bl8eMAQ3LNKBCcd71RU+LoY0d1d1cXQZyvnDxPvR4ci2iioq4vA8nwrSp+IIXMqeXoWfKvwC/gqbW9c+cROmslDBcn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c6mpt4qd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c6mpt4qd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8901C113D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763292053;
	bh=2CVZ4YTrNrmpwCxU16Ixte6YC0wVz6703WfxyvcS/kQ=;
	h=To:Subject:From:Date:From;
	b=c6mpt4qdK0vsGmnvrupnvfZHD1qzR+NiPZjFqBPWi+QARik3FeGRxEa04LWJxodVF
	 VISxQE10OJ73+luKlgkK1jgXXv0+3K/2v+hpA4CZs1gQ4CeuS0asugyeL4rxPUiUt+
	 h+QF1rnqDjOQ10wuhNbpIeY39Wq/gGFCl59AYSqN/8vAGAfVfNuqCzc6zcq6o1K364
	 uZBZDoI+MWmoZJAH/OCJYRFrts8HG9ji3VIQ207FuZsHeAE/PZrKABoVtTyVEeXpw9
	 2he6ndrBqyGUVT0SGKgM5kb+UFmyS/SPLiMTmh4X3eOluPLZBtTc3/05H2OsAgap+3
	 MWVDbHJGXgOLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7A8CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176329205358.29400.12023774004836502084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3bbf9802f2a11563528d421784aaf572ca6403e14d800324cca486cf31fa5f7
Date: Sun, 16 Nov 2025 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763292053
