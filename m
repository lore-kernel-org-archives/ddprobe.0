Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354861EF091
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 09:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764493974; cv=none; b=O7YOCDK/fCOfk1Sj6h8//LTWpy4N0UHxmI2v5XgBfrdVqkjjNB2/i+tdgPls7oGaH4DtPkSnB/i9gu6swwdGJFz++A4AKuj/O47UQbWaXcvFnDS/69RVKO0qzslJH8vON2ZzIfZgRU0XKO0010/hH4O6Wf+e6rpIkTs3pWcfPhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764493974; c=relaxed/simple;
	bh=vcTP0y++B2nUwMyoDR7wMWWZS8eLpVMaCFcwvwkn3tg=;
	h=To:Subject:From:Message-Id:Date; b=MEjb1Ry0Q+Mvq7fBkgkel1HFTSfJ6vi7R5PMCsqfMbE4qxjxGlg+Wv+Lio0nqnCwmsjGGgKzzhPCLGBPJMf4Q8G8LyKhXmmikE5rm8h/vmlRR+rzTuOmXrB3uEHixyOOfHouFLd78nt7wPUiN+BPGlytszXocOcHdO0z24AU7gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J250tPQW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J250tPQW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE52C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 09:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764493973;
	bh=vcTP0y++B2nUwMyoDR7wMWWZS8eLpVMaCFcwvwkn3tg=;
	h=To:Subject:From:Date:From;
	b=J250tPQWDxDhanf9ilJ/9YyTqDm8JMQXYbyst4LyGqgFqcVA4mzQIzY+bdcpIxsL2
	 UvrStFXIV4lRWqeXAcQLBsWo2P76zjA+AyE1kB/vwua/Ir317Tiy9idh/VJB//yl82
	 U7L6EfYEn6lUTyXPspUSfiljpXqyRgVbIJ4NjP17fiqpTnXOWwkeYn87WpbWzEbv6Y
	 CMZ04bbVEBiMCwk2YX3LsZh5R2C9QwdqnJ4Tkx2HE0UJddx/x26qpkypGUHtclddcP
	 qaDHCxJJYqxRJjivPWEPwn/k+nJz2VfRJ/ieR7rbLv0oFzHCJnhK/novz4dgaOcdBJ
	 4nwOMlIj9gfpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B934CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 09:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176449397359.16317.10150927268515972561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f4753398cd6831a049902aac18438591a0aff63587ed57d3946278d302d84a7
Date: Sun, 30 Nov 2025 09:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764493973
