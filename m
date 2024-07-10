Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AFBA192483
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 17:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720632443; cv=none; b=SP7httOPBVSqSkFT+eZUzoxnP6KTtp+cbNLmuXYiziAk/A38lvnUCdy1uqQIiMc6+aBPs1OUhFzpZdWUzy0HY34wYu4161JDiApssIR9aZbWFYEsi8cZgQNivOHYhXLNkeVMfX6Ipn+U5AtNH+QtFGaP64dcSmxN3RhXslXVJKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720632443; c=relaxed/simple;
	bh=gWGuaRDe3A2anfl0kRqu67xmbTSaFGObte+UV+Cy1rM=;
	h=To:Subject:From:Message-Id:Date; b=jaBheeSUtnWp/NbC1f+BgZTJhtoDSSqrIWO0KzWgkMDl+x8oiKW7DT+huPaa0y4SSW+oXIE+mZd/dS8YKpY8/2KcguQ1BirQgG5xy2wYurpeyB1o90PxGDVyVw4f2Vnn+Ur9SW/5cYscV95fSGhrZW4SXMyG7fu/WdWwRh5d9pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JclWrdL9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JclWrdL9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8331C32786
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 17:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720632442;
	bh=gWGuaRDe3A2anfl0kRqu67xmbTSaFGObte+UV+Cy1rM=;
	h=To:Subject:From:Date:From;
	b=JclWrdL9mfOTnRCFctfH5JuVdWDle9Uezqh3qqqPqSAfZUB1go+c43s8PeXX+nD9Z
	 /OzmbZ2DxCNICe0840x5BNBZhqKxRgAivnFRR4F2FMvCBcP2vSVqH1rzsJSNSPKmH/
	 WbcU5cM7FArUUvGm2FLpnZmf3iDxcRvvgMU9W2mkr1P5s8SZ5BK+XKmmuDZFyd9aZ7
	 9Hv2Me5163RAHdYHjPdYXBd+ZkDA3dEduoyJQZWKNEqzvM8PTupWG6S+TDTfBBKMeV
	 NklvPjN/4lbygGO5lTl0VHVZodbY9fGxrHEb32jDkKk9X3FPpQEjyE2tR7LEIjCLkA
	 oOv3jN4Ax0tEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6595C3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 17:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172063244283.20041.5309393032357945385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 307a6180b2d544371fb2efeb535e70a357cbdcc9d44c0f798788a82bb7510702
Date: Wed, 10 Jul 2024 17:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720632442
