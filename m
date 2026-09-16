Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66BF330EF91
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789528834; cv=none; b=aRcAz6QzoTWcWDOOWwoWZqsdmT8ZpOMQ/0mzOioTcx77EY7cMCI6kil4JHbzlc2cj+HiG6QzRqTj2UBBSDzMvsf5xxFyv51/gHGPfq+rHaGjkicvsgeIEuN4rNxPtAXQ4h7LQqW3nYiavybpYG9m7qFFx9vcSk4c7SxQc03n2M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789528834; c=relaxed/simple;
	bh=4CXARXIUI6ZCzCIpEzm0azD/rWcp9TwC43w+Ngf4kuY=;
	h=To:Subject:From:Message-Id:Date; b=TlbhOoN5pFf3Vg79Qnwd1R8dptOsKmx4lryxlWqoxdfDbnLBdrjIfqd5a1EWeYoJ37UnD8JAbIw1ZHCuNS/SJU713ftYHgx5hg580iWpMS3xRaOGmJwEZ00dRcl9QIh3pxyax6/66DDbiR7xycAPYBCb/WTyhg66a/nZwhceSoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KSrXkY9V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KSrXkY9V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E02A5C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789528833;
	bh=4CXARXIUI6ZCzCIpEzm0azD/rWcp9TwC43w+Ngf4kuY=;
	h=To:Subject:From:Date:From;
	b=KSrXkY9Vhul70PIXIQR0Bx4IP1QEHO+VrgxIsDLSvrvOylPeAudHgsT5g5SseRuu3
	 NItForn32Zfw6UHKMmncCvVYmPFBOkiqfu/u6NnifkAfDps2VQmmFgZtlj8z+KZLPR
	 pDa0JrMQOK2ZFag90RTeFzSc6AvO648W47TB0rDywdZSKUm9MqtgP4LTWZ/n86Hons
	 faljJJRJLyjEfro3otxPOhYWu56nu12AJ597eGLtVcwNPUgtzJwhNr8I0b5x+LOwh1
	 nkTsJdQjB6okCZJWBlAn974IStQn/ser6T7uwPKCaRVjypU/WYXnCG3ZQdnhs1lKvS
	 UFQxdznJkBFaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7D2FC88E75
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178952883374.17519.12074887917709213891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0125e7e81ca411d70109f7309858a3bd0467e34b9380ee0521a31faa0f39900b
Date: Wed, 16 Sep 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789528833
