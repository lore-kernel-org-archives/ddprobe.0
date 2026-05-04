Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C09C13E02A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 03:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777865254; cv=none; b=NUp+U5a9lcKM6OGrTLZbftHxh8CRGRFvIY3vK6hWIPAUfCnk7EwAxh+FOQRp7k49L+vdkU72F5n98zfWOeIa9YF3k1q888cNWpkOMjcYhWP32fAXNvB2D9Onp0F9BLJWVA9U64/7AWCIEA8Nc39uhI0CbySLkiudCILQw4Xo6t8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777865254; c=relaxed/simple;
	bh=njhKklNXCZj12D8CCzpjWIeZSDoSsAfJGo8IgOisHes=;
	h=To:Subject:From:Message-Id:Date; b=SMEOxoei/oqHqYOsllM4fHa6GIrtNaJeOdnFbKydPfc1YJ0osBLNtp25pJZoiZufWkPp/Ag+XRE5qZS4kh/4mb7QbnbErc6ToYiVR/B9GymoVKe/6Y6oJX1813G3m/Fte9urP8OUjvFDO4ef7/uDVHnTCdDNrtyVzr1UtmB7NVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMAPFMLK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMAPFMLK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB91C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 03:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777865253;
	bh=njhKklNXCZj12D8CCzpjWIeZSDoSsAfJGo8IgOisHes=;
	h=To:Subject:From:Date:From;
	b=cMAPFMLKpyxmhzv0QJfB4LZcJo3b0GWwXwQnsuJbIBSOYYs/fFMRBpUgTQcA7eLRn
	 +hhMksgYLEDcBxD9HQrfxhaMfj8BwojCT8YUEMtxp14ibunfSrK9kV1LcPMHwY9Vsx
	 Sc7CoEFm/gbOOKKwcVMRI1UUq5hNXWNcIwE2/otu/Tr37mhiRe86j6PpMPcEusAi9d
	 yTNtFf+erbG2rA5TbUEBS6Ef0ldfaOEZsswSDaoE/nFfOL3zEfUkPbwbLab59FTBXc
	 6Nmq/WUTeThNCukfNFTFLOSoNeAUXpCO0MZi/PJylK4WvzuW45Le3Eo4mZ3AXvKniT
	 pPQCxYoq73y2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA51CD3424
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 03:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177786525368.32176.15543105644740209727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 140b01105d27af7a4b7115e613cdb43c0676c4b08dcfb3ac85eed44567058f05
Date: Mon, 04 May 2026 03:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777865253
