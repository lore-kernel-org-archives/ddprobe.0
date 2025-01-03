Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD961D61AC
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735915554; cv=none; b=aCyzqgZuzIvS6T7HR1aUmeLmLOlIUhhGx9YDgDXL51mVGob5uwcHCv+yTeFBAHX7Nqqk8jxqcWs9aPBT1Zylsxhn9ZtdKIl/8x840ao2cLiHFfjxF3kEZD5kgZFQlILHvgkXOxnrvfkOtIri8yo2pyRogX458bm7ziE5+AEIC/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735915554; c=relaxed/simple;
	bh=JG8XXRmP7R58jSF29J1Tk1GgVkHyYaa/YIR9dPWeP60=;
	h=To:Subject:From:Message-Id:Date; b=JmuWCt6UzfPK2UOjJMF4toUkOCOoVFifkrvCAdO0ApX+5eCvpemR4MB2XQQ3Njr0LJ987LdHXSW0g2TZxjT5M+q3zbEPDL62KcaGRxNip27qH/E3Dx1f0y0fXKCoGfPgZt3HDDGvqyiTq14kGjXWyUKLgtQkBfnZblhpv6jzmDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=attGonUY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="attGonUY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A434DC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735915553;
	bh=JG8XXRmP7R58jSF29J1Tk1GgVkHyYaa/YIR9dPWeP60=;
	h=To:Subject:From:Date:From;
	b=attGonUY6XCv8A5ebnRxoL3tZMQ0kWdPS3NHNvRTC3JXpDcdd66vXjWKg0bxFvuEo
	 HYU5ACyvtWf78pSSVTC+IlK9drk2zCHOp4JFlYZPirmw8PYYkmPFvSM6oQnnixGwft
	 10UCidQoPd6ttNe+j3Ut1H6YWrY/aWt1oom5RnXovcfBp+A/84dKMLjmIigRmSOJMo
	 UgJRaFURIgcMZBfkPs7Ams2ZlnXsf9OrE+cCBuxzvGDuCXIDRwVmD7RZ/igGaAZJ4s
	 JrfIqs4pWLr/Hnb0BKDT1TTb/3+FdtxOyPlfDLkSt+ob3HYTEJwq8CVhTQdGmEUlsw
	 4B3+mwGb+NFbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D5CE7718F
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173591555359.8790.17857906802738767354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32570c16d3cca448833a4ffe9a46959fb3b194a0d66a83943702751755cf162e
Date: Fri, 03 Jan 2025 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735915553
