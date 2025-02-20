Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75A8F1487E9
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 18:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740076734; cv=none; b=WaxON1W3aKjYABqI8m8Rqu3v1TZa1l7xcK2o9BQ2riQzC4cBPDa0EIir2zMtjqNdk9I+TI1mPPrEncvfDqEzeIoRg29e72q4qB1pzZ5UQAaFzV58mK3ehuRiUMA0vwE2cKF8+6G54QilW733BPw87tXicDKQadFBE/8ad0NT07E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740076734; c=relaxed/simple;
	bh=l2EveiKThfi7x/3II8XG9J/q7gU3B6EsyO0gpWmS2pc=;
	h=To:Subject:From:Message-Id:Date; b=KNX0K/rxqFaX7KcbwF+r/k0T26j/N6esz8AisBifx92wYAIOsIQZE9E/bYHi2BTNe0O93+nR1aECEWhpKa7Yea/wI9e/zIkWJ4gY1a6E5VwSaS8lba3r2XTPDGr/lqAtmdpUWn7FJ/48D6AFB+qzY4hB2qXKjJY57qwoTol/Q9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3iPFz0a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3iPFz0a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDEEDC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 18:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740076733;
	bh=l2EveiKThfi7x/3II8XG9J/q7gU3B6EsyO0gpWmS2pc=;
	h=To:Subject:From:Date:From;
	b=f3iPFz0axyUu2UqzJfzZbi8m5uC/dcinBetCDVfJgTeMlF+4PmKh7Gc27EthQPOxf
	 jSJHXRDPZua1561HynBFqJY8Zx93veBz5A/CzdkQIw5CBhfxip6Qef9yb6uoIEC0xY
	 HkKz78p6lq0jTxSU0k92f6nHt0zezRFF3yc46XZVj6V8UCqMwjClSRDbxw8uo6zw4C
	 2MY7B9uEMWe9Gax38B9dxolT6q2xd6pRIRiJUSQOWO2mwjV9xgSquukxdrE9SOr+kN
	 /T5PJkaRipASBN6nzWAjR9aWQP0CPTNO7sD6qz5yMrEzvVnfUMsHk+2UUj5BgbjBWh
	 /nMIZWYSzfILw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A27F5C021B1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 18:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174007673365.23002.9988509569952048348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70d3fe87bd7220a152becbaa9f4c30f86ba354c513f211f7c74b986dc1e79171
Date: Thu, 20 Feb 2025 18:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740076733
