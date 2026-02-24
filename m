Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C080D33121E
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771922093; cv=none; b=eQU9T4E8fC2YYcLzcdfyRDoKrDjQYPA7KVNZgRnL8ViTPZT4ViHLGzXmpy7DZoTVj7p/2+0XhrHmvVswS9I9P1seIpBGWOZoeHcKV2IQelWsBRfWn23mmmpPAVLaHvcgCZ3chbExduN/gaFHw8lL6dcEvvEqn1AwRdULfZg6q20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771922093; c=relaxed/simple;
	bh=aDqk51z2ob//j8TjkdZguguqWRVmwzCpm1oA0s0DNW0=;
	h=To:Subject:From:Message-Id:Date; b=VhPtefmOt4siCWH61NYuCq44RVqIaeWXgyYXZJrjKHO4RfgwW0CFm7uuoEENv7kOChUuDwLLzOSGsoC7d2QSQQKVEpXGf5nvVMcDyQd7ZwVke4zwqz6pyqJqq+QbXKosde4rfdtVyLRa61+2X1z9ieVkkVwXOp03s8SU6XkTRwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ps95j1yt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ps95j1yt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4110C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771922093;
	bh=aDqk51z2ob//j8TjkdZguguqWRVmwzCpm1oA0s0DNW0=;
	h=To:Subject:From:Date:From;
	b=ps95j1ytdtXpkPudiUL2fMPeU98828Z8UWEChQGYVqUsWfCTgccsAxgcnSj2dBnyD
	 bQ6Ltagl7u3/0IAiVvx4xeD9vDRdngmYDZ69aqWoM5MgZfpInf/l9Uf+EtkLpEiNqb
	 jwFPYfhdrX9Mzox56U9nnqK8776nqzrGSbjoLTTMxs6Z88A99kKgZWTW/EqGqz9Sz2
	 tPkkvuQOWovlEZLPRRnCn+GWUqRxF3eRbCsIrHUpYPC+iXDMVrTc8CAlBdXMv9c+sB
	 z//J1zOCee52Dv/byNjT9Hzns2OgIBD+FYP6WCFR+j+5h38/QYzG9A/AoCk3d8k0k9
	 ovNyTEaIbWQ4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936FAEFB810
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177192209358.23230.8809857826916134118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 464b5b78e2f5a17c480abb517d63c4081def76e0c3f23224a79c285d8f21545f
Date: Tue, 24 Feb 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771922093
