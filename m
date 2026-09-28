Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EFB3C108D
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790629834; cv=none; b=UUzYjAzg3XJBxaMXkSZODdjZ2MPZ65B6yAnpW2gNncuXD0NjZElYO+o+Z1PKNyqa/cQ8z8FrzOwgvCdNGAIqV+XpJ8/vxghN1rGLC/NAHFobGvnemL+9hZoPH1GULLms99J6mC7CGTgYYTJ8iyLQNMTtF3eRzjSPN8Vpv1Vcvxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790629834; c=relaxed/simple;
	bh=afITwApQyCW3a4QWXPmIaKhr2deJ5ddCCDieGzzDvdU=;
	h=To:Subject:From:Message-Id:Date; b=Uc/PrLlJRefRyyxkvJ6z+Fggmbw8K0loRRXlDjo179w1VwadJD77/4j2Kk+HiDiUnz/8Awlu4SzYSBbYTDchbDK2f8Ep2MIQJ9aVZdnz4tS1yG64fzTlg++K/vKKahgqgn3tpet2e1GJDFXB3RSvYIgTZCbrkCgJUiHWlFwwm+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ker58T2B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ker58T2B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0812C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790629833;
	bh=afITwApQyCW3a4QWXPmIaKhr2deJ5ddCCDieGzzDvdU=;
	h=To:Subject:From:Date:From;
	b=Ker58T2B0qbyGdmIKlnqPBVyuR45V5acK22Bf9dcJAatGRZZGle/1Gjn3dQJ7S0R3
	 PSw2LnHTEwd9GHA7zYF3LExoGZ+nOAhWfckaNIgEpocWJYoqxdY4utTVrQvPxYss3Z
	 10ndVsoPkm9unEBnTrSjnJo/YblZSSdg79XoqwE5nRSIQHwZBFKRbOpN7pelohqUoZ
	 wwqwMnZFjShQ6HzZ3oAQsyDSMEETowELeRR8a5eOA3xho0vIE2zTq7DUUhgWZ+3AqR
	 l5ybjbVIQu1P7SsipRP3Qgl2dO44ynEVSFhb8C61CumWU8UbZi9CUw9EpH4fhvBwO2
	 G7mSdf6YMyh5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD1BCA5FA6
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179062983369.10322.7120667638913441043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc7c9cfdbfc53a0f0ec11fe9bf834c2c68d650da9a9d7ef828d467395908d1ac
Date: Mon, 28 Sep 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790629833
