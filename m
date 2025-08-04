Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206978F58
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754326794; cv=none; b=U4p/nBFjUSPkvZWkjDmTwvoqEBRkMhEbeOwrp8R12bZOkiyUFvp6H2gK3kyLQ9SKofB4Rv3TU/Lj495VErL4CAqq+gQNwUPDTAgkSSY81DYdxT5CzOcen/UH+DmdWlwfooGbSl6x/eTgkSMk+6xpvuwVqr6HXpYecWN3h23fR1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754326794; c=relaxed/simple;
	bh=O+RZmNfxljVG0Q3cv9hmF8QDYq9+LpZGomyS60QGrH4=;
	h=To:Subject:From:Message-Id:Date; b=D2K6mp/wDKIq1Cwu7VSLWtyKSU5zXj/d8TSW7uB9erdSRcIbPPqI/XsdvZq1YF00ydt80xuk6vZ2l+nl6cGJd8YZB6AaVLjUmV7Ixo0mJ4XnbPJaCNavI93nwL/l2oPGTtbr1FH9mUvMC5SV822oYgv3kpIJGyMoQ7dCaHQPKi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXMqaOAc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXMqaOAc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFCAC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754326793;
	bh=O+RZmNfxljVG0Q3cv9hmF8QDYq9+LpZGomyS60QGrH4=;
	h=To:Subject:From:Date:From;
	b=DXMqaOAcytcB3Wyq5GJ9M1OizV36WAENCTJnpfMLOYlBfSoGz2a7DrhdthFEgTGL9
	 2vboX4LGFlmak0dN7HD/QQHFaszOrfeiTK2yJicxlllsaQQ67YUE01hnA344GAFG/F
	 CkFmZa1W5ZT/6dRzSfQl8LtZu4OOQxLM/ZJ0AdTAK6Nnx+o0iH6i/qhJqufDRyr768
	 On0QoaWo7eRk4dnjbJEVpSt6yw0YrgaRzuBuIC9GEki6lFlZd36gWdzYU4xoMPcF2e
	 AgOXCbvgqunaK73BLC/kIgY64Zmu9O53rnB7OXjZBTQMM/6zfxDRVSS95PhDxXDToW
	 k8ZoWCphWTj+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFA7C87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175432679358.10243.10756438942038001032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dec1106b67bc379b9dc8185396dd6e62e16e8c7e06e256aeb569908d7e27324
Date: Mon, 04 Aug 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754326793
