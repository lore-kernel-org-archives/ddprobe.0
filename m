Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD9A2D3233
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751971794; cv=none; b=FEWQx1RY8tapKbZSfBiJk+KD21U/z/cLzELJuG6afg8GIB4fKaXyWjWAL6bq9j9SuHx3bxTCPHMDwkUM/QWlj/YMN/MDE8vrflredW9Mfwohnvf3BV0PlaCLmXfGEsvgdY4xwQiDV9gku+n5EJ7ONMlluDcrx1Mq5iYKhvraLQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751971794; c=relaxed/simple;
	bh=I9pblk1Twf0A6UzWKrVK2rA8wxKv/jjEmYs154bE3fQ=;
	h=To:Subject:From:Message-Id:Date; b=h9f6P1kTZm71++mzRtjf6S3f/ASqWDyPbuzON9VaesfPF2lmHuGDyWMErd7t99FnNi/lR1QSnR5gSaHohOvat4KdSmdEftHyXRQqGI2BOV42phGYZ5c+Zt2gBoNkXpjcUmAAlHo4ahKV6Pmz2dxxjrCl/F8JoRRd64iRrIhQkLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTuuebuI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OTuuebuI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4ACDC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751971793;
	bh=I9pblk1Twf0A6UzWKrVK2rA8wxKv/jjEmYs154bE3fQ=;
	h=To:Subject:From:Date:From;
	b=OTuuebuIq2XPDkxbxHNxiTy/L5+y6Bf6RbWjXkSTgt6JqPBQ+cgf1AMCCeZJLTuhu
	 57AL78jCTPNENKBVQ5HNjbo20jQAyxfY8U3L7/7YCnzQrdkRIFOoyv2dHdIoV2ZeBh
	 sVX0W0b89PntkA35sKIH7JF/7rjlI5QbghzDPY2+DUtzzJpJum7BWUVHk3uycjkHHN
	 E52JZ1ZqEI3o2hwOG71uK46nY/6aYoa+cKw86HCl5R5BYozc2O9CPjJF5XXjEvJXyX
	 70AGy6KF/FHV1szWGWLScOu5YT0kLhYCeL5Ix/Tqa3l/GYBYmCNbGWCmSOXuWyd+WP
	 G6ngL92P6Cumg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9DAC83F0F
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175197179358.5600.7320433347727336813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b190bbb186650273f2fe36c03d48121bbd97149f29c919d65c3b9455c3704b3d
Date: Tue, 08 Jul 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751971793
