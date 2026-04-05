Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E275219303
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 13:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775397334; cv=none; b=hLI+opt8YSmqTLfLsDG6nhMLguiKBHInT6DX2nW36mhn5Ue2B+fq6eHIPvatqefeXBZIlFlUoF3HcA8UCdphIqXrpgyioW+o2+yUqIlv4ZTcoBFF0xsx5ynPERb8Fj9uHFZUrp8KKtlN0bq9fko10mhkvdhuBSAHQ5kn8DDEz6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775397334; c=relaxed/simple;
	bh=avfMxQONFmEiMR7dEzf8/w9wfv4kVhO/Cry2/hHf6aw=;
	h=To:Subject:From:Message-Id:Date; b=k5xU4YazDWeh/Zm/HWkEiPboiI5c7dOm+9XTCmo76UtW8g/S7soItTYWyKG9LwXvsWKSYpiiNkbNrPEmNqps5V7Riz19mQ9un2VX61E41aSXcXpPPvDni0E3VMwK3LCdBvzU5RA9Ny/NWNyEdRtKw10+TI2B6nLmU7yhCXHbrEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnRGStyg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnRGStyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC613C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 13:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775397333;
	bh=avfMxQONFmEiMR7dEzf8/w9wfv4kVhO/Cry2/hHf6aw=;
	h=To:Subject:From:Date:From;
	b=gnRGStygLYfawEYyZeZ7Upc4bcZXfNVyIkZvWHSLpjinCRmdRs2ABzBxx79IHD3w2
	 hHVkTZqMxp9/NsM0tQTfSM4eb7SIzsHNx323PPqBBQi9/RlelJALVhzWif1MaxXEdi
	 kUXC6DvtjgOKl+Z6k7jLtGRAeyQ4s1VFeLqylwcGRvcYNs7wGNP4Emvwf0ryaZt+Aa
	 dANVaEBU7heViwWiWy8tqyD/GafKeRSWrrc82VVaPBbvrGNsYL6QcS7Nb8lvtsALdp
	 TEFu9oeMhZUwGSgX8SlShWKXa4sShKuvHu/s5kQ4OfR4RhK62Wj+HLDZra9aosWtYK
	 qPBCbXh1WVVGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B46FDEEB577
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 13:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177539733371.14120.18250714686427896839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83cdc04917c74d69b3657979abbd872066fb29cd555a1ac5a1dc21c149cd0b85
Date: Sun, 05 Apr 2026 13:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775397333
