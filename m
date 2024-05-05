Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DF1817C2
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 02:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714875743; cv=none; b=VjTTZ/vySGuSJDieUuLdmKNeZcgaP0LHkQNEqr7D/m8DKfIzNDBq4ZxWj1/+q2OkDAwnaBE6dXgkFk86lpUcK61lcDUE2azoiyXCCMUJLYdwBNASs8elZ3BuHZky8X1cJsWaV3e9Lni2brcIXcyW1nF32u662PfDgCHbcRTEHT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714875743; c=relaxed/simple;
	bh=qy/HhtWK+rUyAPpnDulGCZeIkxsXCwJa4kH3RTMvLTk=;
	h=To:Subject:From:Message-Id:Date; b=ljBOdX6IwgoXHygKIFXrktIP88x6ltEyFymVKTtqbXO1VvoxXxwdctKrO/zcKw2rqoFE48SZ9g0yUOXxy+cb/RekFKcLZQbjlknQVbtj80rJLaCtEVTQ6LErW/78Q90IbQoVXzfAu1lhEP7l/LbCW7mq+gEzTxqFGDnWmCrbAC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMZssiKL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMZssiKL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEABFC072AA
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 02:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714875742;
	bh=qy/HhtWK+rUyAPpnDulGCZeIkxsXCwJa4kH3RTMvLTk=;
	h=To:Subject:From:Date:From;
	b=cMZssiKLzBCJ4k+42tGDXrtd69BQlkz1Lk/NB7fGPXLd1nQbE+l7wOUICD6vCzySi
	 kpC3jPjJHxu6hfodgTkH2TTx/ysUr7t/tsxYrrtp5zIcpjvtjmyWVcrHSX4wOprxrL
	 4/tXbaITWThPkMhEkehV8mgzi1KOEjDoWUjIffQUrl2bWZu0GIgPGjJ6W6FhzhiQkg
	 XUQSIRRVFv94ev+d58EFkpVwukPSWZip6b8p2yC36QmD43/TekoDsKMRsZjNYvL4q7
	 TvgXa5aZHiaG3q+QjQ9RlELsrtAGumvtApHPDo1wzGrMFbMY7sjc9LhYNA8oISrc3l
	 Z81OYkCoHf7hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C875EC4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 02:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171487574278.13067.14377539340096630626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33d0ca83118cd84c93475726b2ea6ec685fa06099f71893118c4a3eaf0192d86
Date: Sun, 05 May 2024 02:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714875742
