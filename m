Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231832749C1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761290994; cv=none; b=PhRPMrP0nTljdP3QNuvZqAOi9PHvViwNmmkK1EgxUKhOZEVznvAIOmD4aTBo/e65AnFVPnZoIN9RKx+ItqU+nea5nBeYhhieRhZhxDizgT30e73S4VbpSBMtOtzg/hAvgnBCKldKcap2mHcD10t00Bxiynotab17VlTDJmfkBhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761290994; c=relaxed/simple;
	bh=XA+3rUe6sNuqxX5Xh0bZnzKjH1KpXM4Ypdz0kmAkQT4=;
	h=To:Subject:From:Message-Id:Date; b=RrNRQZmWGlM5cfACz5eHHMn5MUJFHj6fpneTY3Gbgf6ThMlHEwUYO/girwICH8rNkJnVcN3Evct3YrWIPS0hrqiiWCTEgem25v7MhZkBiPkh3HMS0Gig2NcrwrEPFWFdvMhfXgiJ7y8v+YjJAj5F9U3j3wpsqePWFahQdG9LpHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDr8yPzu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDr8yPzu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5282C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761290993;
	bh=XA+3rUe6sNuqxX5Xh0bZnzKjH1KpXM4Ypdz0kmAkQT4=;
	h=To:Subject:From:Date:From;
	b=EDr8yPzubB9zLWPXx1pY/F0Lq24m02ErsTkGG/EEEp0s++9rI3AomRZKDeNeLYPFb
	 waugd7mCXO/QH9bXv7CrLqY9kebKE54Yu/RxV7CzNl67efmsxG1o3oH1TTCRFUlzeX
	 NCawsgyC+3uxdwasx0qedYMcSkqYSu2mt4EojTdCFl4P6UQhN+RTJCpJbrchsi77lm
	 khWQKh7TDPmu2AQ9hbW7J/Khqp845cTtp6rAgQluAyGGreDaitrL32sqSnnTsVeo0u
	 fQOgxDuc22ZlSp+VQuhaLYxJyj++XRPG19sanvlbOnOjr0+fflvg4DhhR80AuEdQKY
	 aMxpHj27iw41Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94197CCD1A5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176129099359.13561.3136889167725988568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60287a94b8136dc8e48f353e2435e8d4e239f182e93d2de70c3daf2a2d5c3ba8
Date: Fri, 24 Oct 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761290993
