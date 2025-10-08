Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B42F1C2BD
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759901994; cv=none; b=Hetf8kbxN0Ff82JbbXL5jDTK0M96Vm/vlK93qX6kGoXO12w6BeQUuDfzxab+Qulr/TqQyQY6+v7dU5Mfd9d9QURezxl1vJGCUqNQ+65hJanQvLGNhVm0NrzvkdAFKIVymjA/8o7BLKeHZUjGHNqP9MkDWFudS1jKRJhGVdTdxv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759901994; c=relaxed/simple;
	bh=cOgcKkmp/+bod3ece2BOGg7QLL668V4bs+AFZg5JW3Q=;
	h=To:Subject:From:Message-Id:Date; b=qS1woSgVRZZseyAGQXBaM68CtVOMD01YzpZYGXd4xOCLs9w97p4luxSKp4IlRpCxvPwnqKpLWcarSg3m2bUDDIt4Pdm+ohU0uKEyft18C4fod+yyxjW9okRJ70HkLj0tVrZMA6YMXh0IGWdeNyZYWKDvF9x4qHR0CZpjEriGsu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vEjtP4l8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vEjtP4l8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6990C4CEF9
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759901993;
	bh=cOgcKkmp/+bod3ece2BOGg7QLL668V4bs+AFZg5JW3Q=;
	h=To:Subject:From:Date:From;
	b=vEjtP4l8FAq3DcPjl84eLL5NS+Hg8lvsI3DbzdQ8/9FcyM/YuDrGmb75wCzGqda61
	 KBfsObi4vwGb+4dwqKMmPlp8Z9ecvZsBPax+C4i43eBa4xpTXK+Nm2AOTnR5uswTSS
	 8pv7ptD8J5QhKSdmKjxcdd8DsNrg20x2MO0guXqO1h8UtSF6mSdpPDcjJqd/A3XH2O
	 5tVJsDPTHxoTzmvGM8x3jbUE/6Tm/xcXITrnpG2lnGmth/lCtiq4rQjOJn/mhS3ZWa
	 VizV+QM9tH0s3z7XDxPZ9ucRlRT1hYfNR1J3TJgNZKTFQENwwgnWmJvjFtq4IkXkNR
	 KLHTwtzQ7ajNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925A8CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175990199358.31676.8943254846741414439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14483c270d54cb7123783ba8f157081d38d7dcf0119846b4f03591089355357d
Date: Wed, 08 Oct 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759901993
