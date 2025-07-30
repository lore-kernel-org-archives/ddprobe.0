Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EB62206B5
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753912794; cv=none; b=EeaxkRW046M4riBIA56h0V9cjbbNsjZHDS85ITvtxRwEaoRs6SBxuFW+Nl5bE3nZHjwXRU/V9gNxhsxGxPjddv7qF1zzSQtNV9Y61MV1lHfNW0jk8RDmzTnFp1G7qHfU531W7ykj7LNfEmnp+hmrGfQK7mfMwMNgY4LLGTk2eWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753912794; c=relaxed/simple;
	bh=11s/usIVWUzbdDK0i8DoRcnWK6bnpeK0kQWUouUE50o=;
	h=To:Subject:From:Message-Id:Date; b=ixayYeMOg2f8vZPiPfX64eosktPnJsBNLmGw0HyrtTGucwBC1ZXnJZ16DcOHR9AznvniHKHxs7dfyCF1/BbN1YZq0/bPUa9e9OCwbnmflJ8lijnGu6DaJi3cu14eRQMabxfg8W4GVr7prfgssH9q/sQR3TNt5d7tH165LwKfg3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ob5/PwHf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ob5/PwHf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1487C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753912793;
	bh=11s/usIVWUzbdDK0i8DoRcnWK6bnpeK0kQWUouUE50o=;
	h=To:Subject:From:Date:From;
	b=ob5/PwHfTsh8fg5b/DEfLuGDsHnnIBNs9UfPK64kZMDQkLNIUPrBV7s6+WsYZ6I0F
	 rYSCYThKMoYInTTRCL5OTNrI2Bf2rp6EMFmaaQBxUeB8l6+56ydrP8YebhW1/NsNi8
	 RPpLBgrMVuCyTsgg+qJIubMLENeJqN61zmOE0c60XxZriuCxE5kkLlgWLnj1vwfoVZ
	 UMAGdA5bszSjnPEqhPjnp1aERylL5PD+z8kdID/MyJPSdTIq7LG7W7mf5fTZHv0VA2
	 6JBGqBp2k30ICLVytz78yCJD3TriuOiQ6TZl5sAj3JzOyZTwCEOVNefOHe10HDfEKr
	 XZ5gL9vdYLBlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93728C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175391279357.27847.6105106081001146083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3707de428ece7f2734a6e7413a4e4c8998a0a1457314df927150900206b4f46f
Date: Wed, 30 Jul 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753912793
