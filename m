Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CEE263F4A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 14:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777819054; cv=none; b=HbjUBNyaV8Zphv17SKscC/T5FFJjVH75y7PH6YmOmTi752VCdL3QXtiTkJGT0GVI2MaggnR2B4PQc/1IHOu2IKZQgPEXWu2GWQepoWScHv+JYSckcNpZwHqItb/asdBH+uum+IUCURMrg6beYfL3q7uvz6aFvAMolGVV5y/onI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777819054; c=relaxed/simple;
	bh=u+mrowxHKVWclru12gdpoYJHIutfiU3xuUywqAbEayQ=;
	h=To:Subject:From:Message-Id:Date; b=E4ylTBLyRmraolbG/iwGIyPtSu18i0fIDVM+1wIsuOcE9Tj1ekuXLoi0heeqx0LMZWUW1HEKg5jtrekdK7AA2fIwJGis02SyCmft4u50A5/sKhKxj7liywdC77UjhO9ft0GDlvOfgh9lnBhkzNszvAMod2tlm7vM4ElDFNg33ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hqiYP3mz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hqiYP3mz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1ECBC2BCC9
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 14:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777819053;
	bh=u+mrowxHKVWclru12gdpoYJHIutfiU3xuUywqAbEayQ=;
	h=To:Subject:From:Date:From;
	b=hqiYP3mzKaEP8N5YEXLQvES5yLlDJTwo8iBELfL9mZiO+9FAD8vursTSxaiwJucwm
	 xHizFN1ltTRU0/QjxA7Zl/eXDXK4zko+P3sb7Oe89EMwwmO1gaxUgjzHHRJng6Y2f9
	 pNfoo6DqoRG5pjeGUt5pBWsMmLdmvFWcR/CBifT+Qvq2sls038AIohdnNvqqjbAKpy
	 PjIj4zidkapV8URe0Ce6krBQpcj7z7ELV4LoV9OeW7huh6iZ4lsL/463MqkZP9OzxO
	 wZ437EGjOyr/GKC/MUG0JogP2lFBaqXv7q2iqp1Yqf3cDPQxZ+7WXZMdqyky0C1/Tw
	 HxOBDbEMOW0kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD109CD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177781905368.12756.5643486043071167246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7520fe12dd329d7e93a6e9ef905aba12f228ca0d3ce2e52ab2b01267843dad01
Date: Sun, 03 May 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777819053
