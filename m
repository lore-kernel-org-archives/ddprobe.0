Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1761B2505A5
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757013594; cv=none; b=uJPR9a6/YdmotKV0BB2DeAK6Yht1M//w4iD6v5YoJJu5q+saTaRe113TsYwwRm6yUcPvGTV3N5oD7rk8XPEqgaPdtKQ4Zl3r5KmDu14UWWbOHux3mxH1JhSzuy4UJirZ7f+7fyMaMpgnfYjGldjXH1MX+XEf0BcGjI5LjKLNO7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757013594; c=relaxed/simple;
	bh=+wK/rvITxYybNJDuqeof3njhWT0Is3OH1JopIAScfck=;
	h=To:Subject:From:Message-Id:Date; b=O2gyZK994TAHyTHCm0976m8BTssL+h4OlR+t+OIyeyo41m3muhtwA694AMNzdRaHc+Egu4Esxqi9ZoRmnxjPYdvcces6McYYnr72wKDElgqD/PdDikzKcKwBl9npY1xVJlnpfGCNoMFahGprDVKOD1gigvtKqMDwa6HvuSNDF90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZBV1LPb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZBV1LPb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC058C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757013593;
	bh=+wK/rvITxYybNJDuqeof3njhWT0Is3OH1JopIAScfck=;
	h=To:Subject:From:Date:From;
	b=hZBV1LPb4xTCuKOMekYQEiQL1B/B1rXtssP5SXWTlcF+VsCX9SHcjJGKI/B3DUuCt
	 FsbgBIQ+0y0N/O1ap8VXaLoZf9/IMzyS5WnQ9Cqabp2cZzU5c9aYflFlY3JooB9WaP
	 EXmuH3MSkMohT9+LO2GyVPFrvhpbkNkeZpK1znF9KWMwHvAsTPUcHBorh35A0jaFcc
	 cVcTzJoZaj1LGHpgGz97N/fpPHCOhU8GyH8wDeZfjsDqaYCMOHd/PS4aOucTdg3f88
	 xinLOP3F9oAYqBOSRxjgtQ77RdozUkhEwmUbgrlDxueDkN0v9HJBtbj/aFgmlM8FPY
	 bAl1GoYmK/LHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9658CCA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175701359358.9727.702549992171427641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdfe955d9987a4ccc6d42fafe847fe0b676cafc13a99e72f996f8d2b762fe7cb
Date: Thu, 04 Sep 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757013593
