Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA67A945
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769213634; cv=none; b=RKlvTSpRUnF+sSATtWEyyYOClypoyY+yMp4OO5pCEdJGRXjsnlxkgM3zBkKvgB6wptdi7/+NnVlz471xq9s4laHBMb4oHeFvH6lrfgbMjWz80pPR4dLcJfRkRDZTfX1TdMX5QqeqOlWLb5M1FUTivA5OKcZnKr1zi43MrqHjVFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769213634; c=relaxed/simple;
	bh=MjY+vsvk/0p3fYPdYHQEXo527LO0zonCoXidOzamcLE=;
	h=To:Subject:From:Message-Id:Date; b=FWTm4wFtr5aO+Q06q6mlcTtv1HDHSLNOjyT+eJn3n22Lq/77rzUHocp8s3xbsyIbtScgYoQcOR98JBx+jqeZfgk/6wXLq06cAiLhETCIQq4+8LuoKDzbT6xrIPRqVojD31IZcs0MoG4gNSzl50zLpuv3cABumYj2lIb8z4/d72g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJ+6PBI0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJ+6PBI0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0B2C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769213633;
	bh=MjY+vsvk/0p3fYPdYHQEXo527LO0zonCoXidOzamcLE=;
	h=To:Subject:From:Date:From;
	b=FJ+6PBI0jK2KJfgd5bCjxlKuCq4DSKodPvLr8ery+Mb5ZK4YYFWbNrrp/Kp0c7tnq
	 DY9x/YvBFYNWeHI8LwVwQ0xVWLjTCgO+iKs7Ge5WJIX7YNYrnG58LqS1vMDxVYgl65
	 IwLqvMeMx8YRLWc7cl3EVnVEsl19PMtBBvvtEEodoXpnU6v0Rxncjcbw/Pcq6Jq4m8
	 ygaPyYHq4r99OOl6wAmsDQ1J6TLQfK8RoMJXN52UVOR20BqOa5OVPvn1IRzSQW/3C1
	 BZoI/Hcog+nTlSG+azP/OY9jre+nZLwPKLw5Sz3UozB6WesM7L/tWd4KcOH3XLK0Bx
	 biJmclLy83bKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFDDD778BF
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176921363358.29072.10158075686763095819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c48a2e6d1f3f181382bbe10981fac0df4425c6cf1f40cd4997be4e81860b911
Date: Sat, 24 Jan 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769213633
