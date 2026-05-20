Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1503F58F4
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779290434; cv=none; b=tQKHFEhXEygqPtFncWFiV6iiLoZ7KB9qmySP8Xu3nadfjkNJbo/6CHTIVg9PWLteyo9rWXnEdAM2p2rVGrvPOzWtE3Dd+xWn7KTiaHEo+BzEH92hORvQ4NbRVQrsFDoT5Jz1xf07wCJ5c7o82D0381BTj7KKEnio8KDYZz9Vw8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779290434; c=relaxed/simple;
	bh=UPw+S9vxh5VELRTJ6atvhJ6cn3+7JobwZDGFEllt/8k=;
	h=To:Subject:From:Message-Id:Date; b=FZOubLtChz4ps8spylW2Dd6Uqvcha/s0h6+mopigOph6+FOxMtj97PiD/muJjdFRGnhTHLzoyX9IKafekratoNDLFiR/Hyx3cf0naxUgf/vk66vYM/S2yFD++fQYHCLoHNFAYN889ai01oNAkKhDPX7Ka2EuGYezbh18AiF8550=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LGJmobHC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LGJmobHC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D099DC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779290433;
	bh=UPw+S9vxh5VELRTJ6atvhJ6cn3+7JobwZDGFEllt/8k=;
	h=To:Subject:From:Date:From;
	b=LGJmobHCVNjaAIw3+zbF2BFNvr3xP4Nz/2zT/noSF/2crGXeS4KXIoG6k7eGD8x6w
	 +eGCCfINps+R4TuFl3L30WPQN7rFj9qEi9QZ9xrpJqSt/De8uPgFbkXtWSRSKj/KFe
	 zzIz1BqWCnkWyTbjWrveN/PDtWkK0tXXRRbltHFbtre/2DFA/n7fXqZXOGOh2m8toS
	 lThKI98TkSKlMpd31ZHl1C4NCIHv/erBH4sF1F1ZnxLvD/aEx5nP0wUToPQiJcht3O
	 g091nPEG/ervD6jqzi06XUNWDt8fHeEwGmyonR9Nfod1+olP3KGXH1kKPdzIXgD1Eq
	 FRytr5ojrU+0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6FA3CD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177929043370.30634.15511757206548035983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 841465e0f9c5ed1691497622aee50f19f1904059dbc0fb005046365f7991e67d
Date: Wed, 20 May 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779290433
