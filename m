Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D273537D2
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 17:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776880054; cv=none; b=UBjB9LO5elIRUu4zDQR71VIPtRkx+E8thjkEpV7TwlMB8ie1eEdBuhEquPemvAKmch33+w8B53YaN8aFG5dWif7GzDuxSUMVw2jSJaawumm9mBfbazva5Fcp2c+sElawKNYOV3XwKOAbVMHeCVehaCBFedaOTCetOVGEty6QpXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776880054; c=relaxed/simple;
	bh=+R3KTPTWK6ZDPE2UAEDEgN2JVSg+1e6Ep5rsi1RYJfU=;
	h=To:Subject:From:Message-Id:Date; b=l84GVyIO8SCYjTAdGaxikeYVXS9LEXKupFLkkxITP93x1AIEOzC5yyr2ktxWSJW34Oe2+bGDeJFfpoX1hR4WsjVKk7wo7HxxdqoeXVmBGGMKtOKoDVbqKTOlKmnoA4OAQQDAMvaPQVbs8qhnfuIQIirZcGPUAkPdYICvn1Hf8zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i01+z6ku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i01+z6ku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD1A3C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776880053;
	bh=+R3KTPTWK6ZDPE2UAEDEgN2JVSg+1e6Ep5rsi1RYJfU=;
	h=To:Subject:From:Date:From;
	b=i01+z6ku2PvMeaNBDNGnROmLxa2u2kaiw+vAhS0e0dGXChfRXzo07wfZMgjLF4+QY
	 b74VD52zbe4BDyCEJRKJTcGCwQPdOQbros668BYAedQFek2A7xgUFFufNnNugCOX6P
	 04z/FIAToygku1Flz68qWviGAF2Os+cr82bK7AXE7oq3lUEMUdBayx1xaOK097f/wD
	 DulvI0UmTK8gxXvzGZd3k2V9Oe+95ISDYus0jA9rY6sJt8PW+rWmQEv+CqUQk9Bs5d
	 xWGAHIzwvyukLzSJEZ5GxDqIdhpt7yokYM6bv4WYK62sRyV4j/rXm1hG0ZYN/Cpqbh
	 R9tNLl2WV8HVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C32FA1FD9
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177688005368.30542.10377912002830859466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca9add6d875b8cb912890bf6dfb39fb05bf93620518478c0cde9d2b077298c04
Date: Wed, 22 Apr 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776880053
