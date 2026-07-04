Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E736433E84
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 05:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783143514; cv=none; b=jpFczklMUeMN9stZWx3W+FUsmRnfZZmSn77kkHlBaIpCQdtA70DdpLeL2rnTy4SHTUlU56Puapxfq8P+hMx3YkOoAZ+Z3oYflj3ADFZu9Tpv9GvgHXtp+HESpOBz7NrGM+dCff1/oyYYbOvEBBQnNV0Qppfc+6L6gaB6RI7OzNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783143514; c=relaxed/simple;
	bh=vhm0IvL2pA3cXdyPIJyap9tbRBE4YmMXjfS0eqiqzFQ=;
	h=To:Subject:From:Message-Id:Date; b=NW2Ld3qYXGvjngp5WLLcdaeM1+LauRMD7ohrSF56t5lfz2EhCiPZyfHxZnYghMEX111b/s8JFAByj3bJPeOhvm6VJoDQNE/2C6zcuk5bD/fN9Kr226vSaQWCb/P21dUWeRjoEXQfPHZu9aeRVDLCKHeXtITaalwczrrE/fbqTwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RhGtK3dA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RhGtK3dA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF27FC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 05:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783143513;
	bh=vhm0IvL2pA3cXdyPIJyap9tbRBE4YmMXjfS0eqiqzFQ=;
	h=To:Subject:From:Date:From;
	b=RhGtK3dAEUJZZ810+BneJE+soi8Y4CjqZBuP/ZwPWJbrqyFrRL4H7KZhwUkr6Sv+b
	 NchkhRXgW2wXrAdWgdsqrZKFQHA+3PMmuRumuZ1bcB+QqzWphvuFVUInrcT4kXxPQp
	 sUsy7QqRn1xycGP8jRidXnje8BB4woTcXsBE5+CTT+yD3ZTs0f3dSFFM9TzF331Wzs
	 kbVlRqVCYO2kzdtgodQvW2p1uwlkAv0XovoECn8lWpazZiX+HFxgsfcV4PBgq8/2i/
	 TiB/Sw/q0BnJx18st7o5bYtSXpNFNyGA2sm2iW/vmidNFlkxGRR5/Q+UEiYM5vDKf4
	 w2xPvxlUBPTng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A816BC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 05:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178314351368.10416.13623830388453962629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f1f31c077df6c2be216017b6f370aad66eafe8aa6551d8f45f1cd4785acf411
Date: Sat, 04 Jul 2026 05:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783143513
