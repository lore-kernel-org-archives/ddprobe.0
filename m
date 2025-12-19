Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCF02C21F0
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766129634; cv=none; b=eSIQozaBr90RSFdTGatcEPP5ehE2N9Oyf2RujpOogPS5UoYQvmjoJHig9S4/vQSooanOyQCmGfMhtj99jhATRxFdNhcYPDI+66b/eDUE41YqmL2WnHACtTeA7N6EHLx6njcKc7fAZxmGGteTpacJzmCSIkXEvpkfuWeWN0t30qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766129634; c=relaxed/simple;
	bh=ek/C8isWHqAGT8hp0jFhn9IAmRVhErAGQMU5NjgrPQM=;
	h=To:Subject:From:Message-Id:Date; b=ZvX/xEHWGnb07bDEvurKIcwMk6PJPs3zsNwotJc9aZT8TSwl9084rHAtT4lmIXDIPLReg2pzUMhohN7HaTlhbesiPD6fC/BVzOF2qFJ1215HVttQ9CgIQTM4oV+lkHwNoK+Icn7IZswXDPu8y2/+10AleRNcOKYFosOIbqT8f70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aeBxDDaP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aeBxDDaP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0299C116B1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766129633;
	bh=ek/C8isWHqAGT8hp0jFhn9IAmRVhErAGQMU5NjgrPQM=;
	h=To:Subject:From:Date:From;
	b=aeBxDDaPklqFwwxjSzNrqvyRXWSOTpXFem2dSmbStxhkUBHqG5Mdp8RCmmck92S13
	 Hq7L2bCzeqJaW602elc0wLUyQFYA24FS5jnHfQjmhYMiCFgpSrcBav/ganAWDOwyvL
	 ZvaOHHjd6j/BvTbwO9/oydGa6ymmGy3Mt8QijoH4fvfDkyaOuDP5J7p6CCfv+hwSPc
	 ZdL3UfxY4wTzv9xKX03Yt4qs0PWrpmrrCCb3imniwx6hHQ4yCTvwLb8fyiq9ssOLbk
	 S7LSMId+XpccSCIxMKumKH/8WvJLU8/PGcTWUkmME2xUVG7el31SecDMTYPCbPs63y
	 ZunwpExeUK0Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91460D7495D
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176612963358.6016.7904063238391374830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32223c8b6eee57647ae8af830099fcf9c547e90d86fdfae38c31b6aa8a8f0d65
Date: Fri, 19 Dec 2025 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766129633
