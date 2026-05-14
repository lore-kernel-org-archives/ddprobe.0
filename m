Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 702103F4106
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778786434; cv=none; b=rt0MoHG5dodVSZxNpdDxtPQL52dVevuA3VcVFP7l4xABTR+SbwTYTEsT4LRJZY+Tt8C/wdxe7nN4zOOIG7wJlWmWSqDrH7TXABtI0qhP8/21bZlRqY8eQ2vUn8gqcSLCmgie368RzyghkZGHppwMDlvlapaJfh9kcooYOXQaiCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778786434; c=relaxed/simple;
	bh=8n0jHVOCcNNSetq7iuFdsAt1AzKvYy3fh1wxz6yXKu8=;
	h=To:Subject:From:Message-Id:Date; b=Tkgu5UD42txpOrlc05uWQ2WiMFxQG1/V3wliNVgtcWh/7VkLYOg0uyjZGmTWYhWZLbOluS8u3OL7W8ZMWnuKcUyuLMojvycDtGvESbTwbmq7DgqNJyw6/nsjJ/v5joAg+fPtUitQQ8cum3THbGBFqxcC+4ujEW0QrSgmXytWNMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d1wLt1nr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d1wLt1nr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF8AC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778786433;
	bh=8n0jHVOCcNNSetq7iuFdsAt1AzKvYy3fh1wxz6yXKu8=;
	h=To:Subject:From:Date:From;
	b=d1wLt1nrB5Z2fKnv6EY0bukBK3DmgxXdwy7MHZh7R1RrS19RlHj13qfK2OhWwADTl
	 b138BiPbVFYhoPfL5bq33e/rHAXEIubgW+kj1r1c+f0zzQzLWZ/XHRN1LGcEnb/Ttx
	 h564n93+EhtdZJfPf2r41ed7i2hweGtWteGsWJdgMki+TEkBbPrn6fHMIK0+Tib6HX
	 mQDMTNm018Pds9OkYhUgCRWkh4ahw9GwDACbpuqvEJYjpexH4Ta4K7FCHl1w29mYAS
	 9GiV3TT/W4C0b3q+2wii0p6LS+8h+kRorpYoH0oOMjHPSTkeCVxiHlrbje+2xKcjCI
	 f9P+k4EcebaiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1DACD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177878643369.25321.11006163718029048909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78453cb4bd44f8dca2f17c13ff84a3a28d4fcfae76b87c7628cd45b8954034bc
Date: Thu, 14 May 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778786433
