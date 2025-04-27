Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4452BE555
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745789394; cv=none; b=hduG8KphoXS+V+4WOeRax99aRrbqrMyAe/DDyeA7K8IlXPB1g8yoY5o5wlEiJnA/L3botm+Vn6kTWVrgdvJSP5D94wzxb/PnZVeATES5hpFADem1nCpNbNGxydhCLMZ2z9cmlzYjmrSGvXbNgMh8m1yMBmSBthZoxg9qtIQpPIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745789394; c=relaxed/simple;
	bh=9BudbpYhFPdcpDQxNsZYQOyTpl+jYHjDSY4Cg6/Fb28=;
	h=To:Subject:From:Message-Id:Date; b=siCjKNQSUr13qrIFSAWpPay3fxYd/SYPA4FRfxqIjhD6stkNPiR5yS+oUWO6Rt42aYh0wYlu5We8JtjfQ+z/hhuV8cmLF3g8YKpTmSPX+cjoM1m2qhO79n4ggBruFrCUW1lNDLFb3ladzakwn7oHPLle4QwJhzTsoDnyLlNYIk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLcY3Qvr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLcY3Qvr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7260C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745789393;
	bh=9BudbpYhFPdcpDQxNsZYQOyTpl+jYHjDSY4Cg6/Fb28=;
	h=To:Subject:From:Date:From;
	b=uLcY3QvrpXh+2MFU8LCPPJul9MvcT+3E6AIwDlNXOMam6V4L0hhUnL051X/eXxhde
	 GeTpGVsPwhRQb32OxZvzwR7awd480DUulEqFSQTivdnHEooMXvJIY78BF8TUt4HXBb
	 JcL92w6x24hni20EROPqmPUTijO//sMmXwi2orjRmLfDWSN/9+P/jLhxxStPhn5uQZ
	 ayevPhOmaNO4xeAj4tnsSsuUJwwyNyTAd84yS355vn7KV8IcLIU3xvG0cI5lRPTGOW
	 CIAiOaW9NlXj1SHDQHOANMqeE1iQBLGoYyG6Kv8OsCkLfmck6XQrGMHUcXVu6KP/Jc
	 2anm45iLAZ/NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F8FC369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174578939357.16308.13617260480881987627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edfc5f66330071fa01c5687f72a2d89517ecfb199625271e6c8a52938e4e45fd
Date: Sun, 27 Apr 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745789393
