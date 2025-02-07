Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 778192475F1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 14:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738939554; cv=none; b=uWwUiWbCoSNxjdKEQTrTyubiF8GfjBPk3IW66+/XZ4sDwYJV3XpBUiR9WymqRbIaXhoPKuZlEbPGaeA3CtsHz6/qC9cA1FdgBrdtjbw7NCccGVpNx7FGb+Lrw1uGxKOWCbJ25wflNnR4B4mavymVIcO1J1uN0VUAht0NhKS0T5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738939554; c=relaxed/simple;
	bh=KflBetCmyt+NP3FBRspIWg/xz6Ul9/+HJxoVwPOoB/8=;
	h=To:Subject:From:Message-Id:Date; b=i59gmjGjP3U/gIN0LmZHCtYu4/+JZW6Hf7rptJ2n1V663crohPb1w8L6QiOReUu4R0001tEwRV7ViE+JvPZw5FpFplaQmJ/caHvi+RjMJTGRnk0i8QrJCENstRhj9GPDog5d8dBqLVGp5IsyeGL7FF7MhfjJlAL3MwwunzeVBdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VIFdbYRN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VIFdbYRN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF9D2C4CEDF
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738939554;
	bh=KflBetCmyt+NP3FBRspIWg/xz6Ul9/+HJxoVwPOoB/8=;
	h=To:Subject:From:Date:From;
	b=VIFdbYRNUKMG4qaJKkeiIxUisaK6OxmeTfpwU8FNB61EqKxNHaESo+oorzqs5nqQe
	 S0n9SC4wpaTSboEVFu2p+Q01AdIJ6800T+lQRXMbTcAssixusrW96xwBCJgduGElAB
	 XxcriFygPBTgdg3ISFfWM0hnuPaIcJMg8cr+EZU5s04MK9D3fH8jVdlovZTyIi0KAK
	 oMjBAfYmJ/D2NA4X2mdLtvFZoCa3teJEnL1GPXaf+bF7NYby4g/TyjrRZi7bfP4/dP
	 Mj5fQT4nai2nZzpIGeO7JIyGS03u/ARrJCJvihaVIC4CcURB6K+2heXBVncfu3lAiC
	 1oSudl+SzIlDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF469C0219D
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173893955369.2335.2365550019403396584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bb87d82385b476ed2960414b56bcab179b6c434f4a378be18ba2d95566ca750
Date: Fri, 07 Feb 2025 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738939553
