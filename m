Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C401D555
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761594594; cv=none; b=dcloLPAMDoNLmru4vZih+D5S2EAhgW7jKgpVADQygCvdGezOVikOSyrjcX9AfEXcVlxJd3eOrVL+8aCc4+GykgakY/wPoumvkFqvGtlULm0IaGEBUCKXnMDteoWzvYGt/mTJS5snuHORPbDSV1vutDkxSUW2oXo359v6iH6Qew8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761594594; c=relaxed/simple;
	bh=HSOLefsoHXriTyQw4HbVizUpQia7SGMF6jP+yWaNyuQ=;
	h=To:Subject:From:Message-Id:Date; b=eVUGYNhRVZzM1Z/XlpyV5skDgn5oLDcHwbAn6R93djZn8BFnn+yGRb18HDaFa4i1p7W2Sn9op98HPAmzZHT4nJkiUhKvKXoVWR8n4uPdGDSvhYqalfR3fIEtDPlsup79rSYhB978t6EZRq977x6Ss5w88D4J31KvZ9sG4bo8zr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tit5t0Ws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tit5t0Ws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3546C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761594593;
	bh=HSOLefsoHXriTyQw4HbVizUpQia7SGMF6jP+yWaNyuQ=;
	h=To:Subject:From:Date:From;
	b=tit5t0Ws4l0ln3TX6EmwBk02dBjLG6ZN6I2pju9zUXXiZZnR3t4FLWvCDRXJKmqR1
	 HqwCtHfjPBP8n0QbVxHD5+eB+Xje8e1Ka1p0fHy2YMurAQ8nl7frYugF4k+hMuqkPd
	 sTmFHLkS9t8sCG4qEk2dRlR37tMhwCuyyTAacS9qgY316PQLGQ8DfI4kMfTN3zIVuJ
	 A+0bVomDT8yOaZPPxE8I9yqB3VA7fdrg6duiELt2+1Zq6mCypwopu8HXD2UW2zKs7A
	 VDu02WvAhUlwpJgFnmoBJw3jFQ6bkbt3ZaPLzhqTB81VfQP8B5NaVduFfeMG/kKKft
	 JDpNRKx53yPRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6ECCCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176159459357.23060.3974445698388456443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf9b81e27b4a2892c75bdf0870691dcccee5a3baef63f4f1e2c2f93b52ba0284
Date: Mon, 27 Oct 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761594593
