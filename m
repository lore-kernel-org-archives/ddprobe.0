Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 887DB4F5E0
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787471434; cv=none; b=jGnefiZOQPzNXs1nxQJoWOzYAnuULK5mJiop4NF5SQ8/8bny2c5nPn06AJq2f7fJaYeSvSV9CcrSEPcbBt46/IkteaFIUFg44xoJIRCg7Z7+g73XHJxzJBHAPnONzBAZvvAAkwkgFpQhTIFlXlYpurmSBLie1ZrIIeyjHna44kE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787471434; c=relaxed/simple;
	bh=8SKu4yUr5Gki9RRC0hlALK6R2CBdSwjYpdxPruoJgRo=;
	h=To:Subject:From:Message-Id:Date; b=Ka80DMpVBrIp0Uw0lIcc3SSEhev/ruZE9MPF/yzDCpOXrKPGW/4v1Kg2T8hnRsUfKgUHRpnrepO0b7pbpy6YzEsPN/Kru6nfJhlQ1dQAVWB/AXpAjT/aSL9ZzrmxzRz6pESBpP6Xa7BEoDpNRslp+QQPISrPDFjApA7YvxmtAZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVq+TMeH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVq+TMeH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCCDC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787471433;
	bh=8SKu4yUr5Gki9RRC0hlALK6R2CBdSwjYpdxPruoJgRo=;
	h=To:Subject:From:Date:From;
	b=IVq+TMeHQ4i1wLnYWJiXv+bg842NAF5NSOE9LDocwQDakSn38Vm4+RgBzRYBsx/9c
	 Pus140xdIQi9IPAohOHWElHDo/JQAEnL5EJyMptKRC3di5Ti0u44cJ2iHFW3PvDNOO
	 lplGHVNG3o6Bd63QM7LpEAJrRK4Hu4vnJgEAFv/jG73O96SEiPN0qaY9uM6Sr59fit
	 Yd7OA2eIRkZ5FihTdTqB51/xLqxaJgZw6J03NV42ONvIAFdEyC1RvmqHBZycHg7Qrs
	 KiryYOU9IrOEtWPIRCZtt9dvqcp0nUlTYVgrHRVZag2Js7aO5thFNbjV63F0Jcn+tn
	 YbAI50hb3QFFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA94C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178747143369.19521.9969733205448956509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2f3230679adf0a754577db0c02a20d4168164a71faa3cdf97dad46f8afa4c20
Date: Sun, 23 Aug 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787471433
