Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B36D3C0A0E
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785899434; cv=none; b=heDnveq+BEt1rvcGBwkMnHGwqPCYiuhj+RrIsQGMxVvgA/CW1PcvVkdb58eAEE680Dc2PTXwZO17B3lwspwdNMh28KYIOMqUE5oVI9j+b4lD2PuhCXn+DQ5PuyDAWGDCwyOCXeB8bShYV1r5gJQe1R6OzaOzF8j4o6BxB9FCoc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785899434; c=relaxed/simple;
	bh=dY+a6DnSq5ulkRgtm6yFf/MB3sgnlAu9VAZAKFYw7vY=;
	h=To:Subject:From:Message-Id:Date; b=qqqcZUogk5te52KF2alhd4TyhSW9trhb1MzWFO4agSV/PXJldiAvFRGk5rhJFigEzMq9czBL0QbzPKey2r8XHKDDM8HZ/VhQe+sOjtvPtMG49aSZtBiEW5+nlYFPCWM/bG1SgA3dB0gUJojaYyJOyd+qP37x5wKh9M/mEmo6NS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fdELgBof; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fdELgBof"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57E6C2BCF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785899433;
	bh=dY+a6DnSq5ulkRgtm6yFf/MB3sgnlAu9VAZAKFYw7vY=;
	h=To:Subject:From:Date:From;
	b=fdELgBofLXdDTWOLsss2rjeV5TXheAgQSHnGX0a7M2brDFGoRDL2UOhglErxSygXr
	 Q0yVum2DjX9lD3kuYgyXIEccTepXOxMTvpTBBjE9/hDp78TYet/dHvJjbYhHywS4co
	 aS52py/vJBCCwjGQ0O8hobI1jnixFudlLE38kvEkGao7PBEtD0zxEwfAabt+Gi6NKo
	 k4KNBq8p3OCbHyGa7PeGGKOX8CZpQQ41m/VCfdwIB2IX+Gm5lhh/xUCJlt3/Ad5Y6e
	 zD3t6z5JSvMKefiSfd9JakDlT4goRq+6o/Aty+KVVQOUME0EpKZzzc4TdueSmqywZu
	 CKV8IgusEiskQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E4EC55838
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178589943370.6520.11798378918101778730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4f6a4e8edc9a32cdd25ba0544bb02e3f18a531a7093de7eab348756ed7fc74d
Date: Wed, 05 Aug 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785899433
