Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ADA34A8A3B
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788196834; cv=none; b=c/RSJQuaDwq0M0C8mPamAJrgypO/pG5OBs5Kwsyu5c4R8SVtKAkzOiQU0Zw+Blq2mVC9bsijILG5xPcVWdMbujrGVyNOQS0Y72bf4mk0sYs+fLMUKKBm7oR2rpO7U87YCGcrKj02M8urTGBL6KRFYcBOTZmmZD4a5z9QkDoZVwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788196834; c=relaxed/simple;
	bh=/9vCD7H4K58SaoVR0YV6yhwkCqfpgLQ70RC4KmkvXHg=;
	h=To:Subject:From:Message-Id:Date; b=TndjDGLfBl90bKBhfqJ7XIg+MrQsePmRXMnsJQnJ7hYkv6p6kebLSfbkAD0Tw4V+MdTQG8y1j9RHnWc1JHzwDpc+rV8Wn9uy/9j9cORPn2gNvCY1eU2PrXEuB7sRy/b0VmDWk68Kupi4J3OwGNybWzlvX953qrMDyYU9yDoMIwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ifwjo/T+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ifwjo/T+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF175C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788196833;
	bh=/9vCD7H4K58SaoVR0YV6yhwkCqfpgLQ70RC4KmkvXHg=;
	h=To:Subject:From:Date:From;
	b=Ifwjo/T+YE9/L/Ly+UhbGx5zU3LSXxy1H5pW99uigHFcq+jMmvNIIyMS6DYBn7NLI
	 ZsUmMgXB0+cyqegqLhto96vbSXxLCot0/2eEMe4VMbtimYn3v1TckqgHGuCQyKAMHV
	 0W6vjimGi449H/g346gklM2wfK8sXk1S3JKgPMk+1WFMzr5+Y6xUXkH19ZDAqvTqcu
	 yXsLD10KHCRlGB4JibtkQadVwlrJAJA+REfOSrAL/2JlOEYJUn61OL3KLrR6EWNPUa
	 f2/MgM+U3SSQ3z3hxQ5FWMH3OICsPKzzSwfe411KZPxJh76OCkh52QpQeUT057Jo8t
	 BCunusQUrFkPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4F5C624C6
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178819683368.3401.11071967790076453231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f8413560decb7b4c8a07ab7634ebb377d0e8c7792352216003c9cf59b2bc36d
Date: Mon, 31 Aug 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788196833
