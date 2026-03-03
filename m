Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40AAB23BF9B
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 20:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772570694; cv=none; b=D5PBKbFPPSmYjglT1NAjJfexgUhVg2o74NnzT6vm5HXL+yJFagkgftA8c2VkWeumKqsgwDdLVvD4XOrarCYxEL7hfTldn6sjsaDQ9OJPMpSoKpJDFrUhe1Rtwl+LzmOMGypTmS79Yic85RCBAKq6PwqVVhBpNGclrKlnQCHhKdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772570694; c=relaxed/simple;
	bh=Mr1YOKvsybR0uOd3WuENe94DE9mVW+VqYxKdbqbxrhk=;
	h=To:Subject:From:Message-Id:Date; b=H/MVaOBJ8Ti9LPIvPdF7kQYx1/gg0lR5ArUp96ApUcBvnDn9rdtTG8peXecSZ609s80whkpDwByD465BbOOFaBEJBlQf6TwCkXgt8yVVYAYSEtmbcrt6NZwqHwLz1w1t2fK5SGaKQeA4NcmrOJHXBrz1sPhDzH0DfAJO6TWprYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mINm1GFt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mINm1GFt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCEB9C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772570693;
	bh=Mr1YOKvsybR0uOd3WuENe94DE9mVW+VqYxKdbqbxrhk=;
	h=To:Subject:From:Date:From;
	b=mINm1GFtezyey9b3dqU4Qe9mZ8P+foLQAE1dB7bUFUkUfXzEJFLkB5lFnjHyHICHm
	 SKmtj2bgo1MW2cza5sPzCLGl3xnICuMnwxo3lqF5fD+V/bkXMNDADdkYHT3a7soN7r
	 Ff/zmvbusb+cvAobe8YrQaTMI5r3toNw38oZAocvP9oS3QGPQu3qecTDQFwaS0D3ZO
	 1dNEXcWGJ8lCbdwYB9LWZHmFI3kBViIleItIjNcRhD5Z6RrBb/jo4CljufMlku7RD8
	 fcUPO2+BEFvtGdCZEUD7f/2YALXpev5WPTPPJ96mN5kwOnRIZKsm7btuHCAvT7g5x4
	 wXoi4jZCE2kKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF8C1EDEBF0
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177257069373.8399.5214356259535554032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec6bb7259ada3d32abf531f98312257b22998710381eaa76c858dceaefb63efa
Date: Tue, 03 Mar 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772570693
