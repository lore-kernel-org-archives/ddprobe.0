Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C3EDF59
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758263394; cv=none; b=OHjeUatio/MYJddYgpT8JCaVWuqQSdhg7IeJwsILlMPJb1zoPypsAYpn8m8pJFMN8uqdrXRiHhtRWDx05XKH60A8IG6Hhh2+Q01eI9H2vtB5iVTrCJNMpRi3ony0z5VdMJW5ThVPg0Ekt2OPQF3flPhwwyo6EPnjCcxxHNTWPZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758263394; c=relaxed/simple;
	bh=o3pQkjjUuiSi5HL6UZ/+z+J1qONUb1mRdcer2IMYUvU=;
	h=To:Subject:From:Message-Id:Date; b=JyHz4TPb+gCAsm69XbGOJGNjfNVdUjv9/JLbBVtFFkfZ5G/cl3Ghg8RLnAdLgRovSU1ddUKQuEDYTXnti+XTYiy13yuvt4MV2tI0yztWm03Afz2We9wQD2P7Y2CJQ1Z2z3Bb34qTTLUfRDsR3TW6qGcsAne70+Uq3vvE5CxiGmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etfof5iE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etfof5iE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CE6C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758263393;
	bh=o3pQkjjUuiSi5HL6UZ/+z+J1qONUb1mRdcer2IMYUvU=;
	h=To:Subject:From:Date:From;
	b=etfof5iE7QOLaJVoeJQhFACkylyjFNmPbEeu+I/ti1MhgWNtPBHg6AK78gQC79ynB
	 qflrtrzker/FmmPKf6GBuCpBTHVUt6sX3IYdJfqi5K3K+lMg1jZhiCgV9VpiH6UdLZ
	 WURBDYdfgKiSDmTogQF6EKk4QLVR98jG/ZIRmKZD0iBQpQGb1mtlqIsOlLJI8qmuJq
	 rxi6Z12uw3q8O0PejyUGH7Qj4MFn3HvfFkVZSZ/TMKkdXcCCg2AdE7hyqUG0M7Ly4m
	 ERTk67kV+oBX3pCOwM589OH2wYCG1wvzJCxXKkbdEljrkerxNXyO4hQBSIxXUcapa2
	 BNZz48B7x+W2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9EACAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175826339358.11897.2358701148972744217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 413fb0e7d757b8e8e30fc24e96e4d3e7c8f0d85de94f7338900d5a870f993deb
Date: Fri, 19 Sep 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758263393
