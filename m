Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A8733FD
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724116554; cv=none; b=p1j6FPSY+ecHklFxlzayPQv0EdT6jxOsgb00OBdrly6ukS4zZEvyyQ0ulicKI6ZkYlgJOD8MHK7MSg/t9gIL3I/ixw+mXhK+60RzzLJazjwdxRP/2D3IR6tWJVgxUndejliC3SVkGI7MaHGhW18GhAC4XqQIs8XxDFWKhsweKcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724116554; c=relaxed/simple;
	bh=nMnAHEIRbqGlNenIumHzzgLZTAVAVFzecubRbedpbGo=;
	h=To:Subject:From:Message-Id:Date; b=ByfEbnJGCqbdWWquUx+6qFxkqqSfPMOYxFS3m5pCDL3Jek6ygU9TfaltHx204FMvT/LT4V6wwUIRMnovUO6pSfJP7ZjyJiQxSF3teLx9wwLf04EJEmrkZoZlMDfY0QYtQvhQD0OIXpTUmWRAlkRcmt8NIYSV1acmdjSGyjWjnnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8KjxIt8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8KjxIt8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA91C32782
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724116553;
	bh=nMnAHEIRbqGlNenIumHzzgLZTAVAVFzecubRbedpbGo=;
	h=To:Subject:From:Date:From;
	b=U8KjxIt84s2nvBwL+ytdMiXncSeBncWdbqOfWYIVJ/6e6x6KkZdo/lDoP6S9ib4hd
	 1nH/kqoeAXkqY4X356KbFi6PcJXcYSzzqtNQFM0bQYXpqqohbd+V9j57IuzhDX17t+
	 GvetSTjQkik9PL6MIwy+naOHFmo9leVQXjTRjFd2KE8TyCUd63bKd6aLCBfSvCgTb+
	 l01lqzAFsxC//EdLONf0ntJg05eSK2/Ykd0LiymcXWsNE1Z0RKsiL57eXXSTb+jcKk
	 MDiCG3CPL0h12WVCNhUCPJB67JE4EuqLkhS1g7uV/O/CTXue8jAeI7sbAPHm2R8cCG
	 0nP+5T1ypeQ5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B3BCC3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172411655362.9068.16205113100617871764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fffed70efa1f50a0fd96029eee63bb871d1d5c416a87dafd829f72b93efbb7fd
Date: Tue, 20 Aug 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724116553
