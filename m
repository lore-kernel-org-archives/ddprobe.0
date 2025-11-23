Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36966635
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 09:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763891514; cv=none; b=HTfq4w4Bz87Lk0VIlRensBs/n/EELtYfXYkW9GCAysGML3ZpB72Vxo4NuocCipFexhHJD3IVEhgmBFZGbax/ltOpRz5kWOPKRAKPEo2oelQr8orcaKmcUMq+mDOX+3hvvRt83rceylREd/CS+QpctzXDKlPmJWJ8c19YgPwNAzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763891514; c=relaxed/simple;
	bh=CSaGrgThNhdLaTvsjfVZgBlWLbSHuUERpvFOf4jQLuw=;
	h=To:Subject:From:Message-Id:Date; b=L4v/wIYsI3cm2l7OvmiVeqzj7bus/oXDaU/srEko71E2KelRzlT+FtoRftx99d8adsCWSd68KbJP+pJ48wug2NkphuTES5DWLahFlr9OCsi7P9QdgkD4dvSh4ymFj4bbUpQ+edc4GweMWw/8j+sIp3BRZ1W1GQVTTLM2S0u6/fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FaUM6a6E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FaUM6a6E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A877AC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 09:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763891513;
	bh=CSaGrgThNhdLaTvsjfVZgBlWLbSHuUERpvFOf4jQLuw=;
	h=To:Subject:From:Date:From;
	b=FaUM6a6E55QlUpfkXJJy1UGLXH8jWIkm/GBaduE0BBQyBiacZb5gkW/UnWKznmjFc
	 vbZ1f9jrQ7hPjVFS63lhW1SKFRfd3VGCgDXXwmNMRTbB8qVCKiV5USu2qwCg//+RGo
	 yWIarN/4iBPPYGpWQbA069xvkcg+3cS1VlG5pJRRqO43h+kBZHRyrEbEhijiAuMgNV
	 xYwoZmNeUjZIfYh1sCpDSxx93iasUz2++oefM4Z+PBlUaNPOmwNYQJyiSqZdDUJrOR
	 7Gu8KI5/uJzA85p7KwL5rHF1ndOCa0I/FTUX+oIbxRuxYUmFAi5s+NIdG7EsTZsnkf
	 gs+GHTw7vkA+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96283CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 09:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176389151358.30303.1141102312001161806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 470c4699f25b536b9e301803ea14767ebe40b1d9a309c1f73f2855e10626baae
Date: Sun, 23 Nov 2025 09:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763891513
