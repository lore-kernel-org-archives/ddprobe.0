Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D475D17BA3
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735986953; cv=none; b=NTIiyLb29QOYpDxLLqFh3qZW1QGPfNUm9r92eBTdF0TOSjPHiSWeAn/Fz5Fu48IcCm3LeSm+6HIR9gJp/5+0e++fMo6803Tno/JVI6Lk4uQTjSaf/zi/q4Z37n9Q4JDa0C4TrdvYuVNqFNTWTPV6m2880Rs6cVATU6Yb0VZCAg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735986953; c=relaxed/simple;
	bh=wpWivnhO0fnXEFaEXcvy6q3wQzmzQzLEYQC3p5AnKMw=;
	h=To:Subject:From:Message-Id:Date; b=N8fnhTks5WA9f/96Ys0SnMSoaKvZdv4KvVJsm1Ce4pA3q9IGUT1FvZDHMeOEOe7rz0u5CvTAZuXZoqUrbKb+uG72w81nldtUUsJkClZk2W9XjDxRKC1EaLldiv2a9tBZgsGMFzvNd863TMlmZG8OY3r/OPhliGeFYJ0eHiaCMd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MIoJcXSq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MIoJcXSq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9ACCC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735986953;
	bh=wpWivnhO0fnXEFaEXcvy6q3wQzmzQzLEYQC3p5AnKMw=;
	h=To:Subject:From:Date:From;
	b=MIoJcXSqmADMZqieSDjqlARRcSlUu4WO2Z6ms1vMkPg+lt9EuUuKgoNKe7KD2SXs3
	 iO9auzoNiA4SNR45tiL4xn8QJIbm7jOtHRFFc3IhCXWx1XwVv2WMDYRGFJxgISslAB
	 d0GOalkGZaTjOdoyJhCIXpzXP4Onwzm8CbpHJGjqmmQ+c9xKum3jb9AN8fkMszRZnx
	 bfBu87DLMibML+wOvdksDAYAfncZ/aEL+MI3rhv6PNvCDZdlLsLmIDlYIp5X49Omha
	 ZUm0oO8c3jm+5Ox7iZRVkDflt8arn1F8Va81c6otLk9WBYlEnQ+8NB9Ltp9eIG/zUI
	 BSJFXBu0ltM+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986CAE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173598695361.1953.13587407333805781656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bce63c0d874ee8de042a45853821adbef520981ce7a0532bd2f3c6937e17553
Date: Sat, 04 Jan 2025 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735986953
