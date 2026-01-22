Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7003BB9F1
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 04:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769055234; cv=none; b=emtvT6C5sh01PblF7zc5o7MNUvDB2i2+4MYCZCIL+tud5+sH8V7Bb0J6OoWlsI0j51upeP7qpSiC7UUnVK1XFqsOpqulD3pcdf5gibyQ3Gxz3pjukhn0DTD1KukOhb9wHRqGbIm+mMyjBCmaGwFht0fNP2b1+THLfix3lrGu1K0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769055234; c=relaxed/simple;
	bh=jHpLGHGCsbUmbORPnL14Dv8tZR/9fu2fAzqeb95JoP4=;
	h=To:Subject:From:Message-Id:Date; b=K1RRHDdgU6SlBb4jXunIzN7kfWRDsHVVhtxknfOf9W0QlLhMwt8Wm6R1Gx8V7z2oKtHdXn/1jcFEAYPxeu5XtZ1M7v/nPQiaw40tAA04juRpHpkOnvDvvxywUXIYkmXL4GFBd/fQhNP38ZkOc3nu5AjJMVVgySXDfR2s2tGXvIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QnaE1sdL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QnaE1sdL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3693C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769055233;
	bh=jHpLGHGCsbUmbORPnL14Dv8tZR/9fu2fAzqeb95JoP4=;
	h=To:Subject:From:Date:From;
	b=QnaE1sdLL5N1s/HkSyXMgRKNQTlcj5IAxUmVYQQZvVJ0KF8AbA53pVY/WKvqqicTk
	 0HC2TRBXSkX8Kcs18hwFxrT+zEEjiwSV0wJNoT4EEu6MUOnI8THv6XDFt2Yl3HiFZK
	 Z8ZIP0yKMLWR5jb81XuZXJeo5SpcbUoDxlw+sVAoTAsbvL8wx8QhdocOPf74tf8Ner
	 MY6onYZhdAPQAGMY6oczSmuOc+GnmN3+h3BdRCZZxYR8KwrddP6Kfc12Qb4yMSEtQt
	 DIdgeAh/AzVR8KM93S3j9Fqmj26lNAEeiJIbbcm0seKEaUXrYvIlr4ffZCZ6/tjrH4
	 27xmG2y6HzoMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BCCC44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176905523359.9458.2754430807710885128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13de673781aa4afe527ec28cdda68be5aab1d2c4b84aed974caf9958e9628507
Date: Thu, 22 Jan 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769055233
