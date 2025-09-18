Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D862DF6E6
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758198594; cv=none; b=JIVlUI1a8gFA8MVppU7G6zaAPu8yw085m5+UUeMn5596SLTvGJNm7JLFBoveUaJmHb3QOHCBdJ2pa/fIKT1XUAlC6s9VMC7qya1UO3X348qCETaM2fHEaMC+JZ81UMCoC2Pyi/twBkFvo4qLLEvuodyKh2uYk8vjqjyQYlT/R8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758198594; c=relaxed/simple;
	bh=5ma10KmLipaZSZQEBLlYbQlYQYdyvhLgO8zxJzgIrjA=;
	h=To:Subject:From:Message-Id:Date; b=ZiSoht7BVCtPb6KpiQTaD8v7lqpXzo44XWGJrFU94eNnxZTyGt8ykiD2nnLICw8CN0t9QlwieFb2f9LH25srTuQ2NrGTXbBolaYG00v8jN7UDwquB4nQF4OZNB3xmKTtrAcvY3TSmcedKxxZFnM2MvPUoDWoE9c3l5hmwgEKC3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLPNAtvT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLPNAtvT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5940C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758198593;
	bh=5ma10KmLipaZSZQEBLlYbQlYQYdyvhLgO8zxJzgIrjA=;
	h=To:Subject:From:Date:From;
	b=fLPNAtvTaMBv+4lJLZvyPI9l1clorluT6Ei4iCKXgCBFQDfDBK0PUYRCZSsncsmaS
	 bZ9uNTg5QY1GfKH958px5wk5FGsv5iEAwHqdQ80ZBbix1ssezjlaJ1uJtO7n9LWny/
	 T1ywlB0W8LQJv4+FVVpZB+7Hr7XiY5p4BE1vaYE6KKqFk7y+U3r1hNW3PhX5530kqm
	 oHxFj7uGNhsQPGYbqIIik0o3OTggeQw5Sk0RcFn0mZQnz1RMDpsjX2XBxG3X4inyfs
	 IxE2+pfpVNoy5sjvNZ7CdF7r8LuIESjN+j3JUmyqf7e/V/l2Wa7e+ZBLyBIfSwYNx7
	 /zXQF27bdZeYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E608CAC5A0
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175819859357.10008.12272781151993552928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35c7cf7009594ddf6e6f335037bc65cfbfcb63fa95bbfae3bbdb93df7ae5e8f1
Date: Thu, 18 Sep 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758198593
