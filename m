Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38410748F
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748951994; cv=none; b=h4OPk/RbzNU7funpu8hTvODy8tYHXLFCL0elIQWED3CWS+fj3bkGFWmqkRZvIHyKoNjeWA1R9M6N3i+iHaSkB0N6Z4QrK4zWGvENZXRnL7Gy1WJoc2FgfWCKgWEZsHl3djyPVtt9aTnRMZZ57+NAvwDH+emUiPyUsUnexO8+xBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748951994; c=relaxed/simple;
	bh=mpzFCu0j1SQ5BvMq/L7qnazXfHTq6EECKpUyKTaMyCM=;
	h=To:Subject:From:Message-Id:Date; b=ObmrKfOvXv4wwdBJAcrUYYYKv3rNOtGvl56NjGUonZs7xEc8QKMD++by4eQlehaLZFAyMzCBIgSsNLg9LhMCBSNSGq0trGCFFttrjyAvMeEuJ5heh/565AiPd8IUIxqA0rn/Z5/8rAoRKMqZ0lN6sx0ifezxBJWmGNVaEoXLw4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SyodF/kB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SyodF/kB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2118C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748951993;
	bh=mpzFCu0j1SQ5BvMq/L7qnazXfHTq6EECKpUyKTaMyCM=;
	h=To:Subject:From:Date:From;
	b=SyodF/kB+S8VXcBrYphus+iJHteUHMtNtK2iy8GkwGyW9aJdZkn3+k4yluQLZ4tXr
	 dGkT2PGtqgw/oCVRMvjPdVJpRda0fpgyUAHR5/cyrfNUjEZJwrbZjDp+ERVx+K5PqC
	 nA8WirVJpu2keuPMrMcNUslIoDwUWhn8BTdx3zjN6dbsNsJntmC3gI+JW0o+IHYxei
	 igGBLEFIhnktELOA08qk813/rous8kBtsQsVFk+83JlGVvZcbJwcVADFQ42IT2hyeL
	 O8OFkoSaht0nWF8PvZxDZkgOml17Haip8YADUwppiGIBLhy5SirlgHjgzsiAmiOeTg
	 w5jVCoLElVbww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F470C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174895199357.1223.8445031547013960585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4342ddc5ff04de310e1481708eb26a7436131d15bcb607e2960b64131d605025
Date: Tue, 03 Jun 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748951993
