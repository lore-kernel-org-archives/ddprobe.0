Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDBC6ADD
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748698794; cv=none; b=FyDjoIb1ak+aBz1BCQoZNclZp3/FA50ouZryd05sMOYRbhNCb4TykEoNeXRr6Y94TorEBrTdcgegRJrq7ASzLMBnGord8p23TtsIxOigdxPxTheGua+acnSyj6WdfDrSxp+mju2OXud946n7YeqNKzvvKTtCKh8N6OiQvc7lKiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748698794; c=relaxed/simple;
	bh=MxraSwjI31uA7vx+TvhSMmTpNTlR7tco+dVA7SyOWec=;
	h=To:Subject:From:Message-Id:Date; b=nASMxL8PoNg3Je8Wx651nH3LZXC9QiNxyj10NEdn1tNsOJ92FFnbjzdAL26lvzCZppt4jQ+FOsB/nuOxZjr1WQ0oVSpZWWXwEdpHdqiiJRahsSlOYeIYSPDr5KY+MwhiuQnW45bcZDkX7uSBWDNx7xLg5RJK3gimkgjw8t61Anw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eaNpRLHg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eaNpRLHg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E15C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748698793;
	bh=MxraSwjI31uA7vx+TvhSMmTpNTlR7tco+dVA7SyOWec=;
	h=To:Subject:From:Date:From;
	b=eaNpRLHgXRXFTn9TqLYuwDVJn9ZzHlkW3rkT0LVzZ7PMODD7gSmu/fv4pVywjr2kb
	 0Ho7GMx7v9HCX41xBve716DBDHeNlXVLXeDhAAv/t61R0A1ZAA3JysndaZMbm1hqiy
	 kKLceMt/FWf6cCoI2OYJjGy+8rOU3A4u44dnE+QyICXJdcxP9t7H1QUN8V1D5Uhrrs
	 InEkZOKE712s24hFKpULgjemHIlQ8KE+pQ83m1FVG63NhNUcKkYregql0SJCB8V3F/
	 0AWTSrfDLjK/XZbdnW+8UCvBk3MkswucvUivepknEHUoBA6cpTuTzKjazewZyGGQ9l
	 v7dzo6esE6ung==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94596C5B549
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174869879357.25255.13427066172463092375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18b9de4d03793b3c7702266d8c72eace7c0fbc08a0dc6e8d785df3c808abdb05
Date: Sat, 31 May 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748698793
