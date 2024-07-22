Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9885747F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721610953; cv=none; b=dYizizYvj+O5Rug5RDlwD0unE2+Kbx3wVKKd2YquhLMEoXPv3kOdPIxOCjoLsjh5ThgqHjY2Sh/sAmu2wm50vuQg5eYwNm1JWMHnoto9Hf8sI/7OavBMQa/MKMBnaDxfpySpCJtuUzhmEL5ZOYrSGlOAp7UtxitIx6IbcKhA+fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721610953; c=relaxed/simple;
	bh=QwaYe34EUAopVQ1GXlQq9HkCPsobXi7zdCXAWFssW6o=;
	h=To:Subject:From:Message-Id:Date; b=HlkEPtJzHYEc2P3bGdeKN42zlZHww6Ueej+DnjMn8r9mf8Xzqb31kZt7PJwE9p09l7VnMyYCZQ/xZnBrDQPVD2fweiygbYp6T5wV8EEX1F1itkX7Ha2VTIbhy7TobMR+ISvspP2GCtsLaXRbSVXq8O1cexVg+Pr3MyUlGQgIgDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9jVP171; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9jVP171"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB93EC116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721610953;
	bh=QwaYe34EUAopVQ1GXlQq9HkCPsobXi7zdCXAWFssW6o=;
	h=To:Subject:From:Date:From;
	b=E9jVP171170hMoFGFe6nrd42VXr8gn2plTaWiGJsvfAFO1eBH4+yTWo2IczX4m5AR
	 xddYwqRBz/4qHTor3kr0q33YZphOyQewa4jBdLJ+iRqi8UKX8crt2u0v9pMjRTuT3S
	 QxKMk3E+oeav9HejJgjEvKHueYVzCeUjMbpgwc0ndDpwQyUMQmRUDwKgTBL8gDf0LT
	 ZFGLtFbRae+tel/H9PMKiVA9lIWsJTNx4IfpxWJlA38RjM4mA+Q4Xch78EYfHpincY
	 xSQOZbjQFP725x8T0bJnr8U5+S+diNNtRMff++tZ9+rybI0qrO/qDqF7jDuWTkZ4bK
	 ECyYH5XTUtJxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96913C3DA61
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172161095360.3304.4707937255646651054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b82c59ffd1d080864971c8997ad910afc95d7c527253fd8621d00b0538b64bd1
Date: Mon, 22 Jul 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721610953
