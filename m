Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315C5273F9
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751642394; cv=none; b=ckkqb/LJbpl5aTwgN66E06RL8OqZWPgDcwjjpcf9008CiQBBeAkby+xdA+j8vBKl1W17+wo7YHGUGRJbu3LPQfyDBc2xlySp8ytMF4ovCzClTJFqI/+PX1G1oUUNbR82yBibU3eXTw2ia/iIuGLXhgnlOyvk54lgnu3pwr370rI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751642394; c=relaxed/simple;
	bh=rME3K+w61gnD51pwHjF25JRf+H2m+vJQrJ5v6Avyvsw=;
	h=To:Subject:From:Message-Id:Date; b=JgxNo+659bs7fyxxvzaTDUzRB6fCPO5MirydjdELGyPIJTsF7RpdcAh7ghn9TY2EFT7Hgx2K2MiHLyJsqMXDoCWudk0GQpIauysee8ygP5JS2X+OAFqDj7AQGlgOO+s0aoYlRNyIrAZxcPVNQch2+H/TZx9qQg3SOxFI6ozPaV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POo3HQek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POo3HQek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A185EC4CEEE
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751642393;
	bh=rME3K+w61gnD51pwHjF25JRf+H2m+vJQrJ5v6Avyvsw=;
	h=To:Subject:From:Date:From;
	b=POo3HQektq5sTfJz/OMqkfOxpMGQzJtopXR/5x9pPf75CbxuT6RAXSGK3aIJ0TCe4
	 jQ3L3uwb8IQOo3oFjWdoJSW4QpwyjlObTOVuPxulAtJfP3a7eOVpoEC4juGV33NJPT
	 ThQm5nyex0AoigZXQfh9J/PohgF8rHENMxZQzYsxHvYtZzP6gPu3EOJho7apNdw5HX
	 zChZUsjXI9eUxJLCH4PinrJRDVh+MIEpSFym/kHNBteaP9i1JMMIZH+5Xx/cWQrECR
	 RrDlfJoFmpS32mGSa2mOd/JNEzCTN5tpY1b28R9I0VeuGX0KAIkn+7Iwpes9cny0kk
	 9La4+ak8Gyc3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5A5C83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175164239357.30291.11436551954733474066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d185dc5aa270cf52b0a2c983b5574856d26a330211df18fc786a0da2255853d
Date: Fri, 04 Jul 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751642393
