Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324C12248A8
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 06:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780124014; cv=none; b=FqyA3tzSPoze5c2ZbVruDAQETeSOf6FYGqDcmM0CYNDgUETGQiiR9DzHgZNMDhpFmjc/ShJVEENqSbC2uL1VXzpHwlaR6l65EVOKJSXoYkptp2EuHPka+/RPZgmxTrZWTJ3Zs6IJpagiPux9ccnZ0UMf7KrbAGR7u3dhvt45GXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780124014; c=relaxed/simple;
	bh=iIuxkRAQ7lpoGEC3POGifXUMCt716n9Drzuv1b5IJck=;
	h=To:Subject:From:Message-Id:Date; b=WMdiqutPtV0HNPcOP0szcz8TmD3Y8v3gLlaUXqF9nDXo3WW9imUtFR2ScQP5V2CN011Any6otI+w1dLFcM6Uk31DAlANsFV/DphC9Iga34gEQw/HdXs7G/XDBS3PrPxiNcodIAiMS5vwT9FWVkJjdVCJU/7ea3bRfFOfUakPvnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gRBvaAb5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gRBvaAb5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF84FC19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 06:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780124013;
	bh=iIuxkRAQ7lpoGEC3POGifXUMCt716n9Drzuv1b5IJck=;
	h=To:Subject:From:Date:From;
	b=gRBvaAb57x5CAYiLADbS6ZLhCZKsJrQDfMvCDvdOL5Hh2xjIyX3Cy8RzrXHnenTWW
	 BbfnxiA4CwDV1+Lcp7QsHAm+0JtGAp4fbVQHqq06mi2YkjhiskNWJkZ0SlHVtWPayE
	 LjaIPp1yq2t5NyRVXJ2p/J2wY0nvZwW2DMTP7QyFM4cwsz85zj1ab7bNRwarm8yNM9
	 J4zmaADbxG0xfuQf/2mvCmnEw08kx15y5RDuTLL7xRDf0uhRptXr11AHM8MSn8ak6J
	 7aS0wsmJNsbRQVintN9BtJiDKTS8uCEInrGg1KjHi1nMkXU5DRjXT9gud5biAaPrFM
	 4Rv6eHPUs2S5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D15CD6E4A
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 06:53:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178012401370.27295.17239929166694657623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09d51daaba932b22b6e45fa77acd59d630366d8b34b15c966d1dd16363718bba
Date: Sat, 30 May 2026 06:53:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780124013
