Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5608E3783AC
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773258294; cv=none; b=C4/7dZMdWFnt2OMZgvh0UKxOy24kWLxZ28RnnsDVEDC60towkfylfG+J08jWW2GCNxnzQnkw/Ltc38pL0wcy/ONfsrOwBGB33JIQC6xTCa+dMdxujeaKabt86I0p060GYrWqpnoJNbydioq+cS9Juc9RNC07LckUtXhfdybQADQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773258294; c=relaxed/simple;
	bh=88/lfbcPEdggkfOiM5ZE14S2Fk/FkQpa+gn2Ozxvuo4=;
	h=To:Subject:From:Message-Id:Date; b=YuyZskXlRtZvxo98YNWREVlA5Zza7ljoLpmCfpYuGJ9ct4TWS+6dleOxCEvV3uLCcZuzcz79FA3LRPvxfBxWPKzlgKPMrShF9iAra486z3poK37yzGrbB8EbAHdZnl6l6IzxZPcDQt2UG2WYOMkMyzOfvNDEWtEMb62qp+gSeMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WqY/xIDe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WqY/xIDe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28F8C116C6
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773258293;
	bh=88/lfbcPEdggkfOiM5ZE14S2Fk/FkQpa+gn2Ozxvuo4=;
	h=To:Subject:From:Date:From;
	b=WqY/xIDeapGBpAj4pnaMhrnBBMXptr7iDxTXKaTt+Y95EMz/58X6+2It4CyOZygJ6
	 qyMcWaBgWCZmAlvcvxCiIW71NAeRJIm5Y+P5RP10WCICZpYO5YgwoOGxvYVyqUa5VI
	 KgSGOn3sclp7LcKV5VhETi25OQsBhNEGTHB9Ke9QDBz+02R+31gflJ04lLDGzJw7jj
	 qFpPdewlvPflox8roB03rdoiyn8QTzf38wYF5G5Cv1PUMQiOSExpr2l+K0zOWuiucP
	 eOSPxpggRCd1JF/6S3cCBYXnAju66C7a/7HKlv3fkGcBApxpHqzKeKP0LgVxWvsWnw
	 0VBN4uhkqkW1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FB8112588E
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177325829359.12856.9658198068029067336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7c6c0f308d4c1ea78a9bc41d10ccb894fd1458dcd9d7bd0af5124c8815e7230
Date: Wed, 11 Mar 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773258293
