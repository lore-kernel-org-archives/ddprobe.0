Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F229B86334
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762354794; cv=none; b=UV0aqZuUNlTdN1HtcmOBEDvn9kJ+ISsPR64WkWpjn/MipVe6Ek6BBD/Cg9xrLmu6yG7D0Jr0zMeaWITP9pJIZAtzQVnnCXycHlv/YdmiC/Mrt327PnVlBYNxt4zJvpKgrKaGepNBkOGRe8nlmL5qtuySlBXOf4P1ET6J5INhGBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762354794; c=relaxed/simple;
	bh=2giOMa8raZdYHAAx3e06/BAElPwT3I4UbaZ8ClsbLRU=;
	h=To:Subject:From:Message-Id:Date; b=C+JxXXsjDWuNz3vt7OWfYu9T1FgkcqZwzb3erYagMcC1G3mUlaCHs3e13bY0BAwjSlJLWbk25YNcToQK5svU/5y/N1myKMWZqFn+1glBZjMcogv+QS7d/1zxiBp1F2KVEegLl441cLl2EAyZgrCr+dG+ZnfTXZdCHXjrvlInuGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMq4N7IA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BMq4N7IA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE92C4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762354793;
	bh=2giOMa8raZdYHAAx3e06/BAElPwT3I4UbaZ8ClsbLRU=;
	h=To:Subject:From:Date:From;
	b=BMq4N7IAFIE7nJYt4aKp6UL9Sqc+N9Rk1+A+KxDpk3Okya4t4sLWvNMBvBEDh+8fF
	 eutFfTuc03JPRP0VyyeYUC3JsbLQ15Gt1ptBvMCotm3DHf+DNG9dmabdEx2l5FBHGC
	 9ygz6SGf1B/RsQfXhKPwr06ybxNm54U9VFsfn8p2+swBS8LHN/UzUFSCXXMVk/6kyR
	 zFcwSBLsHQNgHCBE1llTW7YpXF8eevuCs481vtMJ797CzAVURzRZ0NH1wPwhx48a7F
	 KjD4AJOk+8aGClalPpBeTSIrmZvLSTqZyHjDIKaMNBZ2QesJA6zNUIh2Wii9++TnBx
	 d/sGFmGwln06w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9CFCCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176235479357.16399.15598335647090300264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f9fa2578e5240ada43c545bda01b5114e0f23d5666e8fbe835694fafbd53ece
Date: Wed, 05 Nov 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762354793
