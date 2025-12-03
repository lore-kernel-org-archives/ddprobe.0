Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD782DF147
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 22:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764799374; cv=none; b=KQ3jkdDhfBMZ6JW/++eCehOBrQ0F7JpM8aL4xIMqnh4jH0+JFmOKne5s0UkeR4GzvPZBNPiBeaKrRcoxNlZTCUyaqZNjLjXaEUN88Mh7775YPBIBKwTdJQD1Fw2fKhKRuocTrnhgoImx7UGLp7X5XX64mLYbTDPwr5Dh97cgqjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764799374; c=relaxed/simple;
	bh=6NN/QMu/ifeMd8wskp4Wk8rhSeG5ChJT31F81INa8Y0=;
	h=To:Subject:From:Message-Id:Date; b=Ya8OT1l+H5YZVwT0OnmyrkOCqRb9A7l7KRa1mwKWBm+6kdYjgHflPpRwVAMEqvISdC2TFKUHNtbyw1pfNuqPYdcg8CfwYG85zUjScmhC45UJGg6FNRum2n/jjyyyNcG/KRaGpYNC36uclvV6/7cr7GYC02z6G4jTNW0pkozT12g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bip2wHLh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bip2wHLh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D67C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 22:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764799373;
	bh=6NN/QMu/ifeMd8wskp4Wk8rhSeG5ChJT31F81INa8Y0=;
	h=To:Subject:From:Date:From;
	b=bip2wHLhnSy+SQx3TDGATkHEBQxMfX5Ofy0f5CGGkTuu4SsUWUVHvT65LZCXJPBIL
	 SdiBkxxFHayq6f25vXIBpjivDXIsHiv8jO/PgIz47ZYthkR1NbpeD8JZ8ptN4a/GhI
	 /VRhXbGf51fRs7ab0j685RhyXtfCebcrl5tMCkMeQ4CZF+bqLvMIxEmlEfnngQa0fC
	 +brY7wEN1grk7XPns0BVXhaut+4C+hc03zNmiD1A1De6fWfldxTLoTCI1/ta4lLskv
	 +D5KLhjzyTQsts4PDbWLS36p5t8ruhnoMuD58+A2f0RzvcIt9aRn8gH8SD1lstZT7/
	 tIeRZ7tDOmLEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938EFD1BDFF
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 22:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176479937359.5531.14697013625782962153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fdf8801c1b88bea9c3ed8ad9421983991beae9b4bf475930efa26bc82212b84
Date: Wed, 03 Dec 2025 22:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764799373
