Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AEA1C93B6
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724774154; cv=none; b=OvmwfLnm13rKZtuBWVkC1waOj0xVYFaVJq1QseO5zpDf0t8wWmkMyKxALvF9WHxKfDRwBlBvHcowS8MwuXYzYA86xDFJFf27j/ESuvTHQWqRmZ5oqrWptVhpntc3OquJRRXhItAVHmKQG7c2+cXOw5VXTFjPGbal1gqQUR579wE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724774154; c=relaxed/simple;
	bh=BDxThJv265Jl6dAATqu3nLztKlmS9e719qyYa6QrT/o=;
	h=To:Subject:From:Message-Id:Date; b=XXgWv+0gJtewQL2LjTOXgRqLCcy6brOjvXYO6Iy1CGB+QtbZOllntzPx4GZvFQYhhm30svyP/4v5CqvJGSQ4ITtW8J2oHlvMbtkIGeMZ3Vs5l2aWpWv2j78cFNlkhLjZ1kJB69nI2Ghgp/iuuUDb0UdgJt0rNkN0q3XP1w+0HgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/fY9Qco; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/fY9Qco"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF10CC6106A
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724774153;
	bh=BDxThJv265Jl6dAATqu3nLztKlmS9e719qyYa6QrT/o=;
	h=To:Subject:From:Date:From;
	b=P/fY9QcoVucXBcTUbw2PD09JFD/v6if8ovN9SvgQSkSh7pBhsNMe0dQ/tA1MJ28dk
	 JKRE3q3YUGQ0INAl3pl5uM9+Fm/bNM1oi8ShcM8z4G7+GleUqxHEHXW2FOWF7ztns0
	 adM3U7/QDnSyyE6WMl5HaH7vjZ77ngrOdxcKB9a/Tm2SY35DE2mS9GNgqrBM8lE2eP
	 zVhv2plw2O1qjBBnj4U85Y6yC3eHpy85KV2owjTjREvX4672kBVHvjcUo12ZN0dK3p
	 Hpvm6jhtm++eiL4YuN6mNJCLjV+gVxnb9fQqIkXM+hHIVHaMLFHOfVQ9Q++JddvL0o
	 ZQf6oxYf1LyiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4C3C54731
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172477415362.9007.5343779526601200876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2913b419dc677804a59e9fb02a4d6e0a92b95818f3a6fd8afab397cf8e862e88
Date: Tue, 27 Aug 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724774153
