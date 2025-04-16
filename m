Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB50207DF8
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744803594; cv=none; b=Q6xUsPSfo5iJSpwmcGN4Gn5PWDzanioOJ09KyMDyo68LIXfjvazYftMetH9xrtMDjc3lnLew6pd7iwSNuYwUXegQu7MtriO8eI8omZlCuC0ljCQY6fRomDquVRuwicKWB5nCPiMCDQAGfwzM+R+0eIQsyVttn7Le8oSB+Bb3nCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744803594; c=relaxed/simple;
	bh=sxINwM17Rxn4Fu6Dw9CeVPiBp+phNCJh0a3AI4rXjyI=;
	h=To:Subject:From:Message-Id:Date; b=gq+v/HfCDIJzgU12hnCn6QPYE5fdQWJFtBGOhkD6JLGrBIxNj845gja32dWtaqCDSPcjFJrk6C6NOjfe/tCOmE+XPQTdZRW6zX3pT4YWbmHFfz9/7i6+g2G52rSZoPiFO7JT/FSSrR+fwhuW1zY4LdMP8AjKOzdhxD/SAc2L+RU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kid3iheP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kid3iheP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF1C1C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744803593;
	bh=sxINwM17Rxn4Fu6Dw9CeVPiBp+phNCJh0a3AI4rXjyI=;
	h=To:Subject:From:Date:From;
	b=Kid3ihePyAnbuwJvRVA5iO23wKadh0XxHV+RwOuFQSVIXIpKV2PdnFmS455cgU+0m
	 6oi47t5+lrk9RbiVjYokCn0vcRMQDGKqbB5NDHIZvu5nhrqRLsdXL9QkBOh9g2Mxf6
	 8bjs8HhMF1acxuyjndIIj1HNriLORlrBMibB+4sJ4kZ//qP8rh7UkzIIH0812nONOd
	 8xnPlah2zrgDzU+GmuPJR+1YdM2aRsTblN7HTrAzTJO24+RhxUU0qYKkVxOKkkbCjr
	 wSw9V4Y/UD93TDvzhfqF+uDB/Uc7qumbNCjEqNT5Sn3RAz4IPRfu2pqUaj7/uJ9HmY
	 VysfXRSBLHUIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1E1C369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174480359368.870.17965313319406306665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62343657da46436fe28f2fb57087ca1d45b83e01e862796e4a8c57830b813383
Date: Wed, 16 Apr 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744803593
