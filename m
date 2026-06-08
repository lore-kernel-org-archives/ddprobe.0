Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7EB28B4E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 02:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780886674; cv=none; b=KCnuq2EMTTCkj9/CYQT1iMh10dh5NPQIZcb3KJk2D0co57hk9YYAbcYS/TsbNDUfd+j4B5urQcyH8nDx/93ncEP+wPXTyThw0XRW27FKsH/IPivyRGlBXhYKcgTYMGaB1VtoKmzECU2C2w8yg65Qbu2YULo3goiAZn7S7ij1BjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780886674; c=relaxed/simple;
	bh=QGnYN28adE8UEsIn+FoFjxKr0IGItDIpnmvs75Al0mU=;
	h=To:Subject:From:Message-Id:Date; b=rsNP9FuVzxj/xFJ5Rn3bmkADicoT/Rn+MIXpPD1hunsjDnmicGHjmYa98aVk46viGcA+/odxqsKAtKw80diCDa4VJXpizrkBRSaioCTDHBCq6WhSdcjBLCRJ7IKIK+RA6JuqPeNtUcv/G4LlaJVBqh/18tO35tuDsd8Ay4cX1W0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TjBKbvPJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TjBKbvPJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C38B1C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 02:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780886673;
	bh=QGnYN28adE8UEsIn+FoFjxKr0IGItDIpnmvs75Al0mU=;
	h=To:Subject:From:Date:From;
	b=TjBKbvPJ3X+gedK2xOTSINgL7sXauiFVgSr8bbfLmq4BtUx7lW1KWwIPYo/ygr5FY
	 LNRXCaSfL9IT2WuC+/juXIZmrxRZyXP7rsH/90CUxawo5Thi0/asx8KZsRc5/1btnK
	 Z5yWmNR3s5YBp3qYAH/OYcPlD6HnwbGE5xWn7ewEnDS0c/N5zZaFcoExLmC9k4iPsG
	 2BGHQ/p7IQyQ7mKaDHM1YHH3YIrL+wuXHNMuLTUM1mUrzJGNtPGT2Zmru7qzrKFKl0
	 NFIWp+JvG8Y8H3E/Zk8FIKbBX+9KxJpN3MJWAQ47wlnHzjR0mBWjbyl5vLliolS2vK
	 0tn8okzsVdcSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E67CD8C90
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 02:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178088667368.15765.15791258507480356036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d8f4283d0c4c03fdceacc801bde40f6e6d1539e8df2d43582314df19dfc2c8a
Date: Mon, 08 Jun 2026 02:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780886673
