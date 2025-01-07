Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9C418DF60
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736271354; cv=none; b=j3Fii4TIx3EabdtDYx+97wqNiMmur4Hz8pyFWj01Z90VsNSZEJAVXXFQ/FD42pCxetg/F9cNOW+r8pOwjxEbmxn5Nj6RqG4/MqGNDb6refc9TrI4sAtZ1OMAg11H1uQ0uUVUxG3yfI/pkd0UIegt+WHsHqtW72FvLQPkdsTjdB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736271354; c=relaxed/simple;
	bh=9XrLXJ+/2p8g0597GwM6IWRate1AWvrwWAYRSfVj3L4=;
	h=To:Subject:From:Message-Id:Date; b=rP9q7C6bHLx7V7NkQq2XZuelQKuTtzt5M8hC8TaA+joakVvAR7MWmgXngnNaqhvMRnLp3PrlS52XcreFzchWfeo6LdrAqgXA1IyeVoK5Az/UVQRh0FuB32cp42bv2r4cTdWh+lohd10fPOhlDmGX/GgbNOWhI6S4s9c/J43Lbhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fuKc2iAe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fuKc2iAe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6089C4CEE1
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736271353;
	bh=9XrLXJ+/2p8g0597GwM6IWRate1AWvrwWAYRSfVj3L4=;
	h=To:Subject:From:Date:From;
	b=fuKc2iAed/SacP6lm6+tAXRjx4YY/mkMn7CHktvDlwZM/oyRDT9mhVcNyYKkyuq1f
	 w/Dfj1kqplXBbqiflrFGIBn3Fgd6OKn1G9YHjnzEGDDZOFNLIQHsZ8sy8fkaZZEYKp
	 +urnethaGug6AdwXKtTLBKQ+dh+51PKiIfyTxnCkGWID61knPccubpHqeYJRlZSlUx
	 90WGXukK1U9HsVvBbX04osLzPdGVD8uYpT2CUw/z0N1t1rVWtSJqc8cAcboHIo+YO0
	 WlNQ8p+Gv+2jcAgrAszBuS58ovTASbF3OJ54KiFXuR2xUYvh3n7+548PcXcw8JQfgV
	 knLxJy5BPDSlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F06E77199
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173627135360.31372.16318572513402472289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afee0fa64f48b091bd708ff578d2bb7c5712868b65b2d4b8bfa457b79431af1d
Date: Tue, 07 Jan 2025 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736271353
