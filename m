Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C26B227FD7F
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752114593; cv=none; b=ZOz5nZFi9Lvh1j54kqPuchtg1AbfiRsPy4EMGhZ7oRZjDBReNlfUbiw8cTpZ98zYv7H5M0Ze/z45ygsGg+nD2eIIoKXKzIVF26mC4smvFz/R6RY3Hym8MAcGmrUTxa6dxbXQTVZWuiXV5JNJVIgRTLoALwX3rmrG1g0ghSh8oGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752114593; c=relaxed/simple;
	bh=Cw+F4pTIRIj+IKXoM4tV6k2onCfZiJXplb3DEXEfV3E=;
	h=To:Subject:From:Message-Id:Date; b=T/zdeHVqNCC4xK3oWGTfnCaUieruChYB6PdouFU57kX5KoWoAwDWgJWXgu+F9CsqzeRA0GvpNeFggUADQJHYtzuAeajggvHZ4U4ODDUU4aqI0lCE4jMeqa7qbPVg1AZqpSVGYzKvgFmMYWO94KP+F0IhGAIzwZlkK40t/FHm7LE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6E0wkSP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6E0wkSP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2121C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752114593;
	bh=Cw+F4pTIRIj+IKXoM4tV6k2onCfZiJXplb3DEXEfV3E=;
	h=To:Subject:From:Date:From;
	b=U6E0wkSPNjl/nafn53NDaPWZzaECrwOOttvPKgvfnLfGao6GbiYxbSFDpRh8udayZ
	 bFzzalSG0p36FUPpuNQfvSmAxbr7+1Sl9biwr064m7avZPpH8rioLMch2N2RJ07aNq
	 CFMI1vwN+kR1yd4kMUWpK9bssk68Z5GP0hZFWb4UJj2C5/N1QCiYip2U9kHzP6zpnv
	 GUTgIlF+VqDjGODNf+Pe5yjcTa1hfOzp59n0qFceIrlrxlqxdIpsJqYIUl4b0PIzqo
	 C1+M262IosDKhcbJpORmdr3JEGzI5zZtN1uluzL02MIfRlmjfdadkK4/DNACHYZt8V
	 d5HN/51UIiCOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AA9C83F0F
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175211459358.22634.11168736371287857305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af532c7db563e04395988dd488f554d17b7c2ee22abbaf2fdb4eb4036e1f68ad
Date: Thu, 10 Jul 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752114593
