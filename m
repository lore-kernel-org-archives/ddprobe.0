Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4B1291C33
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761385794; cv=none; b=nUBMuAMWbeJYbpSAwM2K0p4W4noAzPlevbTsy5hYZWnMp8VfMGa6/poG8kfCMgUiaMzJpi7cP9gkvSHY2eA6zY3b+O82Rjc5rrsj3nIf0fZPlZXIU47cmVvgGrirocYcmz/02UAO5zjmcoH0RViGhWCAmJEzBxdgPM55EZ65ggg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761385794; c=relaxed/simple;
	bh=7BbsRN6hrspQK4HcSWR6G2pvsN4mihPUu4Moprzw9ig=;
	h=To:Subject:From:Message-Id:Date; b=Ym45qIAS1A2f6owOYK3u6JMmhYcrLFs41FMflvq92Q7LYzM3F/I9nqa7rJYO1ePvVhHr07NtoEr6EQVM9nFTHaKbDBkOBBZxoelnRtxfN30ZAxJGKM1BgYC5D106vWO5rS2WUOZAGJc/Az3SDtKSbc2utHJC5cESCVpG+4X7Plg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GawsUa8C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GawsUa8C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFDA1C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761385793;
	bh=7BbsRN6hrspQK4HcSWR6G2pvsN4mihPUu4Moprzw9ig=;
	h=To:Subject:From:Date:From;
	b=GawsUa8ChxVJ6SQGHgu51Vvu1gOTh0BEqHxzv/29B5aXKUAmtNhRGoqi+catdSgOR
	 1SSppM1mq/i6SiVmIDEPRxhfe83DJWHs3vb7NkybE+2QWNGl+feTSOY4e05JUUV7Sp
	 6JdRBuDv3u9okAXUnWuYyN1no4Vr8O+bCJzojlQjljgaoCcyXzWKSHzn0Rc88l8mYw
	 lepfH0iKLMB8BrJbXto6e5yuks4cXQ4JBpmhhI78PgCjbx/w+eYwiF8W8rrEayvyxz
	 rwwbyyx53as2kztp1tdr9J6PUpxSVZqN77RCZ+zjQ0A6n6I49BKX/MrPKrsKZ5If8D
	 5Ieo1HaYY4Z4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D6CCCF9E3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176138579366.9171.8589138645124681979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a31ae2e7cbdfec1c3eaa2c058ab62f5c42de18ee937f4effbed06ae5da4c0bf4
Date: Sat, 25 Oct 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761385793
