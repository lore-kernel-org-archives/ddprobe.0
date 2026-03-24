Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B633FA5EE
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774374294; cv=none; b=nmoMoECV68Pwko50ix0UqeriDz+nY0gl/QV8bsyTxbHLIaNbYWl4Q19be3rGDtt3YvRZ0DgTTYDta1xA3f9cs5ZOGt9dMzvDlTbbyu65WHw46RxUhoKtbjPTm2UtRv9m/w0Y/YX55OhPhCd9USmV6hSfm/EVMfVV2qFD5MyDCJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774374294; c=relaxed/simple;
	bh=GSuJRY6zZWgO/9Ic+9XOkDg0KxhgtdtI0jOp5dBbtdc=;
	h=To:Subject:From:Message-Id:Date; b=ja7l41pWJm54JxI61Vtb5T0uEpA5O6RoJQNwIlY4hKmfGZNQ+0Ts1ER1b+goW0DoF34T025aXRMfKyXHSALVzP/MYVMGW4976VRFPcQSHPa3oFCnRyooD4qV6Z2XLe1EoaHs2Ijo6BzTEq7Tor1W5BCeFogoUyJrkY6on6AN0JM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uia15clR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uia15clR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C715BC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774374293;
	bh=GSuJRY6zZWgO/9Ic+9XOkDg0KxhgtdtI0jOp5dBbtdc=;
	h=To:Subject:From:Date:From;
	b=Uia15clRcqZ/SooUCY9RXBc3+MCRNMazndSheintAkTr4mdrjO/gJZGGLDrY1L9cr
	 9TvFb4t51q31XTWeVgVGSoOagwEAErG99OKoIU5MRxvJWG64NSI3k/JI352Ql7Xksv
	 G5NAUz6yyvUIR/6zSuNXxZjOSqmiDINI989XEtzToZAnMCFhBjqSFSjlMwbmw21N9G
	 WkiS4L4lpXmOKOlzsbHFycSoOdsGtxfrg4Nx5AEsnAlRTkjLEi8FSoLidD5H7JemvS
	 EdMiFerH5lLaJkztH1D5nzKS26Az+wDGECbs5h44v42TiI3cEmvAzdJx1ukev7WXDV
	 +MwTpbPHfQHIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91866FEC0EA
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177437429358.20441.3152925343256976258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be221a150e9aedacc7339a7c0ebd60ba0df0b2044db94a47372a052abc8c4e35
Date: Tue, 24 Mar 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774374293
