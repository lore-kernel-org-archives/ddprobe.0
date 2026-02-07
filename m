Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0681D3033F5
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770475434; cv=none; b=UlsxyCTocbNC9IRFn+ik1Xbh+lxTf0jV66Ad9dS/pKSmr6of+q9hKFfkU2koeP0WAdhxawsVc9pwyMRYVr6PDMHAkz6V/r3VdTGq7P/q24chDcKxSU3HvZK3IB9ivb3t8VaFtZXi/mDyIibOXv/pZIpy9Z05VW8PlqPxNGyxcbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770475434; c=relaxed/simple;
	bh=DPbk1O8/q095ZmC8Dn5Mc73PTbBBxRZvZxs65GfLpe4=;
	h=To:Subject:From:Message-Id:Date; b=nvY6hxaRZoQv2xI4CInfUFQ+g7uHsmQNxmk7q0Bgm8TG45e/07wsVmq0PCGga3CoolbrO4eX5Wi3PW2iPaBXtOj7OoAAaANGM364IPst2VfaLSsXwXdkLwJe2P6u7eLkmvKsTBHkCunJv9NogoIWXROiod26rn/bwBeEvGwuCl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5rtWhQg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5rtWhQg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC41C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770475433;
	bh=DPbk1O8/q095ZmC8Dn5Mc73PTbBBxRZvZxs65GfLpe4=;
	h=To:Subject:From:Date:From;
	b=K5rtWhQg422M4M+K3DdwI6bKmTek1ffavAzMBVbFaa5mLjXLvqLqlS1+gkLg3fjau
	 xkIKsaaw0qAmzoJwdsHT43nXi004rQC9PrUtABalhA5M64zmkXeKiec7yKA/3D8lV8
	 yGNg7EhF9qyBnxWiNowdeWzsdrPlTrwUgrhgOcItWJwckcyty2hFGoCjhxgAp0ztZo
	 nIHXr/qB2zc63PogxQKY21aWK5Yj0XGAuwDxOo6rnQCbftO1dLHoJBzwb7uLEX+5Yd
	 ph6I9zp+rKTt8HeY3ksWQjeBOd4Amxelv1CnqwUcEWQycdlJUVi0Sx0HLU7YLKbE98
	 UkhLoDZKOloNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89F4EE0ADC
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177047543362.10884.12877900855689651457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac6ad7096a360bb5c4d477dba1e8aee703d9b19d0e241c2b4837c01b98f5ab1a
Date: Sat, 07 Feb 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770475433
