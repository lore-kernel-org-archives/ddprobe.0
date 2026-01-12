Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2412E275870
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768187034; cv=none; b=Gacqdr5mcB1EpvJ/0j7sEgOcY42/H4ysAP2JctR8bUK7x05YckoedxUzFDnn0+NCgWjxHhkXl/FVNohHPlxlZHguJdX11D2d1xrPj6mOtOmux59rmWl1lorcp66qPdHcD4FG1X5cj/Shx5M/xhMnpzrlpi8T44IYUkklDT0c7IU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768187034; c=relaxed/simple;
	bh=x3QUnVWsaENS63ni4RqDSzFgng0DxAppAgU5RByhX5A=;
	h=To:Subject:From:Message-Id:Date; b=MPEc07F4uX5h8z+Z8kQIclga1OXFDlo1ENc+E1asL7EWWGEBZnNOXBHUc3IxVWo7mMuMSqbd+a9slwNuuToZjIXk2kwBb7o38e/T2EDX5KO91eKIKSNTsMMuI4KuFlhc4mWuAsaWlUledhfQpEcw2xlXJ+0lZzzZbxyA9IPFDb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1FLVOEM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1FLVOEM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A16C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768187033;
	bh=x3QUnVWsaENS63ni4RqDSzFgng0DxAppAgU5RByhX5A=;
	h=To:Subject:From:Date:From;
	b=Q1FLVOEMRo8pp14fKpLw+Xa45g1BlSrKGsAOb7c031D+ZAOjTXSGcAmI7Fht+cdFF
	 iPHuWx4F3rXmdCGYTeuAL2k+rAfYSM4c3fCOZugBXbzT8zGymAl3Q1HdbVCex0hKr8
	 HuVocugTuMS7MyKU4lWjkVz/SttzjZwMMrFbeNYOclSD9IgSZ9H3o5Bw16vK/my8Lf
	 bz4T0d2VSdBJS77RH27yOGnecMyAS/lc0TnmimDE7su29WDiQE90HW/fyaiq5hYCn9
	 OqVtQhEuRnhigRJVlZ2dLeQLYnJ7Eh4hGrb+vbXLNJbNYbgoQc35wPJac3A5c6Wran
	 FBWaZWxrqU+sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92270D2502E
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176818703357.11145.1904389316549180062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b206a690e822fd0b25a070cc27e94c281bf884a1d8d6ee7866f0943795ea58b
Date: Mon, 12 Jan 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768187033
