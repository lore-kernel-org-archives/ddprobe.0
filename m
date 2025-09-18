Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C751D5170
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758234594; cv=none; b=IPV9s6cYreHFD6aje6FX38zCSHRi3L4dfhfa/LG/D+1vjX57HfC+dKzQ0myOzrHzx1GjJbS91P+ALGqXHmpb8xLr9jrsL0rMzx4hfkDJJp/0aoaI6/Dq2W0pitztuWpjhsXD/ap+6Ri4BpSL9eGCqkD8XMOZdwuiuOOjVa/XWng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758234594; c=relaxed/simple;
	bh=BFZZTyufG4mG6Nxo8n17DwQQti3wXZO93UcmshvYiBU=;
	h=To:Subject:From:Message-Id:Date; b=WCxW+lBGWpbOeiXzoESukx/odsRAFFGap2p6fj+LrHkBn0OnEtzvYWaAXBVEGBbVQCvPMEzL3RYcvdgUiH+esV5NcSAZMnke0eToauOqkSuVWnRcr1e+Upx9FeveRSL4Q52qU9jSPSEunAK52biLaZfmUeF4dfXIuKAnlDsq/L0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LqyWqpmv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LqyWqpmv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3081C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758234593;
	bh=BFZZTyufG4mG6Nxo8n17DwQQti3wXZO93UcmshvYiBU=;
	h=To:Subject:From:Date:From;
	b=LqyWqpmvlaE+ll4mKnwT75r/1NZDUIMrs/VZuwuG7o7uCZqD0ZElRPp9On0Udluid
	 0uEbuP1LrjjaF2svSLmydMWNmoVLhZhuN2jtISRSoiH7ug48/OaOASVEl48RLLSha6
	 G80BbTZJzGHLOGgPLqmunD0/7vCFw3RV6zLwqMZdKJio20pz2scENgkOxDHVYxePfO
	 YwjPa80gntwYDpWECLfL7v0SC0+WVoLMPETvcWJHdu07LbcHxI9R4McG8GHCjOkoSt
	 4bUcwlfmwOcJZaFelvBwNHx+N6Gx9K4zBy7H4dqhgmDKAhy5DrLaMuIFQDs1begLU1
	 RpDCxvBcI1U7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912F4CAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175823459358.12609.4076174219299940623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9d1bc562f5740b09f8819cc3e665c9732042d11f04112e3d9d010cded97eae3
Date: Thu, 18 Sep 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758234593
