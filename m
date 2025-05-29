Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39167C147
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748527794; cv=none; b=JNPdPyXMY0ujn0vOs6/Nn/RpYyK0myfKe4khDmTRkB8ak8+NIPq4EPmEpvbrHiooGyOXp9HRHd9AnhG4eb0ioWnoKHFmdNpcOIvANISPEeHrot4ipGp51tQ87tMjfbL4TMt8DlJCfKnDDlcEFjnNuRfCzwa8zzQkv1OMEXVQT1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748527794; c=relaxed/simple;
	bh=42lgoImna0X/goR6cdX/sD5cUOOYKjaBEEFePVr7dKM=;
	h=To:Subject:From:Message-Id:Date; b=UA1mGMW/fB+uGqL+ZavKq7uj7RGAqkMLvdjQUwU8Wgo7yaXj4uhAtc/ZxCKG8lIKK34F/y0Xj6bTYeMdArZ9gQBqZ7zAULy1vT/fPpqaXmuyzNxA47hGNOFAADQ4SfhsEGagSyQBj2vGM6QcF2sZJFk9xE7yJgklM9MwHNzU9uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UaEtnuyz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UaEtnuyz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15CBC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748527793;
	bh=42lgoImna0X/goR6cdX/sD5cUOOYKjaBEEFePVr7dKM=;
	h=To:Subject:From:Date:From;
	b=UaEtnuyz2OxPO3RhaWvv79tiDZCNhOkG2LUj84s+lZE1sqk89lbwOMVEx7/QA+F6A
	 BusBiuEYfAER42cxnoTUMtB2tFk7mGjbPLVBpWgFaXpO/3lENkvRGXZVFiTE0tkgjS
	 8fnw4lATRtx3+pZ7G/LPGkYR6HvuMHlXQM6uVY/JPYTuPESSlb+0hVTvMALVVVXaRc
	 3J+WQKScW2Cdl2otYaihjD9QxVIlPmFPe5mvnvLgtjYLLRjLIB7x5wD+ff78UCQGU0
	 m0SwXbvhbpVj5OvJaKt2TMcR4b58ninLNar82X79n4runup640evP1xKc8bK4HMzOB
	 FhKc75wUizKIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBABC54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174852779357.13926.3198310526256039944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93a989662ac33300502b15f9b4ed60858a2b51ff3fa6d3cfd453932f5a6aae58
Date: Thu, 29 May 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748527793
