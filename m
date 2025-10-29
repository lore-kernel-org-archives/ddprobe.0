Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D60E20C037
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761722994; cv=none; b=Uz2NvkgQIhNfBKPICeYUq5lJ44J+uWBjPXTs8tOYUCMGQEhtXW6+byPvQQsymnYff1IjeyEfrW3+k5JG/CSgEdRy0di/XviO0TH6LfzjGbXNRbPkypDDVDtW5TI1UM1J744IgUKskRZuGtp9DV+9FEL/r4DNSp8789r+MJJVby8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761722994; c=relaxed/simple;
	bh=ToX9YYIF0HKlj548SX+I+rBxSFR1JD/IfVkdU1Su9cM=;
	h=To:Subject:From:Message-Id:Date; b=e0UWXcCIxGNgMzlTkKVYsV3y4GaVwlha6yov9//sOXBN8lJTcfXJsWg4Y3Y26KrpYFn1wg5L1z4SqTsWI1DEOv7fanxLSdGFgNuqdo1q3ITik4oSwqndoDGZ5aM+4Kry9TfFYVV7r1ekrAR1JQX0YRdzlUyP6VzRL0D3gzFLECw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qaIHrFDi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qaIHrFDi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92EEC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761722993;
	bh=ToX9YYIF0HKlj548SX+I+rBxSFR1JD/IfVkdU1Su9cM=;
	h=To:Subject:From:Date:From;
	b=qaIHrFDiUYEiloWXcKVWvxlyUow5hCjUJTw7/v8sohlAO3voqL2eiTmLvmzYOpgwU
	 3BQECNpfj6avcTokZddzTuaohscfnb77MaHo3HqeVacwJ+b9umUz7lfTlFt8cT3V84
	 fI00KgHxpdzYPH59NMvRsYc0mrgrR1eF1H4Z5L9xfxg7wcnd6Dd3o7We+T1VLfwVcg
	 bv3S5kH3csvdr2f6a9eM4ZT2gl6aqFjd5fLrWYodaTRN64K+c7VbGP5yS8oGGVhCf4
	 sWzjBNld+0aB3q570/2t32qOWgeDEOcHzlbRSDAELQHcQC3xeylMEVYH4OvPNwWvVl
	 EzzhjBKbxuopQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93070CCD1BF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176172299358.32149.7372078291320796353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c3c343c0a44985bad775f3c4cec9d529e3683c3e309de7d85ea5405238ed212
Date: Wed, 29 Oct 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761722993
