Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C87543DEA1
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790352635; cv=none; b=gdCFXC8mFrRTH4p/rNpdIS5vJeaq6VujgTwBvPfJ7kDhkBbL+Kl1lq++ppTB1HlSqt3sKi8ugIySflC26fbfPysQ5dT0YRtt88JssYtBTa4FHfAXfZkbDOq9rXEjclTE/2T2qw+c4brclfagiUHfmNIaLbgJVjZlEI2oyj6wKiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790352635; c=relaxed/simple;
	bh=JZZ2DQ4DCDK0OV48tpOzoZfZGxxbGCX0bhLQpkJYa/4=;
	h=To:Subject:From:Message-Id:Date; b=Tdo3rb++16m9sbTADWowZ/R546XpCXutIP1F+twQFkA9gc0wFgrrOkjMZ2FrRlywmUEoC+76hZXiU9+RkTVv2zt1FtxWrBY/LHGUy631hSaOPmgIXZrYQNZMzKhcTe3ifGtV5cIkI9U2IM1MjGeidSAiZ6LQXj0H8ZGGnGZ0msM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k3ZEcOdt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k3ZEcOdt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF30C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790352633;
	bh=JZZ2DQ4DCDK0OV48tpOzoZfZGxxbGCX0bhLQpkJYa/4=;
	h=To:Subject:From:Date:From;
	b=k3ZEcOdtGjwz176XGjVGclQftAfNNh1bVxYKUf5NzP/FZxeFvJSyW/fFZUtQJhQty
	 ktCPQQikU8zrNhkMlcjlDEWew1J/9NXrwiMDweaS+QlhTfxFuEEdwl87WVSmJtuY+M
	 3H2ZuwAUGsEYn6kk9zMQJkvNyNYu/dnu/dtQ8M3jX84btSC/vMFH+EapagbOR4geI4
	 81JIQ/1anU/zdvSsMw7O7+Grl4uRv6YBkJej0L+cscfpCuc/nqSA6ir/srRj5LDVTT
	 l04LG8LGRKQAKJad3tRESiNlHANYJuCCjH+dUsh4kZCBamY7c/Q55mttJIGGEIaMya
	 Avt24v9wIkz/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB7DC9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179035263369.18769.9041887918021951590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e17ea6af5f453f0be6dc1e7c9ca8791ea9687d4d92374ffa56456df8654edc53
Date: Fri, 25 Sep 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790352633
