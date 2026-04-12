Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4784E29408
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 04:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775967454; cv=none; b=rEcHn3XxfqckSocr6MpJVsbzpPO++lxkvZR+2Li7Eb0+usQw+mplhG5urnxZRzDqvzMMYFgkwF7WktZcg8MtXIvL0dZddemX6MQDsrhu3bTD3yxyOI8YuLr5RTtO6s9jGpsFgGxx4UvP+Ok0uCoCBLUYVAIxynNDlogimiqPQsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775967454; c=relaxed/simple;
	bh=q2Jfc+4cBfdjZzp5+KlsRYP+uw92aAFz1BKpFJQV/9M=;
	h=To:Subject:From:Message-Id:Date; b=jTxhjsuRsArOd9riTxrfu9jusdvC1lVqKtlfQwd+GoY4I2QbTv5axtoDrL/ERd7SxLloem4oJ3TIjJcoFbnx+sVE0yE7XlE4sp9SKhCkhYrmKovkD+f0xlAgUoIMaHGNUwILpXo7M32IOTv8oFJpbSvLifhO9pX/WS9nWF6hE6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kz2R4ofW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kz2R4ofW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C669EC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775967453;
	bh=q2Jfc+4cBfdjZzp5+KlsRYP+uw92aAFz1BKpFJQV/9M=;
	h=To:Subject:From:Date:From;
	b=Kz2R4ofW51OsP9batOI5iyblp4G328XbxKpnMEMUgsh24UD3CF//BFmIV+jA3Bo+/
	 y/G4PSkfDhoeU4KCc6m8mBkPET3rxi++nLGvOT748SmmU6rgY+SeYR048OsI2sG3AO
	 O3NfaKDXSjyAsK/Rre2r83yTZniaYj2TVMIKL24otxYlwCfJY/qbbKUCBt3rANty9Q
	 lozbcOTnVoTtzP2s2xuWce76Pz2QGyUxrUFnjnVO/HGQCXcANOzYp3mJGP3xkq1t6q
	 kt1K3whDpOfRNTN2DK5nDgxHIjM3gMjuxUhBVne/I05Z3d7oiAPu1hXAkekMAFtr/F
	 ADIVpcYd1GGZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B51E8F3ED7B
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 04:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177596745371.3536.5694672094838508256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed82902ac65e293ca351ef4b91addb4645faf3ea6e9d6998f96062f639a5c8e7
Date: Sun, 12 Apr 2026 04:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775967453
