Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1C81DC1AF
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734419154; cv=none; b=k7GcLGdftpN2dfYRnLorVpcUY4RS3y66KalO9kw5mA6bt7NanOvjwFh1NXuEkK0p6NeqOOeJZoPcvnM8UP8dJfkb/i2jxh+4mDHjnE1BGYa2cd3Tyuqgwe/Pnz74nBa5NegkU1L8KfBTQBOtSIbpYy7J3p0O1P5PhtqE18Au7Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734419154; c=relaxed/simple;
	bh=XylH7zx11501PdnKbJ3Bhdltiw1LAuGo9PSVl4axNMw=;
	h=To:Subject:From:Message-Id:Date; b=q3u5fLt76YWDdbk9jz4a+ugfM8eZpmoFfWNxalCkRUHsAO0gtpRUK/IQYl/T3qVvZjY2m+kjHdLZi/m4BHtvks8Bz95wxe/7NP339dwudJso7z5d3sTwG4cYkoNMH3dhiOdq4Si29ut41hirVTL7FTi8TMBTbgqVF1d8C7G0bqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jIs2940p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jIs2940p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51B8C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734419153;
	bh=XylH7zx11501PdnKbJ3Bhdltiw1LAuGo9PSVl4axNMw=;
	h=To:Subject:From:Date:From;
	b=jIs2940pyV7fhAg8XTUuf1PXcBBZYMNQp2tJRHgsDtT3RYAA34T8db8Gw8hmKeBb1
	 NPx2VwGDn/FrXyXaQllxl0UwuK6YxIMTx2ReyxloDrAIA1LaT6hFI3ssWcq/jE+DCA
	 KqxIDsbQ32bGXjeyPUMzLp/LZqNGlpOVWsKk8kQv4VeZUilQo9yFKIWWceFFdBwozw
	 G6BweJg1QLKu5JAiCAtU4fx6KjXH4dOBGVkcSIrI+oozH2WApHBIeASvphj/Yu+gNE
	 5zAfWCxy9P3og0suMUgKpxNYyOrkULYKqwft+OgSsqNEqq0oiAO1Y7woUh6d3kj536
	 gcNHHztvGiTPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EFDE7716A
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173441915360.29600.3414464758541806755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2839e7bb80a92f0c6d02d5ca800a4aac6365aac9336bda5d11afc403abc9df4c
Date: Tue, 17 Dec 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734419153
