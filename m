Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1235022DFBA
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757852994; cv=none; b=ZjPW6yn5xkDJcAURBq1YsKSU5PakYp2I/N3TV7cuYYe8lkulqCzja3IUyyNQ4Srd622Xtogi6Pxtl5p1wlR0WE5dllo3R7Fmn6alJooF7lY7G8v5fRNXuIKLfqtnvftl7dQDRL6r8diYdZp7+sFasij5OMmPPGUcKG1PKX1adGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757852994; c=relaxed/simple;
	bh=WdRI2PJnVMdmb+02yNSVccPfaOzKfplYkdc4vHggKOc=;
	h=To:Subject:From:Message-Id:Date; b=BT044O0JNV9I9x+j+Z4UELeJYdli2UpFtbYRHFNIjgApQRurQUMG1WEGFofONNh3LqR2qJO4L5jckcN8UpXgfeAOZwqx6onX1RvJXmBPBQLbZnnqdWcxJQmThWp2Y7mP5cwvB6/W6013owvlupy+V+Mf9sTP5w716mdCivlKpCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S1ALRaaX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S1ALRaaX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A57C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757852993;
	bh=WdRI2PJnVMdmb+02yNSVccPfaOzKfplYkdc4vHggKOc=;
	h=To:Subject:From:Date:From;
	b=S1ALRaaX5WVRJTkcua/PZY2Jg4AzvYENhyput5CP0ETEyfQjRpGiK+Z7FgrCH+GXx
	 clkUPa6/VrppRnzebJX5jwzuG4OgSYTTIcfzwOPTnTfBpHBPyN2kxkeEC96UQ2adf3
	 FmBCFOFUwoJorW+HWKv17b009iEb41Wbd0S/fkydS/MO+TrmiNkuhL/IO7zz4ryNi3
	 zX0IG/JgUsXssi26B2ainrff/vgI2uQJM5Y7KHBKtA/p+HRemevFZz0kpOCWHwwUFU
	 8Zzm1ccEKSoWpokuth5/Mkzg+2A4qR+CecQkiyCON2GJZqNttiK2J87Fk3k8+eRLJj
	 67nht2Bxt26PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937F2CAC582
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175785299358.7961.292561198987356668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd78cef88ba5df212e015a71d153349e27bac4aefc841e6ecc82e8869d764af9
Date: Sun, 14 Sep 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757852993
