Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491853AFB1A
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787455834; cv=none; b=YDCpV6D+t1e0jByDjeM/0lrhSG1cA6dGy/cXn/GzcJSJlSSiJIsMPvUngc4gf6gFyFknZxMVPraoLCjY9NJtPMVVkKZLjrkn62e7Txl3vLgNDTLMoe1ymrEY0mfu8ieBSl/b65kZ6do0TC9qT7EPnN2sXw26rMCq0qQ2fA3sv3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787455834; c=relaxed/simple;
	bh=XZjaK9GZ//M0ykjI74Mo/QhCzIVHL8upI5+Jdsg2AaI=;
	h=To:Subject:From:Message-Id:Date; b=UZYjh3XxoEBNQ1HAQTVvlp+DPnE8m5Oqt3tRzncuFQvgXGx2tRmDfoZcxCsoghi/SCztbKgFHbMbtikCrVn8zVoLFPq5AsioIQvUo6X1pCbKp5GGNagt03R2ZwHW6WUR2+E9Pp1BoOlgjlXGy+EsDs21znzY+d3I0vQSk6m1NaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SUwWQFTq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SUwWQFTq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E10C2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787455833;
	bh=XZjaK9GZ//M0ykjI74Mo/QhCzIVHL8upI5+Jdsg2AaI=;
	h=To:Subject:From:Date:From;
	b=SUwWQFTq8RGapNwj2gyBZv4KQlsjY28nIakRyOXLtmcLH6gIPNmvmd7I6AOsQQtrC
	 R+Cb72GUqsX0SA19F3RMK9gUXllY0R5bvOpihHlc+xAR1Tu11oAG9pLRIBSEIHrOCd
	 CfKpJmcxZSngdZkzNCWoYN+XAyZK299t2K3Gef3h+TmfuUNLgHTp9XIaxsKK7Hep8P
	 lEPEXp/eX0Ely6hsB/qqWTnv9XjNnykN4nZ87CU/2pp8mtxu/hWDdHv2qMl8CPSUYa
	 ho6a0Il1lIfyyIOjyFu08lFo143fS1chDyd3jH23AX8Xa5uQdVyDwYG/MbB2cwCanB
	 8hHHAILl9/uGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE989C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178745583369.18022.14693881979311309280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06df5137ac1b37986e5ae2dbbaa1cb4804deac7d254712049ffb1f4abfd0994c
Date: Sun, 23 Aug 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787455833
