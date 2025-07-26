Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00265289E3C
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753558194; cv=none; b=YfIgjNwqXwVUBKtv9SQ9k9heA+cR2opgxSkYB4cvh3Nb6dXTf49yMLkKSfGhjqpH71nyTZbF3+PzTxNCJbMJusqHyz5GK214196WEqf+QKjIXA2dy4ccFkhkQjWsP27xTj8aotHT7rYbz2zsOlwkiv7zK+G0BI+zrgd2d2stFc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753558194; c=relaxed/simple;
	bh=8oCiEESSgjIHFBj3CuKyfKVB+SMfFBK8dYe8mWMkWtY=;
	h=To:Subject:From:Message-Id:Date; b=XZTdY593mt8FU50z0MpasI6By0Mi3+jseOLzeQiHj0mJRqyMqPGzB2B1h4opPpEEB3c52mrmwohJ/OUMALZic8eW7z/2ATjfet6dKV/yg2BtGNZvrLn++S5FiF38YR/iXcVb89IMihJdCyqSy+NilW05r1KyUHAu/PYKK/P9vd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SslvCaNY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SslvCaNY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9E9C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753558193;
	bh=8oCiEESSgjIHFBj3CuKyfKVB+SMfFBK8dYe8mWMkWtY=;
	h=To:Subject:From:Date:From;
	b=SslvCaNYA2xzuWO0sXCpC4pUMSbtiio09VuBWy+0NvtcUMbguFP0sPNIEXioGuwz8
	 KDEFmDv9bM/7b9UFaJEEKabZrIIWtf7rvmYpMpWbDFN5bn0vOOX8DyyAQc32pkcip5
	 dWfguX4HZvKKzjBYf9FFTRnCHbsJcoRwoNUvBmIsMkxPIOlcTH1hVvM5+vdCyx8uTO
	 61Z9wrGroXJwm7tDsBOJeZjL0NeHX6oKliZIgYKBXesw8DB87v+gHhiso05bxzFWjj
	 vHO/q5StpYFOKBXNVGu2f5GpwtfafhFkcJaGei4pF2x+z4VmaGKtPjlOnbJ6QiWghd
	 vBsBYizM8x4Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90373C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175355819358.4393.4287412037036284858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d328a9fb8d5e82da4adfcd2d3d7ccb2091c1efdcfc3d3ed8fd416d135f2e92e0
Date: Sat, 26 Jul 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753558193
