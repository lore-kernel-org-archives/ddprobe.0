Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410F237F325
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788408034; cv=none; b=RONxQN4beMveCnmXyJ83Yc+yDcwoh2/O78eBywcZ682vta4oquwhsc2sFu3UCjGtS5/w07/w26XMuTFhgydb/w0yZfd2wD4Zmho2HAcCTDzUiW333gmpXWUUkDAtSM3zZ5vvR9cpGKjMfiWMIDePPmebaNalvVoESEX3lTQ+KV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788408034; c=relaxed/simple;
	bh=TJ/ZZP8pCHRgx6OESZX1btAQZe6d5BthJwL/5te5nR0=;
	h=To:Subject:From:Message-Id:Date; b=GT+vNgn4p+ZKYPMoGP5EXx/eGGyOAWrBN518dRNyjZ3l9/b8d04x37UOfS7ZcEbusSjb9UbIaAx6WI3im61bGvNQhlBoFy5C1wldz7AJX686gK2tqwpomRGUG/bpCzbsirqqFpJs4D81VP8ngVCriWsCiD3pw/eqvxUmKtjxopw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rH0j73dr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rH0j73dr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB45C2BCF7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788408033;
	bh=TJ/ZZP8pCHRgx6OESZX1btAQZe6d5BthJwL/5te5nR0=;
	h=To:Subject:From:Date:From;
	b=rH0j73drYZoGoN9ReZVoieF1LhVS6Xp8moBOe6sIsAlB/cQS4EwEmduXFzxSulOnG
	 75dRYqj5ViXk/zruFXK2F8wFb9sR6MqQyj5CiM+tk26yWI8T08+rZuWv1x3I4M7RF2
	 qBBPS8YQNUmFOXDFNQxA0l6+6TxduvT57rifXykYlTo9rE+CPwlWeBFOpPh2yg+wPF
	 HI9FE9ToOriyJjPBy7tJ11Czp4wSsUax8TYHsX6RDQUsBh50ew91zff7d2SK0OwFqR
	 gLqZd/fB6gA7+C8cJ7yAyZCZbd4Me9xKHGMdxS04Ra2wkpR884j8EX5ovAeowtBeiZ
	 n0TNokfPP3Pmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF24C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178840803369.21674.6765778738900813568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30641a1b8f197a2614fab36dde684c622d31e61629f74b1b8d4bad5e90184feb
Date: Thu, 03 Sep 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788408033
