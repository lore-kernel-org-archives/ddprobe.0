Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8FD30F938
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 11:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783769314; cv=none; b=OusEPyUlXvWDCZw1An1kozkj3WCCnUnYZT4d+RkIKgo032+2jSImJxwkxzBSvap0pA/oQz/iHRUNwJuoQcZ2TDKjlBI0zuN6hwpPjgFPYaKTckcmq8FyZbcOljEEioGPFB44I917y9K8JuR8mSXZnAS0wgvQRVQ9JLdKLggAyGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783769314; c=relaxed/simple;
	bh=ab7T5vwlmWuRHzNOytWEmI+IiWGHsa3zXBB3pUPM26I=;
	h=To:Subject:From:Message-Id:Date; b=ciub20fIq0iyA84rwLKX8q4o6Mb8lJTUfLKblpgYyGLHFxKGhgtHdjEC7A1lhKYLe2hGDiFKFTGCqcYjc7Wu6ysC9tbvDSb85vy37HTBAWSWwm9SLFWuBiKDMEqIYLv1CJj0ZFbTn/EeO3cmhgSE/pEjaLK1qxERTqP5MsdJJbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XSGvZrV5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XSGvZrV5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3206C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 11:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783769313;
	bh=ab7T5vwlmWuRHzNOytWEmI+IiWGHsa3zXBB3pUPM26I=;
	h=To:Subject:From:Date:From;
	b=XSGvZrV51+LqGT3qRwbWeC100ssK3jW3fygwFTzTZbBNKVy0NmJf/qjmDEt8H3ScS
	 0XSoORP+j1Bj6V12j4rrThtMD5IWsdhUuikJPp2bLKaB8E2xU8xiM/C6U0iM7AcvSx
	 O61ogeDYM1Nexjs8zqN+1mvhHG6a2EqoHR/xjFGQqYy4oHKWRtzgsJ4lt97FHEVvYo
	 fuCJtuJugDPtoXR6zxGwwN3tP6zMnmvXYmy8r0Fx1tSMAgKpE75fQk8yQce7s0e9JJ
	 MPls578jenpwYaW6W0kYyyy9xM28WT2jY0GWolg3jB2x1LqsYVvoxpfJou9dNjEecT
	 UpDBLrpurehoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB243C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 11:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178376931368.26079.12342589360953640263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15e70cec096bec0b6fb490fea9d879caca9fc1dc884995239fa75ee153c2a03d
Date: Sat, 11 Jul 2026 11:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783769313
