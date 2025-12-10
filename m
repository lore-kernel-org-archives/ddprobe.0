Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114F5136351
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 19:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765395774; cv=none; b=pUF3B9ghxdJlO6ZhOI3G2jpkxlmRbZUrArhKZNKly7zCj/YCbOVdlhrxQgjBcGHIR+hGWlczXcNEyr/azE6OnX5T+yElY3xIS/8JkgWYD3Y1zEhNCyohMt0TeaLMKyLwigko8JRGCBA30NM3PDpqxQ2Qe7Dh1xg5v5a087s9VGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765395774; c=relaxed/simple;
	bh=Pc8HXfMqgykwyJoPuWv6QJuhTIDXEFTCmqBIUvlIzDs=;
	h=To:Subject:From:Message-Id:Date; b=toBS59S7n48bIMpUc/cO0tuRaP1LP2yMS7Bm9gJXBOyLcI4YSknstxGatAJ/n9h2FUb+5FvSaaF/SUfq2USLS79vzhbWPxWXBczCA84mJWnArYeEUPGSvobm1Ey+VfqtNcLamkEMxoxtu6++J5PWQGdlN8b2cVCg82d9UaEb9c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNNStxDB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNNStxDB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE00DC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 19:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765395773;
	bh=Pc8HXfMqgykwyJoPuWv6QJuhTIDXEFTCmqBIUvlIzDs=;
	h=To:Subject:From:Date:From;
	b=kNNStxDBSrdUVa97UhKjuYaf/D5O1Iw4QVALZtV7iu+G/58C14WWoPqoiQDsHAI71
	 QpF9kmPvsGqZrCJIFp/06Si5tulc+wBECGSV3cgJDpclxK93oPSxGwtdfIa8s+W2Fb
	 7rvgCibPHJrBaWMyVj9Cs0rGpT3Nacy93nkAYwM9r6OY44cnlHDowbI5HL+NnoFv0U
	 P03f+D2dQDn+6KuAzivSF3x8MFaUu3haxA3x8PKHK+I0xb1YP3xImSbBIeHFt/d6uY
	 8K8bMwkQnRGaOz1HIdrlzgFy1K8pm5yHyYzYXmCL1qN55BzCLRK0W32N/kKRkpsSEo
	 +kRshrZZmrM9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DFAD3E774
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 19:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176539577360.30997.1378889933627592852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13f470ea1da17a51d2e6ad217bc32067a19ba7a79c43c7b5c358a4585f3abb36
Date: Wed, 10 Dec 2025 19:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765395773
