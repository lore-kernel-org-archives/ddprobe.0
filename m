Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159D1B676
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736157354; cv=none; b=Xhelum4BZOQOOhHYW79y96TUX2F0xICmH4uIpUgIhQ3qL1yWDd0k6yOk0sAJs97zn7RZthxkkaiApWDZGJaHP54sziZWUMYruGLNt3f//yV72j/3Z3D6j21J/ZewNNtywksEfyNbol44i02l8WNEdZ+YtUC/hZMXCGL9nXOVE5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736157354; c=relaxed/simple;
	bh=nds77UQplYI3rrxyBJ69CLo2LT0LbZtxbazP2oaHgPY=;
	h=To:Subject:From:Message-Id:Date; b=oqBqlqL4Uqp75DUVrIuAL2d70CVDnZI6/2VquNlJH3YuZ+YZjHfv+c46pkc0g0+kIbt8cV0WN0PvsCRpWN6YYeUu7G0d3CT984aipOnI2b5awn0TtMqbnzdkNS0Cbj2d+T6vUO/2JQT1VgNeDaJSAlIWCrrst/V85MoETfn03yE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CrySSkOu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CrySSkOu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E13C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736157353;
	bh=nds77UQplYI3rrxyBJ69CLo2LT0LbZtxbazP2oaHgPY=;
	h=To:Subject:From:Date:From;
	b=CrySSkOul5brGHevF2uQNprPPzAGOzPrdV3rCMQs5DclfVOAOjmcB/CZ6uxHubtSJ
	 IcXEkzrUvE8u0o6M4iFQrOMLnvN5CTDbfuaZaKtrS6l12jNmKmWcpK20f/xMvnn41P
	 6i3YE8Znzyaxg1TWr4ZsSbDr3j+7+ms+GkKqx19E0wKdt9Ld8/5xQLu1GRTit/1fR9
	 ZtcrH1aOrZaggLDC2d6CgWhAF+8o9qGpD8bko2X6grnwQK7OKwjnNiaJmAondTvwUe
	 2PKQaAhfJnj1SvxluLo3PZdZblM6Ug+7KbtSJJVB66naST9Y7Q6vckMUQ7urTEKrNc
	 a6EFuKqnSd19A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912E0E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173615735358.32504.10865479377012400828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8178638dcb03c30f6675f8a33538e16183cb274b5f842c58aeac1babb47cc791
Date: Mon, 06 Jan 2025 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736157353
