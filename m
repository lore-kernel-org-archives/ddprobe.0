Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A34F26D4FB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745397594; cv=none; b=O6MSALKwGUNnyAnF+csFdtVCFSUiM9rxgVY1nfm2T5dVXzfdNCoXI/0hfCI3edWZICm45NdvfhsKetNYc0hrBiir8Ib+SDEBb7BqJNrcJXb4dpxY90nrADDwDGlujc0CISCQtWbv70Qh+6iQ8ap2UKeNKOr84+iEXKn24UFtd5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745397594; c=relaxed/simple;
	bh=rDFQmS5hlnNAzDvJuA6yy8EucKem9PQF1+1iVDNkq/I=;
	h=To:Subject:From:Message-Id:Date; b=DOB9GYSvYf2S35UnMh2nNXQDWwdBdrHNQn365tiZ1w95NLj5W/kq6wF034HS53tcJ0ogmfBvG0AhRd0aPthdSNjsAPZWFZhqbr980+q95YpGbmOyYkM4gcANreFuo0145AxWSTnM2rwXWy2JcFwTXDE4rO5DlqBI+db45jQMsqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dSd4a3gi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dSd4a3gi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DBEC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745397593;
	bh=rDFQmS5hlnNAzDvJuA6yy8EucKem9PQF1+1iVDNkq/I=;
	h=To:Subject:From:Date:From;
	b=dSd4a3gi8mjU1eDFWi54p/TeAM9uh3UDTWfyyCpd+RAhV6s2/szoNJMI72g84rB9l
	 TM7NiRjBhzpM30D1a9Macq0AjTxdZ8YMu3K/8FBTE0OGgZz248VR1tzk6NSAHjrkIl
	 pEolFLcbIpUV1T9xaftbfvXfi/kDGK9EfxNo87nx523Q3hz1YjUnshwsPXnOyeb4mf
	 jAjFeAumVglUopv9DI5vzqTwyaqXWa6WOYHDX1bRwmStOl/RGdym/hoTT0M5vzgOmq
	 FEQwRVH7Z26al1xh3h94kM7ENhFZi9rl05b6ZyOOkMor/+5qd10jJV3c7g9K2IeCIz
	 qYynl4gqR7ObQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F855C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174539759358.11329.15993969219439331945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dfa562202754879aed33f4a07a8f6546ecacf3c10d408ec1988db82d8e799ae
Date: Wed, 23 Apr 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745397593
