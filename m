Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1977434FF70
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769604234; cv=none; b=YIEZecFx/L2oSJkHQMp2a+zHg2IiuvzmcTtmIiWTPAvO7fgebrhBZYhCUPKmu34vFMx46beIRunMDgSkXLBFdxWEH4z1DzrmTTLyl8HTF/y7HQ2BB7pTG3w/sBuhVqnhF3kskWj101iiC5VKkZxmVOrQ68NBI8ynFbnDjU+pwAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769604234; c=relaxed/simple;
	bh=XMAt0+F78eRUc1dkqhKiQWLMbdi5+icySo0jy7D0XmE=;
	h=To:Subject:From:Message-Id:Date; b=ggt8gPygyBpmwdLqUrTFVcL7kMrbHomIe2p5tZ0fh7rSaPju1X5YdUFiKbF2fEYXNz4L0FO4rR1SMx1MXLE1DMPLAaoD8J/h0t5ijLVxW1wSe/B8gq7Clp4ghW/0bfEMCFCmvGr7R0Dv1rlbMM/pXX4lHU0uoiOT8Jj2+LZS4K4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q/eoNr/d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/eoNr/d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F60C116C6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769604233;
	bh=XMAt0+F78eRUc1dkqhKiQWLMbdi5+icySo0jy7D0XmE=;
	h=To:Subject:From:Date:From;
	b=q/eoNr/dcs8B8iNfw6l5Z+xGsYDMZkGCw7qGncMd71M6zUKdye047ahyHJfH0/GCW
	 PO6ORErc9kfAnFQjaWcBpSrE5i7xKPdea+vyPVuXImFwwrpzixE7mIAT+ZWByhVggu
	 Wx5ry4d12PW38gqgkz+9dwqwisPKkd5ia/ViMqFuL+pS5uqvsUtE1JBvsTTUmR5yB8
	 0P4hL4Wi1UsEjjq7j4yb537KwSEBd0tNRIDhx28caqLIn32Cc9kb9LBUt2/MFEylYM
	 hMZN1Ew2dnQ2i6DNEuZF4y6LjTxhEeJtyEpQhZ/Y3MSY4GfJWLHgoqWOCgJ/maUV23
	 OqhWjZpFA3bvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90438D25B4E
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176960423358.31544.14238435474371800459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f4a97fde00c0733d9df61ed2a4666bc14f7e05aadf50f8d5947b312a4f2c16d
Date: Wed, 28 Jan 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769604233
