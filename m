Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3EC2D4B5A
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761535794; cv=none; b=qHAqINW93ibWt144D99yDCqjEyzG86VBW2+c+eBdbSsXZtYsP+8H1wjTV2wfW7HHGAQY4HivDSXfrOPoiBAMj/v23HE42vQMUDrjMlPKnLn3OFJPHBrDBGosMZvvinWrMDURpZBhuSf0Q0oe+Z8GPpt8AWvDSHNFI0T1LaRLS64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761535794; c=relaxed/simple;
	bh=NgPo7N5qPk5+nFcDkc+WZX6ARpQsFZ0axOnfwpo7dLM=;
	h=To:Subject:From:Message-Id:Date; b=cp7aG5tTbAraO0QuVha0HbLedDsF5eygw74icyQsgKaIrHlqjfXUGZEknNSlXjyzqGVOlTuXbmpo3OHLts/1tsD1XjBPl5o8QcX3xroI/7m08gIj4HMZw62WvZEQVp7sjCtYRxhOkudx6lIuN80sBtVyRok9X6g2tKCF/QpwEa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOPpNLMY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOPpNLMY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32D8C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761535793;
	bh=NgPo7N5qPk5+nFcDkc+WZX6ARpQsFZ0axOnfwpo7dLM=;
	h=To:Subject:From:Date:From;
	b=pOPpNLMYZ8RNfytZAGp9TifTJR2ooc0EuTK5rXC/7Vnk5JrWJ9Xbhv2Wbr8Yfw2Id
	 ICWyFbHzjQEjpyvZDmVHn3bKrudhAkXkdd6zXv4EZ+qt3snHLiFabFiRjca5rk+8kb
	 SWWUK5+NmPi9Qx1IKuj9of6TVqi1TVBBDIIt3z6+dXRXoCnFKkcVDPTFXqBUolOYJ3
	 symnTvvc4jvAojNbFl3hrGmFk4/e5FUr5DgcX/MQzf/sVUU5oe+tgQyi1O2xmb9bm3
	 hqxSB0vdbfXjEIZ0px3aCFfFWitcRweIVTG7l99rxHkJUh0OIiWDE3go0ss6/FGhcp
	 dwdxBi+m5uYuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92241CCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176153579357.17095.4976136626689280124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5968765ae6db19b1da1cccc1e8de48c59bba8ee487806994aa07bd1ab9700c0
Date: Mon, 27 Oct 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761535793
