Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E33A19F121
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 02:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765075374; cv=none; b=C3d4q3vIKnHyhphtgcXYxHSISdDskSwBdFyjsjyXVJA6ivffs/f4uXxiWeXeU5MeSAd1q+0h6QlV1a64B1Gqptu5LOKs1xnK8LTnSOv6OySAwE+Ep1kE15PqtX53mZyVy3rdqXlbqgdZro0dlCE1U42R3pxmFC3lXlxmcZ58ZlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765075374; c=relaxed/simple;
	bh=yhCB11bX25q+vufmAvU+pEqQg3p5kLhe3FSlaL5Zlzk=;
	h=To:Subject:From:Message-Id:Date; b=oul5+pdV2CqNoNdNx3YG3kl7c7u3BLfHKPbieRkeqH2thVl/ChrRO773d5FWp92qNYKuFYecuiS63QXkiK4h2OPtSO2jNnpaZCsbuQDMI6hc4P71kOcGEBGl9OLxNiSBic+hQtX3nefUxac0JEfV8EqijQBxVL9QsxqFzTVIvzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VDurK2Tf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VDurK2Tf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6C0C4CEF5
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 02:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765075373;
	bh=yhCB11bX25q+vufmAvU+pEqQg3p5kLhe3FSlaL5Zlzk=;
	h=To:Subject:From:Date:From;
	b=VDurK2TfP9pUlsqA89WNvkuVqEq3WdmED7ck8sElGVURYM57OIdSWZTv72/G5Y8FQ
	 ckaTKGSz4/+n2hlFdvPi3bFzSXjXuqCAyUuM7NSg+wPIAIsUjtPTmw2pbNO9SeQjBE
	 3JuraDFnfrYnWjs73xHIb+WxZR8BqjEQYC3K9IrFlpKctrVHqxYU7JO7fYiiv2i8cl
	 9EVBQDQmBshiB/IdJb2LPhdSrCsY0P/P5vKIOayeFvZaAPJDsO7LausNRgMclWXkic
	 RqPSKHt0EZg7dRcsQ+IP79SIfK7nh7AgKT9gQ92ZZUb0xgdCv3F3HqGVid2TGTKilC
	 VXl/r4yT1jEKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D4ED3B7E5
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 02:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176507537358.3438.7845457881351192526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5132183bdb92b3ae74f3ac9e5fb177170a175471ee67b78859908e855c23faef
Date: Sun, 07 Dec 2025 02:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765075373
