Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310204C8E
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728723954; cv=none; b=RMG2AMwwB0Wd6bOCONseiHQo7qj2zRNtAdLfPgCwtl2IG5YhT3KuFymFAl6QzLL0B/jGTKahUkMmLVuni/F13GMTqaEZ1FRLfxKsc2/QOLBdXV8zaX2l9qSbeASOjVx1R6/rUVx+5c4SUpFCDGITCvzYSrfj2ai090r6uMcPrGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728723954; c=relaxed/simple;
	bh=J+CoYWGpjGFKDWZDODOoWTCPjRi+Iv+gZdbC+bv0UNI=;
	h=To:Subject:From:Message-Id:Date; b=cqUAmF2USre1lFO8sdbttkliVj7xtSWNMnOpOdJZLclLjC+JgeozYnpdtN2qrA/z93AwXM5AG2UwfCM7EwmUxWuq0g4n1T/D8U9dAPr7AadBElmOeQWwjz4JpEG/D9NAT8kLM12s+gzrwdiD2n6IJR7EZMa92J8+nziaizwQIZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZvUMh4A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZvUMh4A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9F1C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728723953;
	bh=J+CoYWGpjGFKDWZDODOoWTCPjRi+Iv+gZdbC+bv0UNI=;
	h=To:Subject:From:Date:From;
	b=bZvUMh4ADH5y3VJtxrTbGcdhArujnkO0bsu/tr4FZkWq2uTsVpGyk6zIexW7x+xnJ
	 kRZdTH8z0iyAd1YGz2hB3lj3taU42A5sodwQKxHaejgbWVOLdpKAQIZDNepGTVCXN6
	 blQADIKHpvCwIdXWHQJKB31sP2fECNyGZPP1FussfY1vIUKJuIa8PvaD4hnXQ8xlqx
	 IYNbaAOV1xFBbfabtsTfYGdWW2r5qp/sHAmlzNnJtYqnh3pw0LI+3op0Y+AuDWYUvW
	 /zB8n9OMu6Af/B0qwm9TKsMPmjmCe9KH6a2+BOGJVH0wbCVTpUUxncSD59Yf1WcL1P
	 u6qdk+OgBSaiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BD9D1A456
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172872395360.30171.6160443113786137638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5be4ebf0cae3b355d05b87211f7bf6ed46bba2f241d9933a9bdad6ce897bcf34
Date: Sat, 12 Oct 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728723953
