Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5146F1860
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 22:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721167523; cv=none; b=RMI1g02oju02YP/A7+qq/dae6wgycMgnxaot/oh0Cil1sSZV6OYhxWiBtSOYbGA3jdPTI9DOwQdPcgFqQm58jmX0S9H7e/qvVmMRpXkjTxJUCid0RibwZZXsgWI0kKt+z2UUGXMqHhNP8k/LoKTRw9ejivQllyEDEVF+TPErsL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721167523; c=relaxed/simple;
	bh=ONpIVXoMhgyqez9UolBcTV+upCu96XxaaPQgMDwxeK8=;
	h=To:Subject:From:Message-Id:Date; b=gwr+WNbzPwvWwGhHYmBUC3wAvSlbm5BWZesozeOKM2sHYpu9TxzqmcTYn9mTpcB/nVqNirrDamlMvzWNvJT5r4zqPseDOC3gV+ZA2Spqj/hqI8vHr+jBjfayB7c775fDDONMfu4ICeO07qxsL4vZK339Si34XHE6BZ/4V4yKyjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kZsbRPIH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZsbRPIH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6105C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 22:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721167522;
	bh=ONpIVXoMhgyqez9UolBcTV+upCu96XxaaPQgMDwxeK8=;
	h=To:Subject:From:Date:From;
	b=kZsbRPIHlyCXlW0wGlFAD+pVPTn3f5bK1Nkisym2qCfEY4CnRiTvVyPibZsFB3FqF
	 zPesNOq2P08Siccl8I6ggSzowU8OhwP4w6P7BBltLfQR13Q2z/bOT/EaMieA8hvrSY
	 4ZGRGi5D5GgrmSskwDzYu7pKOgO4eNpXlbxdiXCzr8Dib1hAYVUj/tpAg+QBEowc7V
	 WUT5dxSctNkLABpOZUOMRne9kj4lg4eXhY5lza06MpefpW04hxcxXlSihy0F3nC708
	 8OVlLD7E1kUpwj7yfgBC8xnzTd+jBT1SqzcvvNFkjzijXKQZCF9wk1wcQzxTSsUV5X
	 D2A5NNXunw9DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C10FCC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 22:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172116752278.20940.9817315264567386155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de2a122c6545d3570e553025486fb6a59a2100379340837dc51b9459318791ad
Date: Tue, 16 Jul 2024 22:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721167522
