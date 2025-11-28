Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222D822F76F
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 22:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764369174; cv=none; b=q3ue5WEUoTMZTOJnDjU5bVESp0tzZtlJexwkyXuMWNeKeM+Kl4Pa5C/95q9xUK1s1/FJ9w0dXFWrtOYVbRzZhiSHnfSrkqK94x5vw1TSd7XGdIp2zAGFI+jdYF+A9g5RL41kRFVqur//DWqckfZ3BYyinkkZIZACXxVjB269FvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764369174; c=relaxed/simple;
	bh=9DTSByfrAvWItJV2y++TaPyo9xKCBoL7kV/wsu0nazI=;
	h=To:Subject:From:Message-Id:Date; b=VBCC6DqLJiqVKVLyVdDRlsZdtc45yYK2LnPxlVwkt+EHe6d4/s7QUG+C7nf2+NvGqE53V+vLq/y7MmA+dN5f9Sdpi7HvnEUYa5JamgzWiEQr+Py8R+iBfD8A1K9brnsGyCSETLmr5xfztO+uFXfxcb/neYJmEQwVmrlJlaHeEsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0UUcdXP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0UUcdXP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA162C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 22:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764369173;
	bh=9DTSByfrAvWItJV2y++TaPyo9xKCBoL7kV/wsu0nazI=;
	h=To:Subject:From:Date:From;
	b=L0UUcdXPcSQlBIvZZmlUqpPUADHujZEV0j9q+gr5H83/wjmQsswApl1UVF+qQtjjU
	 xGXqNcpwM5Uit+t9dvvQ4NtCbHyTTkLwlPGWKuOK8YQsfE5C9ky28iY/z8p8SYBy3B
	 5VTSjc8aFRv48jQJoIHsofz3NBgxuGDhxYYugCX3o6jkzUOP7Rt5Vkh+mHoBJm75dj
	 COYLGR8ki/wb9sEMtRxntmVDX4G4fxyNYHT/xeOAFtyrl6DU9SwoZMSKbe/lheNKJY
	 q+bNdIXQkOwdooo1X4FWbz9q7tryZ9RdMJtacxW96KSkcviVdayd+dy4g78mEKCM3I
	 8dsn1StfV4q6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9425ED116E2
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 22:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176436917358.27032.7716891409377661871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b6f256e440d28a2f5581a6e1f0dc79f27b97ce5e9b54c917f927b392fca7e16
Date: Fri, 28 Nov 2025 22:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764369173
