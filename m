Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134EE2DA75C
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 12:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783946314; cv=none; b=ZDYVHEXitMm8jhWHW9QWh3Jjz8eOwfyN7jA2X/z9/yzc6c71a/dZJp/YZi5OdhZopC1lvlXFhr5HQVUdX6SxjtUmIsSWEEr6fSwz88fvIMgjkCw7urnxoUrRBeuymtCE49g769hB8W2bN83LuW8nDolN82+8KD3V4uoh7+Psf6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783946314; c=relaxed/simple;
	bh=9K3DqN+ufxNw1BKLBffBR5e3Fdw+m6PVb4b5catiVK0=;
	h=To:Subject:From:Message-Id:Date; b=g2mORcueftuW7Ui98Kt32icpgaLq0/T6zRySfnuxk0dUBO1cD59RXqRaudx3BPiitRlKVJk6xLcojmJqzFeCz/UpnEXQ0eAVz2sH/ngkksKXIwWVM6CXB5o5j6NY+A7PEEc2YoxzAv8S+EmPX7ccZ2PPZ2HafbcetWXF2SIv1DI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SK3yuzKK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SK3yuzKK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCDFAC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 12:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783946313;
	bh=9K3DqN+ufxNw1BKLBffBR5e3Fdw+m6PVb4b5catiVK0=;
	h=To:Subject:From:Date:From;
	b=SK3yuzKKJTDDgGGHz9mvPWFZk0/zbfofQTY1nnTr25AoODZBEBfF7tP8l4SLw5Iru
	 /Kg5L2N3YrEe7+gOVUUgS8Xb0+Z1g2MIqv+x+A9A8tgqHhJbypVNj/g+rLq9IXw+ZC
	 Ghq7HgqhLakoBTH6uSS0SCO8pt4q02DY6MS15e0w1Bd/XXLPrYuL/tEmz07H9gJE92
	 WOZ4/hEFRuu+pVtQ1D9NF54VpTSc4619PlK2/YuGH4Z3Kf6JWxJDDibDE4lNQab2mx
	 sWffraO99UZKjUmafO/45NPanUFkS91WCmF3IDlMW7Ot47Job4jTqORpmwUIxYD83q
	 jG9w5tIkjzv3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AE3C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 12:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178394631368.20862.13947615903288013941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a850ce76f1579149afc367e813dc8f440fc140c47e2d6be83e5376b2b6eb9110
Date: Mon, 13 Jul 2026 12:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783946313
