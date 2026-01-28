Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1805D31984E
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769619234; cv=none; b=C7wqmhyzwk4Nn4m3+GdihiMuPdimV8ChEDspeX2eR5aaNbXctvfPT8YAB3HdeZrPE5FtpvmDuOqcXl0YD42Ci5ysiH+0dxxa7MpB4/K9dpEvaF4rHikO2kWqH2lTVdHlSTi/pYPb8RwyaXN8Z2FtwuWmUwJ94n7U4Gja9OGUNQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769619234; c=relaxed/simple;
	bh=JFIsXjxVYUqB29amlKPcGSbgmP4fB0hwzu88LkLNJY4=;
	h=To:Subject:From:Message-Id:Date; b=rMvmWNJzdQMPciFbV/hjqb3gYXyMtJ3dMBHcChkwIKpDVs0VDLvZirgiDcZMUFKeuAZ/o53KRBj6OhSucE20bnVf9jRJQRm1SoliqSqwxMJ47YxzoBF7ereXCqw0wDvYdZnGLoIW+25o2G+YhuPbPIW3sa1qEhniw9lJ7mwqDbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U3Z+M00+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3Z+M00+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C78C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769619233;
	bh=JFIsXjxVYUqB29amlKPcGSbgmP4fB0hwzu88LkLNJY4=;
	h=To:Subject:From:Date:From;
	b=U3Z+M00+nU5OD/e4/FczHp01WpUg8ZrlAnImvWbwFIwCO+HwfIEbE2/hCU8V7hvvM
	 aFXUA8C4NFnAsVLDkww9/U0RV3r1Ug3ZgsGA231+U2pzJMi2H91lXUy0WqfKynKKR2
	 yl6ZRCXyRm0gWPMtqiFtqtpbjx2l2qXlnXB3BMbNaWaWAGxhU7hdyX5R3EKIm2Cdrc
	 LbTGhYFBhy/Y01b9ERDegCdbKIDC1eZAGTkMFZWSDse4k1DEaXXAIlVIewQSnlyLkx
	 NrvCWmYn3b2dFOwjUmuZ/z08bfrQwQGB50sXT2e65JmVOhhjn/SsnDN4QTLsstNTYu
	 mQAPqrwJgQ6FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908F3D3F098
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176961923358.21968.985652042149623035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76d89d4b911a7ea65ea0dcb83c28ad58b16ba6b2afbace3c676621285eee30f4
Date: Wed, 28 Jan 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769619233
