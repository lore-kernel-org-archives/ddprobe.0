Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364C22609F5
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746076794; cv=none; b=EbcAZsjMMl1uQDzjDqbbIymi4y1wlI0gIxyuriJWBfwC4oE4DBTEtUjHbZETUtGEiF0kdv/TK882GxeuqozEu3AeVX5yaWBwYZ9mee46B+P/1Q4IPrSZN/J4Bpy1r6RrLt40Ft25/r04YvdR6zB+KFM+ZXUfAPvzF3U5PipoVko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746076794; c=relaxed/simple;
	bh=uCCgPUsMcolN36js2WPDedMPeRhfpmYIuRKVyov5OBQ=;
	h=To:Subject:From:Message-Id:Date; b=T6My8d/gyzlSaymEXdl0/3J1PPykDBHRiznvV8VN70et4aCcPcCwFwPRUHCnZw2c39/HJxoOelWp2hpKRsVRMIMLs73QCvC2WajFCMDLvzJhTslsdqDGFAjraTfvnInndturbhJIsZshwl72L3XNysY17Q6C0W3wK4rS6aa06vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvew+koZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvew+koZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D49C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746076793;
	bh=uCCgPUsMcolN36js2WPDedMPeRhfpmYIuRKVyov5OBQ=;
	h=To:Subject:From:Date:From;
	b=hvew+koZ5yLiphcTlBxakKtYfmqS32Xki3nyvzEKr/Rd+RTmAtNzfyHTnrvTy0N35
	 ZaOXwadUwe+6hxQpPbYZMAdmGw0dSHkNZ/xR8DvpdqMbsAXeZ9alSuNIjnytFLPSEU
	 XRVVrTe5+EYl8nnYluTXv0jxqWndd+ovE7NsnmS+ATFqFKNUI6yMX/DMW36+4Dlqgi
	 u1THJKBK+NXa23ZHmlGIyTkNUju5prY2oBxXOIXt4HkZ4pzaSMuvj9Q6TmGF+0Bet9
	 suDCsXcCrB5TvGmqMm13j9AgDFgA+Lmi0ijQ+N0AaxtHgacPY4ErIWBNijtvWYzIGR
	 FTArz+SsPXbqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97417C3ABA3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174607679360.24241.5715706886106737757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 904ffdb12e9de4f57f3ba88afe2202d28c61233baf1bcb0f1ebe87029d434ad8
Date: Thu, 01 May 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746076793
