Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9482E62B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735743354; cv=none; b=Y75nGJ4iuFhzNh7bCixW20ZSjQU7ZGxEiB57TpEYGK7hoA5JLkADp/uwr4DSBObYs4YbaUghX0ygD1gdqiLPjie82T8YbD2Ig2WbxYgKTheUxp6e4+KQNypnG/DSV1oWngc5RlFSwQVVO+b1/izcKJor1D11ZdxvD5AuX7nwmKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735743354; c=relaxed/simple;
	bh=RYCLJHH4THAv2kfJ3w3W6DYunmFiGfnQq6iZVtMhew4=;
	h=To:Subject:From:Message-Id:Date; b=lmfij/NQ14g75ck1dVedYRpekYnNcl6Kj53z3jvF7V1pq0j3eBFGjTqbEXEh2t2niUYngMvx4Fuc+XUwDCISzWOpoCYIO/gYAqmuFIVTq7ySx/gn8sbD5Sr4qDMbn/V+JUNNAut6PuSYH87ia3UbAcM51ebXnSw31IaHSzZ0oP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xi/E3zC5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xi/E3zC5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60B7C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735743353;
	bh=RYCLJHH4THAv2kfJ3w3W6DYunmFiGfnQq6iZVtMhew4=;
	h=To:Subject:From:Date:From;
	b=Xi/E3zC5uchrpvCNMhbr8Zwi92M6l1x6nauFnrXiV3isIFWKMGtcd5yhQywQeAfAn
	 1hZKrvP2BLH22gznDmCIZUnvzFpJscztcUBHU/rH48vXFvRVjKR9laj3NzgdN2ppTM
	 RtttLvbFPgJ12qhVkvQz/xdEyhIKbZlqY6RbnTdCaFh2VVWSoj/Lfg8PKdD1JLXsk+
	 iyjDSSwcqFbDI/duYf2qKcSGyD3cuaWw/CP6tVU502+CHyhsZbWq/3WBZtR6ml2G3o
	 1roaFPuFZ7Im7AfKyZmHOhgDTP2o9bktb4Ja1xioqPTOoUinXO2fYVBG02FpNmSNWq
	 67aCpNwDgKL4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95588E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173574335358.24517.13210664204798693128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af5fb572990f453251c37f0af04f706608254b6479e2a506d1a6d77c0ca5583d
Date: Wed, 01 Jan 2025 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735743353
