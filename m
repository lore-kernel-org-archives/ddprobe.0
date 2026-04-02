Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35EA135E95A
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 10:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775127334; cv=none; b=ALfVSNS3q3a3avdJpvNncpJooq++rHv91uFiitA2Skn4yZkb872HBs7Vk6MFuSGvRlsKt6AMPH3YYVmYdzpAl8zqSmHDMrlRcNFFOHTZhSWFUnEwKAbjvT/GWfVVYIAyk7ZbNoO13Dj4S1Vt76R6kzTGD8bPhHShNKZ1KRFfSQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775127334; c=relaxed/simple;
	bh=FyovgC9KTHlqOx6Yqihjx8gMHfCYXUqz7rqICIizCDk=;
	h=To:Subject:From:Message-Id:Date; b=V/KnDBWemZdnCJQVJy8TDSsB7JOA35yiV6CaEZjocLYPv0TMjifmYrpbW4+Db7WEgIMzuNR9SJznPbnNtfJSjKVoczRQsJlikizhOLf4nTeEPFmHRD1KQr4DQ5F7oVL7XSaM0KlVBu2y6xttpP2Fn8QcXOUnmDLf7m+GMmzIlKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Njms623a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Njms623a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBBBCC116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 10:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775127333;
	bh=FyovgC9KTHlqOx6Yqihjx8gMHfCYXUqz7rqICIizCDk=;
	h=To:Subject:From:Date:From;
	b=Njms623aE8wHLr0nUDS6DaOq+FY5e8vGfcEi69pEeVPa+sDw01w3fndvN3+X/bXMU
	 kofujRKVV7qoA3GQfnYd2y3V98Df+Ksdr2wLTaMskzkp6aiKtuaC3l0lvj61Yf03fg
	 fALgVkuPboqZ7Qdyuij+VJWGJs3D8PNS20QepGhKnromrj2VX6tjVaqyf+ccNFbE7d
	 ilqSDOX8q8kFwQfcssqige6gWmGhpvHHRQ6qghUeRgNLRIsIZc1fposALa9wrHm8Kp
	 hSJu24VNBYO2OrzRu+KmorRqMTSLuSEC5p+T54+bRFSIbR5PnAKqJKd2xjfGXPeAn+
	 /5w0d02iNyoMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB38D39410
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 10:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177512733369.8334.11775112424680662975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba570bed3519b45a4d1cfd349d82d1e3cc9f753afe45b2c5104bfa08d609f081
Date: Thu, 02 Apr 2026 10:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775127333
