Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E4A229CB56
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757066994; cv=none; b=IbliByjxMM3Ec76Tdp+NRAtz2m6OEGxd35vM85UidGaxYbttlr58gjq6topblcRi3a7hGi+0Q8/8erh4HIHm4Vbmt+2HDLHwAvVK6sY2CZPRwCq9tHSBEfslb4+ljgf6VB/DuBIGNFs0sSGalmIVJcTzzkWmd1rAME4The+BdnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757066994; c=relaxed/simple;
	bh=/FdKSgoKH6+a2Uc9U/HYCW0mzve58hpYIFGf413bbrw=;
	h=To:Subject:From:Message-Id:Date; b=jDlWOTH1V2Tex/xgmW914zDZzfzV9WYzOAQp9mteEavkqVzj1bFY2ksyCRVB/e/6F+7q9Rcl40FmSz0a3I1FOWBbJRoQdv7JSal6s8KKjhgA+i+IaOKFIb485xVmewMJqQUg//GFdHOEQZFUmpox5oCPCQPDzGakxAn2qKy+MUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJHPFGAn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJHPFGAn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A386FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757066993;
	bh=/FdKSgoKH6+a2Uc9U/HYCW0mzve58hpYIFGf413bbrw=;
	h=To:Subject:From:Date:From;
	b=ZJHPFGAnvEJr6vM7+K/yQbMSneIsGJ+qdtXwTdtOVvPvtvUC7dNGA16bLJ8QJEGR4
	 s5AzMLfSaNxWAvuwzapmCEuvpNqXciC36VyZYjXlSZz794QnpuOKQiYs/jGdIl0JQC
	 0sbuKpnv4UWcKBKZ/SPmSSDHsbbaex1aUUfdBQuzvKuUvaTxIUpYgkRPKYOogbfjdK
	 mQvRIPb/kGbmtXp3sosz/67CZ+2tLKGvKwKYoWxzIpfw7bJ4LZEMcvkJbj4txW41MQ
	 IV1LZR7/mcceRZU3BtTUHV89EBj8Cb8cd80eV8xd/OScpjG60Qg0tdpowoo8EdxRLg
	 5fscyO7SnexXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F04ACA1013
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175706699357.7579.2194906094860125697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dda1a83b889a62f6e0e843c783713ccaf658c4a887f1ed844d87a2f0e7c155fb
Date: Fri, 05 Sep 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757066993
