Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 611EF111AD
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 19:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713728423; cv=none; b=sBz/H/mCN+r4/dTXm1ePJC+IKCTo5wWcaqD/nUHC7+32fFcoDKNiy4KKeJQ6/ZKcrKDcvF5stz5tcoof+pewSLwXrhYUK30WuSgAwOC8sskR7FU+DUv0W/1ZLYb2F9GDWcCPVPgHtGxH99i5UtezNs5iZ4NcRVsG4kjTz8EILtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713728423; c=relaxed/simple;
	bh=DsVbbUnv4VRtKdlnqx1lgZoqgZEMRRpSs1sSBQlhWv0=;
	h=To:Subject:From:Message-Id:Date; b=tAI1ZSDp3D97HU3m8/QYn7t5Fbkw2CoKAw1EJAr4kxow1tuXJ82XBqPR2mM9lsdUuw0tx4+tUB6niOt0s4ognD6gk5RHRAYOVZxyqc35gpl0DQzH06ydDGUHeAM0ytZsTmqDTRXF7QkflN2wez/1acWPBrxibdhbfcdKjV0hUeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lWsEOZyX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lWsEOZyX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3C43C113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 19:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713728422;
	bh=DsVbbUnv4VRtKdlnqx1lgZoqgZEMRRpSs1sSBQlhWv0=;
	h=To:Subject:From:Date:From;
	b=lWsEOZyX5+zsrbvKH8mZC8IgNBoQycbp5HOr4ISRoT2f1hMiQV0PsLXlnT/S1/uqq
	 kDv0kXAqWhZKXe2NW742cKpdgGDY/jM2PVuqwGCzRaUwUzTnQHQRAL77rlEHEkCrfo
	 iVpiSDAS6ErY1XXcPXEicUa3eIuCJsHLbX30I66xCoealYZm1qIbbM4MUjDvOsIbEB
	 ahUbuS8MntemfVtxJHbXcsY04Zn95b1rGsDbCaFmb4+JCWyo7snra24xwl615gaojZ
	 ky3cpjgnR3xebNL95QbfqCZ3W2DS0yIWBTYw/r7BZgtQqADy47IcoVh8fQ8OznvnQD
	 T74uNElyJa6PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCB25C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 19:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171372842281.22530.13618515352270678594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8494e84e54a35e06dad870c7eb202bcebb2d622672d5abd58cffd383b9b16417
Date: Sun, 21 Apr 2024 19:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713728422
