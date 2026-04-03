Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2902472A2
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 03:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775187334; cv=none; b=STbjqwRS50O7kvooJyhxmEv2EG+CQnr2X769gMlA+6HLl+rg04Vv+j2NiSvwz1tUmNvB7Su239/3J65oYfyVGDeV4u25ICN5ehAk83us2gufB5IWrdJA3g6QBjMWEPSklyGzeX9BAMw/k6KiwZsoLxa0xtn39UTH7gOIRf2PEWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775187334; c=relaxed/simple;
	bh=ZJIVmY8nGCBRL8sL5PSnZx1gvtUHsu3EAnqnLhK8kCE=;
	h=To:Subject:From:Message-Id:Date; b=kErGChxQX7Lh/ZHmoNVFz8B7aXCtJ5hdh+XonK+1vLiN2J7YoOtSvmAuITRyJwf2ezm6N14zrNL7wWynnIMelSAdCzpVV1hVKKMButKUS37YW4S+U4wXzky0HIKHJr9A9O/LW8FA9N/ZfLVckaKCAt2fH8HnkmvZD8a3HNKyqeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HxV8M3zb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HxV8M3zb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08A3C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 03:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775187333;
	bh=ZJIVmY8nGCBRL8sL5PSnZx1gvtUHsu3EAnqnLhK8kCE=;
	h=To:Subject:From:Date:From;
	b=HxV8M3zbpc2zGwuBPg4d41XBzvmYbNtCRYIOKB8NYsUE5yo48doydXe0OUsqN7F3y
	 zRy1qpZUmaDkOOWfLaGn9BJv4r2Tl5I2AkQjD4w5dvCID+JP9UNw9dILPw9tyfAe0g
	 dsFJOGyjax8m4sidSRoTjm8uSVU0zFZJ6GlohL4HvMfyZprz0NxTTKQ4BoRfGEQ82g
	 HUFFNB8sXAkkdhhouf94PfY3S7c9G/dcIJopXbBO5hsCzPfq53EImKoFnIM5dymnUf
	 MoTpMoi7KuElicWSdYHiml33Kgc4lOY8CbPtbJRnHRrTSDgkXzSRHPELb+rjffl16n
	 RNO23h+gENGng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B88F2D7308A
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 03:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177518733374.26855.5155180132484894812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f630c5c5bf6b464b311d76b0593e4810aab38ee7e2b7e6ac6178e3dcf4fd8132
Date: Fri, 03 Apr 2026 03:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775187333
