Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2464B372EEE
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778051854; cv=none; b=FOMzk8/weiu8PO33Svn27Ezb/YD8ibwNYSaY8+SfshwffZ7bf/goCA/dk/6JZwTPsNWqSprhSrTI89v5ZDhD46pVISrlKOGi6QeH8K3zQwfOSBBmz1X+CeaSwm42r68co3wwczbxVeWtSeKknxPwWLsFxDPAJ4x0XOqKjc4T8Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778051854; c=relaxed/simple;
	bh=bUcVHSdsA3ezBjAwVNV0wo0ejfPntVPyvcjhv9SKpBE=;
	h=To:Subject:From:Message-Id:Date; b=NChz8VQAjhHD2XcJNrsFcafXA0EWS77l4M/DqfzBTCDe3RtpRfgYugT3IzoUCs4CAPWBZ6zavdiS0fcrrBSmpgWIw4PaHFXnXnx0zUZJFF0JeMJF+5a0ilvKTak4CwSLxtPgGQiaoY8gu14d7LWdVPCFb1UYF+Hs3tGKpylGMFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rsN5y9Tp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsN5y9Tp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD26FC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778051853;
	bh=bUcVHSdsA3ezBjAwVNV0wo0ejfPntVPyvcjhv9SKpBE=;
	h=To:Subject:From:Date:From;
	b=rsN5y9Tpfzpyhp8SK7t9C9x6oRyZK12B83aIV5GwQyafcj5ntSI93lXr3jkbEXd5a
	 iUQBrzKGs6O00odn8NTjXfX05M0Qobq4v8fFKzF38+dp6Krw+FXXBQfUK1Uzcx2Y3b
	 TwfClVCq1pbNOdDm/W0YCj0AZjRFQnPJPUBfKnkzFb+RIxYmN82BO22X45jLD1pSoX
	 7oKhGZY+vwSBDmR6usrCpD9SqGws8DOx3IFpOJbwR2kHcxHxYe/HUIVtQosjDMANDb
	 ncqDPZ1qkz+k7RUud0qOHSKPoUeXdKrvECTvCpPZOSREtCFsWDlKYcksobLMTN0l0p
	 6kLcRsdjmxBow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCD5CD3424
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 07:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177805185368.9040.4699353021827793528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b687296744a894108890b5cbdddae4ef47ca2b4512173bf5709209289bb30911
Date: Wed, 06 May 2026 07:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778051853
