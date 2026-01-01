Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9F4CA52
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767292434; cv=none; b=GdmEVK4oQ7b/Qnh+8tXCz/MjoN2uEr4jrMhiYOS0DxHFEnT+kOv/8n/nbbErvTAF9jgHfTtb+4sp2TZUaox1HRdNuqOKGDOa7MD07LUxcODz0b1wbmJLmYg4Np106JAaSUYRUd/HilbWJY5CCjrvO6c7FINPAirY9cMVka0fDT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767292434; c=relaxed/simple;
	bh=DGeUqcjurMHI2D2xV09BLk5Ex/9niTRISZzSohisW9E=;
	h=To:Subject:From:Message-Id:Date; b=CR+lTxNpPeZPg+macSnDxz1j+XLY9U4EHhE2ShzO+HWI3UWR2qPxmogO29ocrWR2A1iMq+E1XlnfldaLfw3POWIkpYOLdxz3xvTt+ScTes2O698jgBJT3eftfkiavD/oLR97ETiYmE+YBtciZ02wRpDTXkkrVgoGsRY43MK7bSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLlw1IkY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLlw1IkY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2819C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767292433;
	bh=DGeUqcjurMHI2D2xV09BLk5Ex/9niTRISZzSohisW9E=;
	h=To:Subject:From:Date:From;
	b=CLlw1IkYzv93K5/aRb43GHx5qnlq529IdhfkEKO8sHzyaMRcd1x8e7yX1SNgoGKNm
	 761GDnJNkkjKdQljguKN0uXR624pmNOnzhrt9XhVnDXbnRJ1avk1sztMvRwRSOHuDi
	 gQ6ISXO+M/Z2Aa2cAbDPsdDGNz/FzhTb2wj24VBa9VoZ63P2qiEy35n4lUdGMrU8Xh
	 lQOGsczhCcUfaPobN0ZYIQx/68s4CEmdZAUog2fcTdSzef+z5iWjXD2+OeiSQpGn/0
	 RDaLvjd8JJsYyjGA1TRXbK8blMIGXJmYndmPrJ+N9ECvNeXZyPTCndLdkU1t6TLPCD
	 BME9DnoW3zOGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF91EED636
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176729243358.20974.1209024749035806574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feb6760f5e04bfead88b7992402c9e314de138750495970a21b66a46e5c4efb4
Date: Thu, 01 Jan 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767292433
