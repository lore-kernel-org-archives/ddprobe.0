Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FB370838
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737912954; cv=none; b=If8QZiw5OTweop4ZKaf9IJ323iA8dy3+HyE+eShPVGb/ZXA4eeoTKcRb2z8ErdKrkG9XpS3gFruS1ysK3LR4rq7l/+ZW/Y/Y0rTIJJ00PBUFOiADXXcNxTqTLj+FDKzGv0UuauSZssStdCWAfNXtitEJr1tSDGsjf6eZ755tepQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737912954; c=relaxed/simple;
	bh=D1xmQk8kFkMSrv4XcvLRrUTawHg2f+a6EhHmMUAlB04=;
	h=To:Subject:From:Message-Id:Date; b=MD1bZHctQzTQWUkRUUb6c5S/z9H768B8JU6CTmWSKLASyxA3Bhl2PCGuOYChIrvYkQ/kd41E6WN8f5HFGyCfSzrB9frWWmB9K/bXxVLUK6xlYtiqqrbCr4bdzNBb/T1oC8zRR0wpfROJ6kVSRBkzF6GanCubI7JAWveacT9IQ3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j2sKGZOX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j2sKGZOX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB34AC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737912953;
	bh=D1xmQk8kFkMSrv4XcvLRrUTawHg2f+a6EhHmMUAlB04=;
	h=To:Subject:From:Date:From;
	b=j2sKGZOXwIF+rnyVGnWgej1TKKunNswPqneHvlfxw2YfdehfDLHKXhTVx+5WYThoJ
	 /O7XNZQoFmqq7exYTFA+WUXEpOIzHHUDGbbm87QznSiosYzhI5bRtl8WhzwtzsmRHn
	 Uf38XCeH2kBbTUycm5jRMeTArDsbZcLub6Y6gTUDT6lyJSEseT9FmclbItQ7di1JJP
	 8ndvaKNqR8u91BVNSUF56SycOdqHQm4kF1hatsNXpO0HlWsnzPzSnvjVGr342t8h59
	 BbKMdd5J6mJCzuYjMuGXbMCh7W6IhpW9N3AZpsxFJbkeiwS98Lg+dWTZTE2mT5AUXC
	 IPhcaAjvJxgsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985F0C02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173791295359.32334.11497285419938956483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 958b50f9f0b6d39a9be9178812aa22bba030fd132c8ec05936fc177bd156da24
Date: Sun, 26 Jan 2025 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737912953
