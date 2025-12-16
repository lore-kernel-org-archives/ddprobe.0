Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C42D321D3CD
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 07:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765871573; cv=none; b=L+BSoDqyOsZ3qi61s6lf8Hpu2nXzPRiOQlVZc7C02Im6kL9v265bwNoROaeH6uZKVwqq4JS7JdfM/6M0YaurbxjaJTjboB9vL67U6PSPpmHF6XpI6zDgCBA5Bg3v0S8vB/cCTOQetzc18K14RPiDBUJaDxIzBLd0V9LSuwlhcB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765871573; c=relaxed/simple;
	bh=hv7GEHR0LIT7vkb5ylRaaxuJSwl0lwhnihW8BmtYkzA=;
	h=To:Subject:From:Message-Id:Date; b=kVDb75VUNlXNxckOtaa4tQC7eayMp09xU3zfkI9a/Ivw6MiPnJhA9jTYlRkz7c//njoOWi03YVEIHOpF8oeAopg+C5jqA+76J0BK7R1oztnmpEbWGEanicjuvZ81E0yemR/P2qqmBD+ab/z7OwdFDOD6aQnbHlD3TINCWvkWHcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u++bxeBL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u++bxeBL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E03C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 07:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765871573;
	bh=hv7GEHR0LIT7vkb5ylRaaxuJSwl0lwhnihW8BmtYkzA=;
	h=To:Subject:From:Date:From;
	b=u++bxeBLwqkQeLPn55NuQv1TVOtWleINOC+3gHjkAcJyCUgXkU2pTWIPCKFD8usSE
	 HauOJ1YQDiSo7fknEdoeLvm/2i1EWB51TXgmiqdDgKlVIyPBrvY+z9tfOAfZKPkHE7
	 xcuEbMD8+cIDsQU197wogTQbD9+fL6oide2AGbR4CVN+iodSlcYhBRHXawwdKCe4Cm
	 jDEb/H1FzpQkCvUkhdluoKG/VQPB7qEN5YrJlNDQE4rOql3lr+NSh/ca21Ax/us/o+
	 Wb5mS6gFk42dL+R100+uzBOAa8FuIrmakEdL3n8dNFxsSbL/0lBRFleSDU8YxwmQJb
	 +75lVGXj6fN5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFDCD5B161
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 07:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176587157358.19940.13513372035664833687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97a297c523fbb1ad677ec1a80c78e5d6c48f6c8a12b6f4f8180bf8c6a245c563
Date: Tue, 16 Dec 2025 07:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765871573
