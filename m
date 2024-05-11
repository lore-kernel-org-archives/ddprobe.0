Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF722F26
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 09:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715421143; cv=none; b=qzwHKE61WKgh1fs+QXkRvUGmKRsfCLK9UWcmHHY4hHu0QqonXf+DZWsR74i6g8TreuCcp7Gecm5mJDvexnVuoaYp5BV0HTx5bYmMGDv9DhAvuGrK0/V2Uh1zlbGfSDQKEp+70Pt8TYbYHbcjT6J4bXkEPSNfKpnVf4/BCC0Ti0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715421143; c=relaxed/simple;
	bh=3kvWwAIDQ3SZHMm8Gfz5wl1HIaYX43FJFYMaSrGNBTQ=;
	h=To:Subject:From:Message-Id:Date; b=G6Y4uL7EjtPpiR2a36Ev4C18Y5gXUOIDdma8Yl/7fl8ICA3aV5zTChBenhC/9FOQ768TsnrONu3iZeaRmFt56dkpfvwjloUU2BAOUNiJ8IPDKE+OtsoTFHxiSkG1k+3lq/crlJNA+kyo/wYfFAo5xeshO+n2/VH8I3K6ta2Wplw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sk+JCijU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sk+JCijU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D84B9C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 09:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715421142;
	bh=3kvWwAIDQ3SZHMm8Gfz5wl1HIaYX43FJFYMaSrGNBTQ=;
	h=To:Subject:From:Date:From;
	b=sk+JCijUs1xqdvnnkWjh2cohNbdrC5q66hak4T5pQ4wo2WlALpbu32P+koHUjBAwL
	 2UzuSvOWzQ39FPVzYBv3uQI8731gf+eRtueHDfpxiW1ZuFTXX0BeTnQlhdRFD0+2hy
	 14x8mL998mTRPtOupSQuEz2Ntm91JuziJsWG1DnP+xG7CJmdif1tIOsd+fJlDoSXf5
	 VOVf7kqS7xYo2PYqyS0c1GhPq1eVJxiNmjg14miixYGPccmJNvUk/lBEBdA+yKQbCO
	 RsDgGjUEG1bKZxoQM7BUIfwhQDkwqvhWxGB51sW5FhcfUUYUKJLhagpTb/cQsXDcLw
	 b0tU6WkOTd86Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5466C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 09:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171542114279.31375.15251176843563202701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24497a3c60d1a51f01c87807f19b146d8a4cab6f80103db4f2ae3b9504b528be
Date: Sat, 11 May 2024 09:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715421142
