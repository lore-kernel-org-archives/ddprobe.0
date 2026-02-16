Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A32176026
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771252494; cv=none; b=lugvNgFIzDuIwfAHbcUOMRfxovxBppNo6mh3umwa9MrnHErc2uQyK/47LCmFcZjNuu4oMiNLSyr4UInN4ZdrwXet53PnrjekVVTL2jwCoVqbqM9D/v8BNrS2Gp8DXxiLcwzaXm73mUF85QvF5Tds/sAe+B5neLOaG3LDu+Hl6is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771252494; c=relaxed/simple;
	bh=tuEhhkddoAaAxm7B7BRDfdWfYhdmq49FOYbj+KFNQMI=;
	h=To:Subject:From:Message-Id:Date; b=UjCUf0F5QDhXcaywtlVQVjc30Eb66LTwHLhsjJ5xhypAuCmLswAlmxKVdXiQLRRmSfYre2uRu0WfSNjWY2FUtrJa7ETuMhrPtyWwtZp3oXnerE9yZTjGysYi41sVclcNP4fIsG46mZj9HyyYrR8Qy1AR9jIJ/ZneAKbx28Kfd0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pVztmZWC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVztmZWC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7857C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771252493;
	bh=tuEhhkddoAaAxm7B7BRDfdWfYhdmq49FOYbj+KFNQMI=;
	h=To:Subject:From:Date:From;
	b=pVztmZWCt8ffp85tIHyy/t6j8dOH6/lOwv37KKqHdGKGUIIhEn40K4iXaTUjM/Kaz
	 Sjmd6hR9XodS/tS8bMFmJnWdHVWQ63ojXOGDFzLHbKwdIFbu7dA+YYBK8WeQYnvc5X
	 fv2lx8XAb5K8H5D5QTmLmncC+6CdOm+MbbQA2qBB6d2DmH8DXvn+FYrHhfDZWAQcti
	 zntyrC1z2Un6e9ruaRQ6IMQFxwo6GF5ezKEUXlBCyKWJjl73s/hccVj1/vniavMxYf
	 cpBJcWJQVP76Ti/Og3Nqh6NhiGKCvu+H2UgyWZJq7kuQc43LyZ5HDnnIJZ2gNfQjOe
	 uCzyBOp3QefbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A516E81A25
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177125249362.22676.2939808170186979838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcbf16ff49da3178fcf94aacf39a838af9c469cfd9c2a38608b18c02a2e2c83b
Date: Mon, 16 Feb 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771252493
