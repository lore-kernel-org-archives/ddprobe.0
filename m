Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A4E2DCBE6
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747966194; cv=none; b=Pqqy2vMoVKwcn5ZlCie94BnC7U8AiKHve2ZlRNMTo9P3SXEQH8kNf2fmaiHr5lITGTUt6WnP8J/10XwxAzWNrCLL4ypagi6hhJENiVaYxVPTkkvQqg2WhaOdGAb789v3HC4hNaO+Sr4Zrynty4Q+iXuWemRtb2C0txVuc+Uo5Oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747966194; c=relaxed/simple;
	bh=8TMJET6UlGkd47NxNEQFwgYg8CzL1VU+vU1hGseBQVA=;
	h=To:Subject:From:Message-Id:Date; b=Mn1OPFzlJ8RefotgX9KFRrTad/nx+oRQSYGMX78GwAGfKs30mn+EMxtIJ9IA5i+ddYdLmXz36iscbLzSn6+tMhSiJqMC+dpUOFqTnZ0LUx2XE4Fmmhcjn3AQwHaT+O3UnNF5OfLNU7w9YUZjPfUfwCKXfAXwCJefFPrlbtD+k+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXVQCvw2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXVQCvw2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5810C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747966193;
	bh=8TMJET6UlGkd47NxNEQFwgYg8CzL1VU+vU1hGseBQVA=;
	h=To:Subject:From:Date:From;
	b=DXVQCvw27dR2SM0hkO1dthnyZuYN6gKO0HCW6prhgrB3v5dBFLAreadD92GKniYyo
	 xQIeNt9U6gDMedv0UBwKYK4m3De1YZxC6sp6uoPDns3B3ofrLh7TlHChE4F4kcOgON
	 wZzJHehUuQhCVnDqhhMgFj6LoVMzymuTIez5JU23FiDw6px2KJ3RaQVRadKqnvxo2C
	 qPoXEp4r0epnSUnIBxL7PC/rh01Ga/BBjshZPmsz3XvV3hzWfoBVcdO2kqr6wJfZBi
	 MYVtl9oyi+XE5WIuen2K/luc9FoVDzqaToV8toF1ohQqz4HGkrN0ImCKNZzkfGIFnb
	 cYvBX3Lg1wV8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CECC54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174796619357.16286.14696707425459995853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eba5fccf2204b10e99f2a641b52f503e1071dabb096415665a5b7ea30a93d8d
Date: Fri, 23 May 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747966193
