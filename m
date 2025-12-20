Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 144488248B
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766261634; cv=none; b=urbzP2U6kg/yDgIh8KZmsMq4ecfg0CP+ya5W+RLbkEpujNgZ3eQss3mzs3p7Si4wG0Gp2gGnidGxGDumDn6tA7SepY5rUMU3flASF02DwaUNYqzpO91O7B5pid4SBXUxTVDcCELFf/jaZ+OkcBXUoWKGAn8Z7MrXOrogIoidvzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766261634; c=relaxed/simple;
	bh=czyBtq0zSUTcRBZJpzN3Yqvf4ythhV6zDFaTYQhNcdw=;
	h=To:Subject:From:Message-Id:Date; b=a+sUAz1RsyDVWUjK6EnS1JLZpCyJanwa1WRgIg97M5bVWQL98K66tDI0BrVtzWUM70K55JPT4vVSREhmZrEjPef1Li6Agxa6AJ5PW0xwtfpG4lH8W5PU80NEUWz6+H2ip4TP979Y+dzXtMUVJbaLCvNU++pJF2UXvng2iRNLCBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMKkK6nH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMKkK6nH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E5FC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766261633;
	bh=czyBtq0zSUTcRBZJpzN3Yqvf4ythhV6zDFaTYQhNcdw=;
	h=To:Subject:From:Date:From;
	b=kMKkK6nHhaM2VyTxi9G2lzMys7GKJXKrxTj42sL5O2eDng+DosqNJ1NnPE1Eeo66y
	 uj38QM5MfPDB+e7okqaAqtNelUFAPjvKXWZP/+wMKb+jYT9Zvh9povAFUO1VMZETnp
	 j8qwH8YoCABuF2bST+owtTm6b/YzfD2K8ugBVHtYVdDHzlxjv7X4aDAC6GkUL9ox8x
	 u1ue6H0gE97QtxQkj4yXEMaJrlfB1zETKLI8fEL/1bn9Hj/j4/24iPZi7MOV9Urm36
	 RFPOjkQbE9epz8SZkSX6cj8C7ZZAd41XPhDN9u2+0jNVP8KfQ+rXI6zewL1w+2lRwz
	 O2l/y3QxQLORg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95813E668BC
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176626163358.16631.5412355331146769642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 062c1072bce984b12a72c4e981f51b27c40306799156a2c21a221b161ada8a39
Date: Sat, 20 Dec 2025 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766261633
