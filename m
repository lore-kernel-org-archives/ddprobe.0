Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08DE41E9B1A
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766591634; cv=none; b=lFUwm34PS/rs6E/BkNmOz1MIL1YP7ONWLnSkDhkbEa3NuXQcJ7rLaL82s/1FMGbh6N6xtMKVSlDpmeGtg9cu9NfRAAnk08BC80SmJwajmW1E2BsTCe2P/UHi0KPFyLBs/pRokecy07zN9rb+rKTwJ+DPIxNWO7fVieOeboFMgHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766591634; c=relaxed/simple;
	bh=RA8OQ7jTU2jiA8mfVhO+/0UAq4eb+ODCb2qSN97EwyA=;
	h=To:Subject:From:Message-Id:Date; b=SVHn3dFFvugEjEV7XUgTcrJr87ny3MA2HN8gcS3shU1WHZi2+Jkxsp3Vybb85HTQjh8+7WrHKi3fWLRR9krfvtn3pd5weEs42nsPhzuAiIhJ5cYRD7ka+/ZsKjYSIauazttFP3UrWwa9uQrF+C2KHR3Xi9G8j1xFKl6TpxqXZbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVmCvgYH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVmCvgYH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0952C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766591633;
	bh=RA8OQ7jTU2jiA8mfVhO+/0UAq4eb+ODCb2qSN97EwyA=;
	h=To:Subject:From:Date:From;
	b=eVmCvgYH2TJ+oG3eWapYGK1MiUPPxWuJSA98HVmprGu9hPXjgK3G7MGLDAstM4Hep
	 RZUCkfJssX1uiWFj1nk3STs3Qi5A+vkllppkZUQWvmO7PWoZyPFvXpZMS6WUYP2TAx
	 D0BtgHSiX7N0PD+4hsD2xBiZ7zjYck+X/k/MON2VNkdIOEA+CAV4KYJwVcuX/rRmkh
	 y2pXmWcOeDbX3cSbPeEyGwolE1DlsE6DDX0OA2uLwiVMlUK2Nc3d1Y5GLHWL51/TgC
	 JGhPxmGY5j6hAXwscLXGLP8PKT2aBqN1KL1Z94W/5lhA0ZOwPZI6TB/Wi9oX/nrIlN
	 ceZHqlybIfwqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E1CE77361
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176659163358.19465.16297440705444913728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a234436b688e606ebda953a98ecbdf8cc20953c90454f754e8c3496a2d6a0a07
Date: Wed, 24 Dec 2025 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766591633
