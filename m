Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EE433F383
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 17:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782147994; cv=none; b=JtLUJhEBoRN52joGPMEQ/mMDkclWnnYCNGFSY8S+E2q7LQA3+od79g/J8skgs8SGuYB05xCIowUir/a8gOsU0SGF+jdzwNwhhriAn0kCiDvgkIxA1gc2i6SohEeoJAwm12et4aDcyFdqcNvEHKEz3sWx4/EIRKkQfhomi83TyiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782147994; c=relaxed/simple;
	bh=mzWiH9XcwEIlP0XVfBfu2hf3Mh9l+aINjxCQAcpRXns=;
	h=To:Subject:From:Message-Id:Date; b=GOwaRmlCGYaLRXdYryKB4vbJ+u1M0bhqqHF1DWM2HIXOKdItsQ+YCMlSxj/ZC1usWFdSDBfNZZLsOfd9/BiZJD6fztW2aLQSmXZ+/DdWMbr4d1/kRClEGEdfuOf+gTviSWik/Ya6+cwc3DiG8eHtiI0qetx5TSE+bjeq0Uf2eX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lLG3TSM2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLG3TSM2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3394C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 17:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782147993;
	bh=mzWiH9XcwEIlP0XVfBfu2hf3Mh9l+aINjxCQAcpRXns=;
	h=To:Subject:From:Date:From;
	b=lLG3TSM2hglGYgc5RDvBxsx9TDXAvQdjp8eN8w43pcr6QJZSUbrrtqk2qJnAfGyoH
	 p5AFDagoEFFbEE4BeEb0pqT6efA3+ZLSi9TIMHFKYwUdYM0KeIQIzYrtHSvOSpwS3+
	 YNeJeI+N9ftHaEdG1pysU+Gu4KW+1litcpxS6dwKXFBBoZRFJicoKnHv9WTXmEu2a7
	 wpOX/V9U3u+HoNmV514uq9Xl3f8ZTFaOiBTxnrsJIxInwrcdCqa1BZoUZOr2Sb0NMR
	 zs6OIoKeh0P1KOsVj936if7Y4Dsgzk8sxfVrDSN1fjeKWS+SHHOswNPNrH/nfzA3F+
	 8Pm/4fQlVpkTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FB2CDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 17:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178214799368.13842.9139031352787572036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dac9da77a5c2c9c2783a988c47aaa26d62d16f6c6e2fb2f45781087168d5b99
Date: Mon, 22 Jun 2026 17:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782147993
