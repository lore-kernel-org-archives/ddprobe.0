Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156A23126C5
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769715834; cv=none; b=bFTb2cvDHvdTICCH15rZGnzqOz5MKwro0oMWZP2XeisVzK7du+uh2oumddw6oxaXuX+e5blq9XSNIa0jwPQjCswyQhhPrWVccSjtGlXaq1gHSrvlkQKCW8UaCYKdpLOYMZBZEPifeS7biu01yOCrV2fprYgjenW72PH5Jbl0S0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769715834; c=relaxed/simple;
	bh=ro2LAYuESrZWZb4SfxDU08sheiMT8dy1Radd++Kz4eY=;
	h=To:Subject:From:Message-Id:Date; b=ly3//PtizxfQd8etXscew4pT7TdlapiBrtWDoGYL8vGsH+yPIQGAwSGheOOyyYKk/lAboND40HJu2qiYU+10K50FeFmlZ6XG1Cvr8Djyak61wTZG7C7wYQPpuvP+21BRTDpYy5Tz6KbRBnMjW+VTkXqL1wQ2RX+ob9MfgvNuBGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nXhFoNeF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nXhFoNeF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72AFC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769715833;
	bh=ro2LAYuESrZWZb4SfxDU08sheiMT8dy1Radd++Kz4eY=;
	h=To:Subject:From:Date:From;
	b=nXhFoNeFN6xJjkrYXfxwSCS46utfyCdbTZeSu9c2as3xJriGQx2Qe7LThC0gWOdsr
	 STQs3ghRMIRApNRaeWhEqfXL8A2WHDLQdrFXTMR6LCz7P8CbKdAyRG2049oENSnlYO
	 kWI3TaNlS7EemLdp0WXg4PjTQ3f7HHGuSNBX5ewPRrP2AKxnO9MLiTXdGPrtpM+6CU
	 cHvypDCgFQLWogfIX1hHTM4Gmlb4kp1wmryab1beIAuaA3UcN5dBZCFIpWnSkLoX64
	 vclDG+qhlGMRR5DGGRpBIbBCja3QuCmnO9ailh+PYhGcYirm0ITWMMc7MJWQSjkVRq
	 2pLYEHC7fxsuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A21D73E83
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176971583359.19527.1777214744836712863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b95d1b54555e01929a416b740937f4e14b884f464b8544025db0f532c800f939
Date: Thu, 29 Jan 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769715833
