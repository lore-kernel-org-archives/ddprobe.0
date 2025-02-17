Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E10011624F9
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 19:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739821134; cv=none; b=N4ycNkl7x1JAOueHaCAWQ1X7ySnfr4qdoj+oi8bEVcQ3NJFFtPmZzp9G+4Z8TkwMWBPm3+OSQa3VldFsXuJ4mmUdriEEMHal1uaRYyZ/KsAA1rbnXVGGuZrt87kDMWCZ0SFlvNRkwG0DrhiNoi1b92P+bcfWPctCxECQy2vZs24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739821134; c=relaxed/simple;
	bh=YDLCjWKZSieZJR+VBDxGx12id7+jDF6pfiy9MT55/0A=;
	h=To:Subject:From:Message-Id:Date; b=pSPPU8esL1yVUH8YCB+26dViSNwfQrvJInb7+XVw1Q9Ni+YiEGN1dEQwXr/gPtqM1MKmVGj1Xl/XvFZ4xv07F9AvUqjYH5b6Pw3qEiYC0LryKzC0EU3Xt1dQRvNhG76lMW5xNyGQMLkBbmKOdcK+ysfx2LR6Gx2yCBvoMBb6HE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f9j+Rpvz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f9j+Rpvz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B323BC4CED1
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 19:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739821133;
	bh=YDLCjWKZSieZJR+VBDxGx12id7+jDF6pfiy9MT55/0A=;
	h=To:Subject:From:Date:From;
	b=f9j+Rpvz8lES4jT7NjyyGnoAeLn5BYXm5wJ4hsahHTX1MNwlKK/46KtmEA5H+tn55
	 t3ixtgw8L7Nw703H/N4j4DworuNN3yeFbMVB6hJcSyaLrXVmzGcYwpd0Cs/UYBc1Ao
	 5TiIDX/SVdX2nT3G2d4N0RnCudcMICpm3J6XGQqEBFiqWubbG6mUIuOFNICFxILfcv
	 S0waTBl+rf8PCNWAumgaJfw8zfyk84Oh7VI1mkXk5yNM24eKWvn6qJQN79jxV2W1b6
	 ooWkaFvp3Tohd856sbIevpz9k2rwTi8Ns383xN7E05FnhiyaMZKG5yQoKfkQDnwikI
	 0ZMBL8COwR9oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D568C021A9
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 19:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173982113362.21607.17506469349721431335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cade352da88eaccbbbf31ac63e9e472baecaf961741fdca220543716ce29d3e4
Date: Mon, 17 Feb 2025 19:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739821133
