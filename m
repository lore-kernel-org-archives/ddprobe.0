Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157E73A1E81
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766642634; cv=none; b=oaYnEVOEtrnvHImaCURi0HOMl8oooIAF3XtnTT60Ed2CwAmvVxHuY+2efTKXaSmzGdb1sXxfCE6k75GMH66fYo9hS/ciajEkY09IuFnKpBOwjsCGcrV2N5PY7y+yT+LvMUBuwmHPYgePG/3rRWVC7FqgTe1iNLHoC2RpkFnHSNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766642634; c=relaxed/simple;
	bh=U8pLbtx1OyMFHXXjjgDURIGdN5SZSxEgNwK4W7S3Psw=;
	h=To:Subject:From:Message-Id:Date; b=ThDV00I8/TMw/kXPQKLSUwPGO/WrqkFff5lVVBmxYmZ5J/QUTyjRZGWpEWoRRQejwVWiQtXiFC1sy7ZmQ+p7Balg1S+Y3yo4yBPatA93ntXWvZDfbduHCJYVyENvSc9qOsBmnNg7wIPOZKmo2883k8F9KQGou4Yoh4pLGzZxDKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UxMIn7YQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UxMIn7YQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C3AC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766642633;
	bh=U8pLbtx1OyMFHXXjjgDURIGdN5SZSxEgNwK4W7S3Psw=;
	h=To:Subject:From:Date:From;
	b=UxMIn7YQPtPTvw3N2ByguwW5rdRQfQU9tKORb0aKZmyU+Z6uIsUZDnhqhACajhM+3
	 Xrt6HkRyzPENahALBupgdNWOWslrVO1z+aRmymd824CPYO4W8Usyc3PrWQiUiDudv5
	 qVAEiVUO7OFJkn0CSoQDc2qwuh1G+26rPKhBxWNLRJSWTM4/tuPZTVIR8T+RCPDw5Q
	 Glw/dYUVFJnaqUjtJJkDmIRZMMk+FX4L2YtxRUxAwvSU8tOUY9B9p88ipORuobq4Gg
	 OF/tzHscfVBCKudCypAq5BlIrQ4Ng/MijIhsY6WzqH8gR4st4V/u4y0sbEfPowPAIU
	 JpCnMHC6PNEEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9024EE784A6
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176664263358.30996.10298942746716301956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75e14e5b2d4d56cc7d5ec5b30d41c8a8894c80f09bd4d54d2388335ec84e20d0
Date: Thu, 25 Dec 2025 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766642633
