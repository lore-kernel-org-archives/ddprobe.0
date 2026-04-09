Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAE637104A
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 16:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775750854; cv=none; b=ShFGIlsJyc77i+P7mxhL9m2hpwCzv+JFE4Hlhntsu67/FbsGK2+3FMJcgfGAq5k67FSDWuu8+XXQnh36IKi/rWgB52MQ/9oz8FYR4Bxu6kcwNIdmOILkqnSfCaHgiFuTAfwRR26DF9I2Z6IPAOajUG3bopL5VYT7dKkJ7yP3YGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775750854; c=relaxed/simple;
	bh=/9/ay5CRwr6+LNYiz6j1YC9T0++prpHdIj/zFmLyeew=;
	h=To:Subject:From:Message-Id:Date; b=qo1h8pZC3H8Shwh9uBmsR5UOcq0RWO3pQLELI9ATMll4l1vnWBClgKfNAKSZ7a6+sOSDvwShr0mkynhiCFjOsyu4KEKic69biGS+Upnb9Xs5E8AM6D9WIkhoii/NOAclZizvpXTHzG/sRwQs+0NdZnhVzkqSKmaph6eUcQT7FZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uxAwKeD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uxAwKeD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC7C8C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775750853;
	bh=/9/ay5CRwr6+LNYiz6j1YC9T0++prpHdIj/zFmLyeew=;
	h=To:Subject:From:Date:From;
	b=uxAwKeD/O4OqY88UfAz4ZuWldLguvctDdp0T1sZWavIQOobixJhP9//2Dh+Xu6swt
	 e2HGUMsYu6xVTXkUyUGELnVzFIj7qzN0ZBUtUOyUwTLVXXr6AyPt2tqjec3Ux6AAaC
	 gCAmFeB5tBQlQQaNkw80/OqToK7SFyFtScpTL5vKLqFudAVWyaBuVX2H2OLtc+3tIw
	 DBCyBpehdodGLX4ayCTz9Qde2wIjtqnQN4g+5iiZK4MYXsRBXShaLKyrBOvPFC8ZSG
	 nq/9kZSL8meSg6ZqLF1eQlAYqBvZ52ri25okyCR903r35r1PBDK5kPpEchxLncq7o7
	 Oa7VQcpXFCseQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF52F31E5A
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177575085369.29200.16761605291641998949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54eab32f85a543acc387c123520777b1ea94ff5be1033226c28c77c36caef22d
Date: Thu, 09 Apr 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775750853
