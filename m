Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E0205A0FE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 21:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713302963; cv=none; b=cQwqTEaCOQ97bCKXaollaBidpVHrzBEuy46ddHKVDeYMs5kFAVXDh8S3XH33im8vsgSWjxNjX7WJC6eDnnnxrSWlbOJxbEnhwY+T3iBgQQ173pQoIK9DYFdpyWS7+GZC6w/xFZt/L6KgT2HnLBQgZV2J5j84Al5PrplRuxP+JTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713302963; c=relaxed/simple;
	bh=hvf2/vqu6ZtaQZaC3vFCf+ylVssiym3LZeYKp65q4gk=;
	h=To:Subject:From:Message-Id:Date; b=p0XoDh7LPFVu+D11lCNAIdbb1zN2LSiH4XfqaoqmP2WjR4bJexK32y1Wp5HQ8TDh+ivVZVLVfPskr1YyiSi6XVJpTU+JCEQrFuUn7RIfuGKgQAtchtgfTTSDtDlYaELrLCYpEVHIJ3ALSEjKCP5aX6AJYyGvueNr2B0r9FpWDJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LI4qTiEF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LI4qTiEF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00D28C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 21:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713302963;
	bh=hvf2/vqu6ZtaQZaC3vFCf+ylVssiym3LZeYKp65q4gk=;
	h=To:Subject:From:Date:From;
	b=LI4qTiEFNeVU3FbY82R/Lg2p1WBFZly+u832ZN4WNluPsfCFZlMb4P3pFKbD3ZGW+
	 UMwTHoL3VYw6KFOPNj0bRe9RUWL8ZOfhDcanWEX6pW5UzLvrx0vG9tWlPFJJDzSV2C
	 NQHfwITRFVlGXpO+RpCETK94//By9P19tE4KT5KGe9NPOj4LB0VYI0ePK/wQh4CL8f
	 JhBrFFiLeEUt/LQdITwkJDbrFmrRlMzphPj4Q1mIuj+ZmE41ru1bUzrKUEEXRbQ34n
	 RFFTKkjy2LiHicyhyPl8P3VCLXOu7HkWEPf6PhX0hgCg+apr4XUcgKWyMPPu9ODS2k
	 upJqJ2QSGQCMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D523FC4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 21:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171330296284.17433.5654294581605517356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f49cd49ee0a4a2c528639bd3e5d251dd733d44782e0834d1e753d55c08ddca40
Date: Tue, 16 Apr 2024 21:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713302962
