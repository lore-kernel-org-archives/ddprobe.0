Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314472C3253
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748898594; cv=none; b=YwjPRsHUomrqjC2NAKfXyzk/yFMRHOIy8zgxO7JES3Nwo/lzqGUIfCxxGv42kqju1av1w5sGh+rWuhYWxOWkWkF/2M9cpwvI4UQS0nEJX4P2HINWwIJ5no/MvYCeWJ65E4tZrCdj6LO/gf+BBiRRe0lYU/e8atNb8qtRaxTfCo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748898594; c=relaxed/simple;
	bh=nZ0YItHws2DEr9eC1vJ9Aj5UsuXlEmtv8YXPoZaEcK8=;
	h=To:Subject:From:Message-Id:Date; b=KG7spzvLKX5s1j9jGxYaSsRKGeL2af54sMBT0weEO+AbiKLnm8OzI9yKrVhv9Y4RvDzegcTMuuigvnVUSUMUUeZSDMW+HJ1v9Vmi6rf96vnjCjOjezflqKxWDa2LcxNz+9TQgcpLYDQ7D0prryqtlTDA/Ip1nmGUjyAOU865xDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SS8e8N9n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SS8e8N9n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43A1C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748898593;
	bh=nZ0YItHws2DEr9eC1vJ9Aj5UsuXlEmtv8YXPoZaEcK8=;
	h=To:Subject:From:Date:From;
	b=SS8e8N9n8SjgJtdTnlYMRIt2LUpP/8gMd4Lt3fKYDgwB8WdGuAE/b7HTaK+iKDxmF
	 rnxn1H93PbLvrYSK+LZSvjodN8tk/z24kZWUvWxM8j60eiiAZroD0WwhqUMpr+BxXD
	 9RFpBseXxF9bFbpyeMaTgZBpZuTT1KyEskbh48QCVZCBnZv+4dUAeQBpPQJV3rcMRg
	 Jg2fenxRPNgXwPSWFXfxBT1dgeA1hIcGBiS8ZwRUWnUa6LoqvAMrDfBvksV0IS8CsA
	 lwPYKUwFrhntsrsHdBpuFfU6JLsPoyR12MhZlh9KTHxkI1G+CKqE6M4Fu+9ThnuXYU
	 1p98hAShNTXng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908A3C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174889859358.25763.13241532025244292797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a84771b432d803f6362f227bbcb41454df062b1b8b113a371456b1d178ac3e9b
Date: Mon, 02 Jun 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748898593
