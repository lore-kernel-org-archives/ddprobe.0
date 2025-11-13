Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F286729D29E
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763010594; cv=none; b=B5hKSjjOilv+v463BHVeBXamLM9L2845VdEV53PU4v9sxtJLkfuFLq8p3RX9fH0d2ew4+r/Hq/Snt75/Vf6vlmChiryBVASSuLkbqYeQU1whAHsMX96D/Q7G3r2O+WynscrjutmC+QtUxCTPJRugBvHSmdnoA3lr/Yd8a6JEaCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763010594; c=relaxed/simple;
	bh=OtnAIulg/hgwVOCsw9M578WV9POJhiBRginroNADDSk=;
	h=To:Subject:From:Message-Id:Date; b=pTXNXrtI7BHjUrpVkMBRl7OKC3Q50dDr1KHKHAaibNjDDpvEkQr8YpsXU4JqqaVC40D013mqS02CVEqqKY5tdo4P6fV3AIZnFXOQtGZnpZ8/j6YN+60p+qc3dnaFKlqalwrTiCClHcIj6a54nebC25LsTbQppsQwA1PICAY+TQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjewueVA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjewueVA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E15C113D0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763010593;
	bh=OtnAIulg/hgwVOCsw9M578WV9POJhiBRginroNADDSk=;
	h=To:Subject:From:Date:From;
	b=bjewueVATnrPhiBf4TSmVeVU6Q5prwMRA190PuH8p7rP8ylchTufx0aNMa3wu+xo7
	 VlPwkVOw1cTe2kGoYbaqxfMTogxstzgYUtdJVK8murlyOgEye9Etp8e2vKfZ5PNzg7
	 YVn/zNwq4w5mkFDvdjEhDYej5O4IByYTrPrSiGILIlSLgU4wfGockF41ZE8epHebZk
	 SqLULkRoZ0Vfjla0zDCVUKdMrr1gCTQm1A/Ay6XNcKnMqEDONN7eJspi6IrXLHv9M1
	 WctDFynDaM1l93SJFmQbjYAsiSJt4WO6MzY24AblbQnklZgBToJao+h80jLKKuv5R1
	 aYp0GuIJk0AIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97559CD4F2F
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176301059358.12932.5739795246749242034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2c12dbcc825d446592420eea49a70f675286d4338c499bd762a24b13ba48d5c
Date: Thu, 13 Nov 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763010593
