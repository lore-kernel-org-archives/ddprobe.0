Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7B0215ECDF
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726589153; cv=none; b=QqiRzdwFaZ7Z9iTlJzvj5FeG9Higu/h/RZnNhxP8y1/i7IC2R43E0WTbLjuexI8RbGkB0rZaSC3fq2zofok7hKD4bAq9ASrEAhIVow/MhOKOSkmXoTJKH86LlMxOzHAP+5E/UkTdw3hU0HDHj3F9V3Sigai+3OnCfWw3NZu3ciY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726589153; c=relaxed/simple;
	bh=pkDUQ0ekL7ulb9jad4s7psbgTVjJ2eWter+tg6GX0yw=;
	h=To:Subject:From:Message-Id:Date; b=mt1p9usmoSBP44roG7Lv8fEAWVObauWF8wEXE2hBxvIcbft8kxLYowiY/7sXzRJcEou+Dy9qJKS0gnF6OVXTeGEXzD4Dk9waHFMuJp+4a8LJJKndxP6i9GVkXkzxUanAPYbyrUwdB5MvcmzcNDvfWiQHliJmQKWCavrX14HLiDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ENkW/YXM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ENkW/YXM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1809C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726589153;
	bh=pkDUQ0ekL7ulb9jad4s7psbgTVjJ2eWter+tg6GX0yw=;
	h=To:Subject:From:Date:From;
	b=ENkW/YXMAr0RW89dN9d/hpV/5G1HG9wnO9YHrStLJ5V5PIajq81hP4jOiS56r3paB
	 Tx9VEV7P969UNDmSzbfAIbT0FxmUPU9Haqp8rUHtFvNN7K1svL80+bwxKfb9LQNa89
	 JB5ojrlnRO+rnaohlC31bc+7LdUiPGjQUTq74ulrSlY/iuyX0vJJJ2ACmJWRw65m+p
	 yq2gUhhsvUZ3lsOsuij0K7WJc8r1HHuRlfAZD4Cuak7QlH2xlu2LbmgYwuKbHJI4YO
	 IYWsEXNE8vweUiB8wgcbaP7bIvEkmzLGruDv/GfStnsr4nonK3SS6vJGg/lAAMVOCK
	 n0cO8E+ptU5Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92548CAC587
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172658915359.18100.14073265075622763258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 461d49fced2b9bcc4eb310cac55a65fffa04ee7b0075fb31082ad9ec48f38485
Date: Tue, 17 Sep 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726589153
