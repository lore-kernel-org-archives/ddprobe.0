Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC3D283FC4
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790503834; cv=none; b=u9I/gPzkiQayALFIaYf/N9l1zsFnDIYdkjTtsIUbh4vJEUVE9x4uaJRQ54mqwwS1z9FjJwBUOWUfCbCFxY7ZmG+wXNpm8hyrpIuvX5Dz0/rrrCu4kxnK4dxSh5Shzbs9qPOLCMsAk1wz7iaxeUHDadhWUOKQdL9O6R9PB/CHsY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790503834; c=relaxed/simple;
	bh=OKyGyzkWVUVGfTVcmUGaaHNBmNT6p/zdWt0xGbdd7Go=;
	h=To:Subject:From:Message-Id:Date; b=SHe1QtME472mmX/OrlflG+BdKX1QolOc4XaRhO7V6neeGhWx8bYn6c75gP7JGVGCGSRc0WPZ0+jSR8E4Poaov5FEXODe4tSQ/aTAjp6DibYhaPrlho+u9Q0hcVJcpJfYAYuwdd0zdyt2sNQqrcdUpd17pWCDVtFtPBEpwwHwQqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aByKyMsi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aByKyMsi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42A6C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790503833;
	bh=OKyGyzkWVUVGfTVcmUGaaHNBmNT6p/zdWt0xGbdd7Go=;
	h=To:Subject:From:Date:From;
	b=aByKyMsibkKeNqd5vq0qNJZRtpmvUTf57OPordNQTTMm4O/k5zs/ufkDeZCUE063v
	 s8Og4lZfe9vbKK1Y9T9kX1Secm9qIf0xCYU2mLK/1uQQ40PqyiHGvP2WPm55iDdTRv
	 RT5UdlGXMmp2+7YKpJlUTnlN9uxs3Hge/M2kLBo3AijLl+8iLt5VIC0ZW9G+obA6rd
	 SCALOnIOyw1Dpwi5j4P01/poJtnYCjgNkScgrt6FT2RiltOxqi4lddX4piaiTbFB7r
	 Addvq/8wZbT1Wu7syljBZUoOJMRK03DoT5q4i8S6TzKE/T/AO3ZpNCdXUPgoVxIpES
	 RE/AAGZUhCLbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12CDC98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179050383369.16686.17012651613570547944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6d40ee897bc4a38e40c72e29ad3439d91a458baee4af00c41f0e5e0f326ca59
Date: Sun, 27 Sep 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790503833
