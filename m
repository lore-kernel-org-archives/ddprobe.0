Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C2E15EFD8
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 14:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715092943; cv=none; b=Az08RYzLtYIkekiLReWOQCMPWJTXgsq0RXgW96zVbVsFpd7lgeD3AIlf5sCKqtej8megmFD1cgLCa4LgdACrFYgh6XXq9WUXKylZpAJqS87aQu7mPweoCtwr7AvBpYfZjNoqw/ujkfnlPCNOianDNkAz/DHC49JdJ+skuhtF+AE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715092943; c=relaxed/simple;
	bh=TlIm67lE41mdpIW9v90xHZz/pOftDW2ozu75992OvGI=;
	h=To:Subject:From:Message-Id:Date; b=HtVzpwoQhzHxu0Y5ti4Jzp39isU9jaeIT5qAewmMI/+pkAOsXsXBz8LSNiaoW2y/7KFzW3sHFvkRu6ofWYKqZdOGHkw3HcnNKhQ2ltbzTVlqo9uEzff7nT7rjaC/txlEsvMBW8gG+6IFCnPVL/2uokMfPFSqmS2ns3yu48i+u5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QNtQQfrZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QNtQQfrZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED42DC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 14:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715092943;
	bh=TlIm67lE41mdpIW9v90xHZz/pOftDW2ozu75992OvGI=;
	h=To:Subject:From:Date:From;
	b=QNtQQfrZ0D2xdfISCmNTtpwZN2f21GSsohY+UXU2rkAtOk7dcsTKoMnG+6jPdxJGW
	 bjb3grqs3Nax4ls+TuRRNaLJ6EKTYVXiGwYyQmZJxX8Ysc0KiAWvfaiJKd3dzT4nvo
	 Kg3OsrTfhQI0wRPYIEVjYkL4YxIWeC1NHvAxndDv81ztstVrHaHLQSrtC0FRulV3/2
	 cTQUsEScpzTrw59YbXjOApThG6mECe6ovl/zO2UoMfgtAe+cJ1Cttu8IQO86MsI3aH
	 dKxBgw9L3DS6WzC+N8dPMMrrixoG5z+v3DKPlYPGhBoffhSFsW0hnvxHVqZ8CHhs3R
	 BxS3Fo3E3yrJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D701BC25B4F
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 14:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171509294287.25916.17498845092457250990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f9e0f3f17779bbe8b4b97dc6128f9a20624f90f41d3d8edb859acbb5fa224a8
Date: Tue, 07 May 2024 14:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715092942
