Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2CC3C30
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747554594; cv=none; b=IuYoyltFWBLfJogYEnevFnoqdHmBXJnsTxS1fhaWoroc40a3GjbIqCOQ1LjeSG5lGY3BDb/dcexjCXcMg4Wh+8XKfhjhKiI+W8qfNQabmLl7NN+Z8kHXPYRJzmaVS7ylgGlr2QwW9wS3U+MZ8aKTVgIoTsBTNdMiDtu9TpxpqeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747554594; c=relaxed/simple;
	bh=q/+dSsCCbJOQHVpCEwYuZfzJW8f802tG7vH87WakRgw=;
	h=To:Subject:From:Message-Id:Date; b=WVW6u7yQEAWBmrOxIHe0qpj/irSwArIsH09B6cNl1Ag73oZBo7l8LARt5DzdzhUPY2fJU318UWw/+w5eI61lGxn1V3yhLIImas1JAkhSwTOErgKMJaYcf+vV03m0CaCSLa0r976mVaDr6yToYfMTQ6ajsbnD1/o78AGutLrXAXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ph/Ijgpn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ph/Ijgpn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D95C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747554593;
	bh=q/+dSsCCbJOQHVpCEwYuZfzJW8f802tG7vH87WakRgw=;
	h=To:Subject:From:Date:From;
	b=ph/IjgpnR+YYlRJ2YE9cp3knvBn/Jc6HEZkR33/71i5HNMfNIMPNdyj//jgqGq8kC
	 iw8aAP+H85773WfM5wpG7gpxiyCd3IzJeoskdrSQjUzpbFf/67yZa1Y+G4hOeaDb4u
	 StLJ/guEH90eXbCbCvPxmfER3IDO9JXajAex64XtghmT1GWgq2XfgOx5YeKxOf7hTJ
	 NGL5Uizk9felyZTAJonRAb2YFTLs9EgB7mxMBNuEA/giVt66utSc6UqS/V3swL70hr
	 gigzhImfUamEpfdqAztmUi3OP2d6omvxBAcCcvuvVkTRBsAZPucYoup3BCuQnP9fko
	 qNw9toHAe8JuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900BAC3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174755459357.4615.1754156208223245367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7daa0d518769f853902a8fec99d8ff8ad2f43cdd8d02729496b1e6e9aebc524
Date: Sun, 18 May 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747554593
