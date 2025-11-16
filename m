Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4169B2BDC34
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 12:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763296854; cv=none; b=Kr0olY4qYWIQyH6p7hcGy0d2cVJcGPza+x8t4mExyuBRYPcIX+1LFTtGB9hpLWbPy89Ydk9WeAgOOFulzSCpa5vhnaWfDdiYUXPDOQ2h5UWeGx+ajfekVG6/Rxy/8mIs+rtmRtz/HMyZzjYS+alzIfKGXaJIwl0Z93mV8DG0naM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763296854; c=relaxed/simple;
	bh=2LCV+IacdGhIlSdGsGwRJPsGDNDA3sgcsix0HuJhCtw=;
	h=To:Subject:From:Message-Id:Date; b=MvuPO8dWa9jukGR6J030BnS55V8d1CPIed93cIOnVBGf0qa/Dtv7Xe0RGUL29QuIhNfI+lx2zlRnjEmK3kPw3J7J0JNcchF44g0TAZ8gRV3lnYYGQ0sYvq5PGs89JD9emv0ltXoPmglc+elCBjMPAZwDjUIQVk509s4LSrbiNLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DwjAQ9+M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DwjAQ9+M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44DEC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763296853;
	bh=2LCV+IacdGhIlSdGsGwRJPsGDNDA3sgcsix0HuJhCtw=;
	h=To:Subject:From:Date:From;
	b=DwjAQ9+MRAOpEC/SP5G4X38Y/iYOeivaIgdwjzRRtShY1QY8YmDV1XJMcea0HLLfa
	 AfONPQci4jfdoOk5mkM7xjT6HqasAdbP9z//tV13wxAKkLPAyQpk6vBrFjgwORWZrT
	 n2yr+V2Qybu031XX1Bw33i5xI8VEJS9jTwfqhvuI/PWZ5dVr6vpG0l4cs/oHNpmbnn
	 OOztYmpYzF+SFE0LQbZEd7XbUn4mIUqaPxYRJh971Zh3UhLGj2RhW4N7J4MWnyB+D1
	 D9QI28RqR4j4ZET/VL+DbxT1nTWYb9BmrlcJa+4e4D4B0/CxVE8mnoyNoDtf/QRZUa
	 4m3eOvv4OHShQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5DFDCD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176329685362.8247.16362675573358033098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7132b93d91a7ddd2a6abcbc60b9726be53f8912d39b490431e1903f42c7a22c7
Date: Sun, 16 Nov 2025 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763296853
