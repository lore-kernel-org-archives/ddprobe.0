Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6A5221267
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750326594; cv=none; b=JrMXOT4++glEp4CSv7+WAW7qLJP2yZ1XXX1Ray62G3X14OLyawAc9vxfw/lGujjsNoAolGGBdX50gsNQyoXmC8XQcS0mwr0jT5R5cPairA+YNy/mkeI7V1hjfb3TkTlWjtUZdbRzkutzWlKe+BS8pUKjq0/QiJOLmcJKfoMjjgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750326594; c=relaxed/simple;
	bh=Ei++zShqi8///AFOg7+RkxtSkSwibARARNFAVoWW6O0=;
	h=To:Subject:From:Message-Id:Date; b=UE7PGnm1j/Um1LyAlnQOYEbY1aMDHG/X8pi7HURRIgLmPn35t5HLQbShDjlyogYcZSbTO6vnT86T/08oyWlRZijBzlj7Syhoy60yGqohg4JYSk0vSw+x25tYIt88doUF0hKdJdA7dO28BfsdeG9l1rCQ8saT1BLoEyRLGhCaThw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r25Aq7wU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r25Aq7wU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A379DC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750326593;
	bh=Ei++zShqi8///AFOg7+RkxtSkSwibARARNFAVoWW6O0=;
	h=To:Subject:From:Date:From;
	b=r25Aq7wUf8EneQujOlA6fQJ14KmxMsvnZ+d6TAkK06CLd1mm+VZ5C1HtgYL/vWlyh
	 /BZ27yUxb323/k4bH4OFNEURFUrF1qG1wOOyMyW6vuZdBddQfQlWkh/mExdL6U3WZ0
	 rNvXfgkUonwnEKEfxxnBu02otSvfmUj6QawACl7BduvAiChT6XGF9+Pc99CU6R2+8i
	 BpTos8a+SHNLXg9ebYNTnOmTqtgQqlajwwDsUlhC98EhBt1Zn0ymEIkoRU1ccM71Vu
	 iJGwJ6ToyIQAQccpm36nz1dWZCEuAImJLnphsfER+ByiNaNhmB6aJoDpN0TnglGgpD
	 oWFnC4i3p48WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E45C7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175032659358.3256.12783161882544692996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b78fbd953fd3689529ea697265a01ec6fa9ec884067ae137fd9458f174e54393
Date: Thu, 19 Jun 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750326593
