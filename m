Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EADE770FE
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768633434; cv=none; b=da6r6cMIv4XSa27/4k3omQe9Etj/MT/R13n8Wv+DJwzOPeUhbDCXcuhWhdP9lWwJdhv6DwkXMlXNhaxOJ+nAbXHLRK/inQv3ZVXDzrMP2my5vG0hftO779K8YSGTpbhEqnXrNtXPBMRkE7CTRN9hMOIJduHa58vACXziCAhPum0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768633434; c=relaxed/simple;
	bh=dM9cfgJrZOwpzFLuzMGp3/Eqw2M+WDOyNgPwpMZT08c=;
	h=To:Subject:From:Message-Id:Date; b=iexZA7wow7ZtJ5B3EbWusPe58abQ0+YEYaTMFGSKzj5lEA8shtJi80ZJmbnq2+Mv8dyfs0+ndT+vgNxNy5KcFkUM67YNeJXFvkXw7LXJWWxEMWV0l9mzukb8Hrsk8H0M+yDm6txZGhhI2g12mdg8+UYF91Q/bg+Wn+Htz1pH+xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8FRHJmF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8FRHJmF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A883FC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768633433;
	bh=dM9cfgJrZOwpzFLuzMGp3/Eqw2M+WDOyNgPwpMZT08c=;
	h=To:Subject:From:Date:From;
	b=b8FRHJmFNwFSiBwHbgCBWaYrmpskV0/IRt6B7gskY11CsGni36kzIYzOhAA0wyllS
	 WUODkcua8WpWgY0EPl1HXLIX2JLwVYwSSZhwn+4SnY1LNqSryd2/vWg72sHLjxTVXD
	 rrh+xlURikq5ZCQyxdnT4moJ2nrtSLyDL6BHc6tDKrV0aplxdAz4AAOxyfzgDPRXYJ
	 A3ZsR63tW2ZfHK31HpsVQRjYT+HeeFKTeVSKZq45l32gwgWkXk70bPRm1duRAzRWLX
	 bkeswRcz5Adqyg/94Sm86VHgOxJZK9Edn7SL1umv9myeRZhQ/yswSrmRLqo/G9H2zc
	 /uzl463iVGHTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9738FC98312
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176863343358.14125.7407987597106624352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aef4fc36c6c7a5c7d3f423fa90fa1fb2a3c4199bbc5834b2159c8c2a22bbb767
Date: Sat, 17 Jan 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768633433
