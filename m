Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEAF039023A
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779023434; cv=none; b=ix23SL7QbABTCTKOyRNbKzfvRZODne2737v6x1MvpFkTpmbuAm0ch/DLVpcv/qDiSAJJqMEtVPShlO7uJTUs7kLqDf1f5LTvKoU/MekqIwCce2wCPuU8tcocujVoCzg9iokIyVUOI56w6p/R6EZREqdXe5Nxj4l92pK76PN2gPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779023434; c=relaxed/simple;
	bh=+Rb9y7i4uDl/ax4LkCwKEW1BGeiXAWAhzheyTXHVf24=;
	h=To:Subject:From:Message-Id:Date; b=Bkas2TD3nboTRu0EaLC3yomXCYcQ3uuCDzfYhB2WxjZqrF1u+vCHQ5rAyztgB//IvinegsGNjwg6lEt0WJG82Uw48+h6szwwn3mf6+eA/Z4gLSROTcc9VKIXvagsy1hfguwDOeCt0kwowMCmEBMIDp8+sVcBvYrv0Wv7lcMvzPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3q6USbo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3q6USbo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE846C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779023433;
	bh=+Rb9y7i4uDl/ax4LkCwKEW1BGeiXAWAhzheyTXHVf24=;
	h=To:Subject:From:Date:From;
	b=c3q6USbopPCpAQ5C/5gyuRfX6UROxRqttexe4LyWzuZSP7C1NWKoXZ2RFMWJrp4Ok
	 3L3sGks7w64iWr15qDTMNGFb37j7Ytz+bbP6mb06BkhZdUCS+IWmwfg8BSOrpVLh4F
	 e0l92rYlZ1mzlm74xmzHsoNfBo+D/SlBcff53hw+jNzOEC70Nu88HE+1h0b7fI0cF0
	 0SkXTg1t2W4V2dwD/wvNCyM1n4/tFpW1gqWFIQc6aeKxvMHOi5NLi4b9Cqlw+mwVW9
	 TWLtSDnYIchI5HGSEyqqaKSmRk0KSY3fjvReWVYtErb34hE4QsCQMbgcq/+r3DuWAX
	 YYhHfbyZz9bow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD746CD4F21
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177902343369.21113.16923635085698869427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33ffd25a81154dfa78f1066902eef44c3bb04033696d1f0c50febbc484075899
Date: Sun, 17 May 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779023433
