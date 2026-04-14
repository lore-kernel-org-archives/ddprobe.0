Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5FA1D5ABA
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 14:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776178654; cv=none; b=p5RcGdp805LSUjM7nqtbyDpIJjvmU0NQXzqAABJAW2GuaNMj8uhHrfGgWSfu0dJWaupXWj+n3tnxwI4vYBGAaIH5gI8AwwQ1BC/tcC1gqTb9pA1WJvwfw4fYh55htA+rAES37Dio5IT1QUJiHXsLylo6AY2QYXFZ7p4r8CMCkuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776178654; c=relaxed/simple;
	bh=Gm9I8V6Sji0SzzhxBvXFgvbbN/EArtx9iJDgaWcclxM=;
	h=To:Subject:From:Message-Id:Date; b=X8XiVabwy6iWIDs3kmQqwvJDsx8f3zDLwhmmOt5ks2FAnT26Epx3kavrfYZcQeQg6NgmL08lanjq6dh7c8T1psa9vdWUI66QeirTvq+dRjkYL1UYhLyD1CWxHEyPJ1Nk8/9bJ3bFTXkoS+aZHC86nRyHp18oxawBDyGSG55oMJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tLbXztG5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tLbXztG5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06C8C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776178653;
	bh=Gm9I8V6Sji0SzzhxBvXFgvbbN/EArtx9iJDgaWcclxM=;
	h=To:Subject:From:Date:From;
	b=tLbXztG5UpH/2POYtN8KVD2IT+Xc/PvSIXKDHq3RBc01RqhJ6zvAd93KpRS5eILzp
	 pcdDUxeO7lhk+Gn7TI+UEB64/O0TGr9Xi/lnhi9CTfebN1y4xOSP2hmu/Qy4MRW9tw
	 oRU51QrOqOVG7NlFp8+IO2m2FVRuWcb0rgf9EjxuUN1cv/uh9jGljM6QtiyQRZN3HX
	 aUre997MGiKwv2ugIojpCaYRmaJdzwpyaof/hGI/8gpts/kQvKrjJw2q4HhKGOkzH2
	 ct0GBYvLIF0Qs3CaVJohSTPUwDNkmWvTaHSz3jiBfDSdxYgSqgj9Ab25P+vnQ3BAnD
	 wIdaKTfn5K0EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B669EF9D0D6
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177617865373.15492.1842622968192211524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e91dab9907c5808e8b5bb23d3fe02f32c8b35e70eb20fbe3a1122579d9b8e53f
Date: Tue, 14 Apr 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776178653
