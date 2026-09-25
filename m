Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4895935DA69
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790320834; cv=none; b=nkXA23+TPuHpoQJhpTO3rvGT75vG/cdBtH2IfsSpzM/GQ1L0HdsOk/MtI8W4A1C1cmPaVbQrAQM0Tvqvej52jDk9N4xtdwabyEL83wQWqHRxGkMUL0RpDJ+6DPUHg3OMdbCZlx1pZGFo0Id45GvpYZtmVfoEZodYsSMo2HNHe5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790320834; c=relaxed/simple;
	bh=YyKD6Ym5lGffo4R4uq4OBeY1T+HsslyBD0hsJ7lsvGo=;
	h=To:Subject:From:Message-Id:Date; b=F3qZZKIc9wl1gzR1wKl50exHuDBiHX1oVcZ/63qb5dptTm29VsNGw5v5ZsuvHCgeQXqJR/K5ndXITlhoQ+9ROhqX0fh1zMbqyfGACak/pN+nLU4kRjEPJU/sovI8KIIDuK3axuB65UuIiz0RjaQJv44u1nusQuDYXMbnZA0YULw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yh+w56ga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yh+w56ga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0799C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790320833;
	bh=YyKD6Ym5lGffo4R4uq4OBeY1T+HsslyBD0hsJ7lsvGo=;
	h=To:Subject:From:Date:From;
	b=Yh+w56ga4eg6OjrHNtNBo4YbwO6Z5mbA8JhAurjFmGixJFzNqRvjRiyvj59ic72QC
	 Sw4hlD2mY/3q+pcjx0RIUNJn2wdTiEl8Ryy2/C5EtWHd/m6PpAv+GReEIjYfcqjJkh
	 ys1kjslUm5pnORylfT63cKfVIU7SiL/Oe2DJrYNDNXFOYOrUd3kxCHSO8DNNkUIUCE
	 wCXJubyGGGQqJ5c/uSkXED/vnoa7DLxGnb1q1gz8WnXixlW72kX0HmqHTrqAwLB8rS
	 vN6C/e4JOf9geZ3ftpu3mQIowP5b3fMS4HFT76nssObkOl+Apmg+0CAQWkLrqyvsxH
	 M+a8ubrTj9GLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFB9C9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179032083370.25476.1656669460348383010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b33db3e771409cb1bad136e489a28a01a736fad41dc2df3e73429128d2b925af
Date: Fri, 25 Sep 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790320833
