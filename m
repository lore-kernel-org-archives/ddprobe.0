Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D571531E8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769205234; cv=none; b=BLqD07eVOchPr4cGVTCqO0xrMSgpmlMTzwW4uv4ARECMUcWnRSWtBzo+XuU349chRSM4NECZY5E3DiExXeBFWyvizmFOhKGTKwgI85iW3DAqeFy6Xpko6Ws8dHMXHAfM+1hVGCzy31HFS6n0EO/7nlBwyFfrfeCrkwz7iYZoGjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769205234; c=relaxed/simple;
	bh=bpxjVnG7C8N7ieDE4eL0LLtEcmsCph/PFRUAaNU8N5c=;
	h=To:Subject:From:Message-Id:Date; b=ukOF+cxt5UR+3VV6m1mm4LPKrEpyCZuZ0bcM7P5XTnFOBmEVOo92JoFgB6BR6OUnC+BALGWzDjnyTiejgy20B1GkTDoUZaOqqsMHNDsh6B71IfiJD5wsdA+Q1NHCApCrYq8O4riWmijuvP8SeLhF/2dcCPhJgZ3NSAd4AAvWzOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBWQdg6t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBWQdg6t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2009C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769205233;
	bh=bpxjVnG7C8N7ieDE4eL0LLtEcmsCph/PFRUAaNU8N5c=;
	h=To:Subject:From:Date:From;
	b=vBWQdg6tP9dbQ0qJwTBSmurx3aJZtbpzxlit9TPJ6JNB+AIwc34Pe8W2Ws9Lk3U3Y
	 95349p7K0Qo1YZ2027r0OeLOJI0nfJ0NJIuKfR3s2I4X5jb1pghytNliSaw8KDwJ+v
	 Ep89KSc00GZCh6P/1Wn8Gp1zjIyRloPkshgyahnpLF4eBIzPlXKe8BnF59u1mD0Sxo
	 DwU9BOjPILYBVJGc5kGjhcffLVj6fDSnCZdAQE2yCXyIcxLPXR0c9/TeGyPrQxu5Qi
	 WS8XQR1QOnAQJ/ZB+DIgnEzga+GCmat4tPqrYsXJV+hmL17HYmz//kPSNsrvqs6nKj
	 28od1YGWxuPHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F979D778B1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176920523358.7599.6724374612236641330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b530190fa25cb45330e94042efbabeb5976ddaf55b4e166535497d15da27ade0
Date: Fri, 23 Jan 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769205233
