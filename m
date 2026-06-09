Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283DF2750FB
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 09:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780998274; cv=none; b=Ld6X4FdEmE0E8T1kkIYFTUu6PBqopqviDiQwRTLO63m3rwzC7DgPXkkOljfGljo2pCYD8gCYb20OCngMPVfUZWy1QpBixth+qlPlml9daWFoujxPv5J9zg8M0Qg4L4uO7UEWx1Y3Dv3r1orkInmdc52SNwN+hIj+K5a00ejsAAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780998274; c=relaxed/simple;
	bh=oc3aMCkvUxlxlvi/jwhM2khvj+VsyZ0lnFFIuQbdFkQ=;
	h=To:Subject:From:Message-Id:Date; b=n2AvGdg4vg5ylxC5LAs/Im56lAz0i2q92cqFi7sACjlYxm3anhhDa3qV5JJMmh+eaIFH1G1Jalfutmf1MjfpdDA5bYlQXEXeG+8MOPo/FoEFkOBa00bNIA2ZcZ2w4QQtsaAvBPTMbjeB2lKhev0jsXFeDutI0iUD4jS7URHGyt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ge9wyyGH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ge9wyyGH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C513EC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 09:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780998273;
	bh=oc3aMCkvUxlxlvi/jwhM2khvj+VsyZ0lnFFIuQbdFkQ=;
	h=To:Subject:From:Date:From;
	b=ge9wyyGHlRYTHqq8YAyYDamNMj5zt1Oi7Dn7Xt6UsvUNyNu1yyzqzBHkpVzYiCWm0
	 YbmAGdL8HCGkotgnMSJU5t+D3H2S8rtolrRiGkQpJi7C2sJnhCLFiLoe8Yl5qAO7Zm
	 aTq1Kl0v4+bWEPWsKwMY/jl8TJLzNkaQ1eG9gTVOKX2pq2T7AfA34IYa9ZM0fKb67h
	 l856SytN45M4AEJ6ivJ1kxkn38QViPVHhhw/+WFM5gN+FSYLzZxR0e7ENBDTyArsrp
	 6wG1E/Cr0CwWPBiN1RF1ILqTWyip6ZQH93hRyEHgRHUNy1owOdt7A4K8IMxBkWz5Dl
	 xTQv3LcxlHZ5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB660CD8CA4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 09:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178099827369.1041.15239371902401660603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdf202547c1b49e4defe618d066b96c0683db299d483cc88902b909f3361555b
Date: Tue, 09 Jun 2026 09:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780998273
