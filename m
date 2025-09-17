Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C58B249F9
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758082794; cv=none; b=YmcUf/xlMZ/5Ht3gta6u1KtJQbjY+A8orbn/JM1RtGNAxEEHH2PEKZ58L0JK0lfZ6Ga6rDz6P/X+40ezQz3ZqpmIyRyJ/zdB/SQcty2/FftOFhgOsiTAzSZfNOqKqfn4yFEDDUJge3EtF9etpabL2A5dPPJB0iOj6LALfcMwwmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758082794; c=relaxed/simple;
	bh=ov3zm9S9ve/L22fiajvSyXx+Ce7co7WQJg2bvhatifA=;
	h=To:Subject:From:Message-Id:Date; b=UUtezPq/efXLCNjxigHVa216BmnJVSLu2Ju4XbShPTwh7PUoe9DGKTqBzrZmQ1r/e2muiRjrcQSK1GkrSA3h994qpHpzEbCLbdvo9OvjQ0tO3S5DyOoTUd1LICK3j0riA+0e803GShDCA+VgQmkqFFXx/MsVadkqjR8f5d12dbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UH73cTQQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UH73cTQQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE0BC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758082793;
	bh=ov3zm9S9ve/L22fiajvSyXx+Ce7co7WQJg2bvhatifA=;
	h=To:Subject:From:Date:From;
	b=UH73cTQQRLvAFk7o1pxAed/PEtkNykNMPTcf9r0zVFV3aQaO+xDbUZJY9w5Sr5edU
	 ZfyPVcalUEuCbBjoPZmFMOu2USxfyAupNm66z0DB6JlzBwaiO6WW2pcztfbU3Nr+Ih
	 F25fa7B3Ht0kYL8vXNSodMHxJcCR2uaC4rjoHxIG8MUYowj64HF/CV5q3DfuxBU3fP
	 wUUBt7ukgTjk/Ov7zReVqxt3bBNzm4meLXO09vBOsoniN2u5Tw3jNJtSBj/K5bhffr
	 jNFlMAwgZA0OoMFAoI954Xn9TxtMZhMXIglfP8B9qDoRDCR5g1l6/Xt/oBVow+5Gy+
	 522mkM0nDJAwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B38CA0EE8
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175808279360.16966.3675056002346520080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79655f4d3820f215571b15d911c80bc3eab3c65dfa65832f92d4da17d2aa91da
Date: Wed, 17 Sep 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758082793
