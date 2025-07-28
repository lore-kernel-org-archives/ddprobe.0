Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2601D1CAB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753738194; cv=none; b=KfKH5wjVGwjHDHVLRlEEDXG7fOYjjf2kQn42Vhs6gYCKBOCuYjlObCvtzz7yab0ZXF1UdBmzwrsXGY0twZm+Ec5SgDf7+F2J9wlwx7dK2cPGKOqPvaz3j/okCfXw44VyTp+PfCW35vXD8MIvF/XmZXMn0I/eknRVwUOb6yk09js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753738194; c=relaxed/simple;
	bh=TSaXBeyfiB6mXQVeSzVh/5JWCa2Y6SPTAAeIvugtdlg=;
	h=To:Subject:From:Message-Id:Date; b=gf0uvGmHdRH0dSYKNrdpsKB0IuJ194H8RXCt9Rf+H8EGVLflDqA6OZ+awTErm5hdfzM/7W317Pn05ayGfXqh5WCzgnsmOf6vRy6VRK/prfulwtTIru440RT/Z2p7xoBnwQyJ99SlOfGxitW/poDGHN9acfY+chNuhIjQKTvB4t0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLyrNZt3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLyrNZt3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A457EC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753738193;
	bh=TSaXBeyfiB6mXQVeSzVh/5JWCa2Y6SPTAAeIvugtdlg=;
	h=To:Subject:From:Date:From;
	b=NLyrNZt3qplC71k21KsD1McOJQHnpXNFJKYMBtJY91YOYwbjURHB7HStYIGNAs3bo
	 cfZCu2LNMve9Y98+l9eN87E59REU04NcahE3C5kQXtFZoNdN2F0/6sj/nilChZIlO5
	 P6XjkrGrXQJiH4Mtq7tvzccpL10MGATgA/UVvh8pqwsXxsiauWWaYjFNPQYz4kKlo7
	 xhqvBR6yh8ZPmNuTQsnwI15mhMoAjxj3zT8cTy/JyNwtBNOV3JZHS1GK+keEbEUY/T
	 S9Y8sXcT7VK6KMvq5Oe9rMRXyfS3Z+wIJU8/7Y7oFXfZPOgXCne2vZNlRANv/2gMl6
	 C9w0y16NDhESg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9040EC83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175373819358.6487.16909538048363455290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad088892b5b32adcba41dac6f9c85e094577f859e05e9a7f3708d624dfef71f1
Date: Mon, 28 Jul 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753738193
