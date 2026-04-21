Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAD3E37EFFB
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 06:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776752253; cv=none; b=GGIpPpga7Y47AV5gSGJXIBGshqhQhvd1iQwyNGA8oPej5qM/dFPST0II7ZDIEjl/GeXAyOGDfDrQCVGsJn65F6V4aUF1b1kpS+7kDVbDwMlOTLoTibfMCQVEG5kTRNKTFFTZLhVuZ1RZm/6E84sG8gLeh32Gm7nltQZFbJVjB3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776752253; c=relaxed/simple;
	bh=3kWPfa6ehtrqu9TxzpA1hrNsbFuUhPihpqpz/EbxESs=;
	h=To:Subject:From:Message-Id:Date; b=C1o3HURx2CUpcFJJYX8Fy1Fa/tmt/I+FYinOjhZi1KOg3EiUDNaGV7e0jVlwGV9fitfJdIpe6HwieEfmu3bvxqs5ihi6dzYJb4TkERXgc5SdrigKjOie6LYUMBTdspnIsSgdgm8sYADgsjvB18HJrmVgut3SktBMviUiObJTKwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8p4s493; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8p4s493"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0920C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 06:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776752253;
	bh=3kWPfa6ehtrqu9TxzpA1hrNsbFuUhPihpqpz/EbxESs=;
	h=To:Subject:From:Date:From;
	b=Z8p4s493QM29eF1Fq4cf0F+BJlLMH2W4uLihzokQHRlXwEvzrCV09hZbZyFn2KUnw
	 TKqHOrDfoypEAt1IpDhETxcFyzyPfrdXoeVWY4/aJdLY7sxP6b/1G6tV+5JNwgO+JE
	 iXCN3VjQfTcpPV7Z3JJXumLK28tpLTd+l2DNlnxGU9wkTjxEKM7QrHVew+ypLIq8L/
	 B+S1MNJB+AJqZEY30KWQg6AeNzDwHYrLws1r7RPxFCrzCyh63Mh+wPzjRXVvVBc5Wp
	 WhwDwIFSn4HoBhGqusuQIGCwabzNukreSINONC10rcxHYq+MCO6A78Q0kx6QerighP
	 okr70O8dHWm0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FEDF327A6
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 06:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177675225368.8941.13404785274579028506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a18e6c512a21ed2da043fc605e9cd3096ce626796542308dd3791286146eecb1
Date: Tue, 21 Apr 2026 06:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776752253
