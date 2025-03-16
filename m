Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535D828E8
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742105394; cv=none; b=Wtp73JjhEFGRQHmdzm5UAwkGwrj+R8wM03l1l9oufnsvLf/WHSg+OvHfGebZBkAcbj1t0rO2zSSOlePdNCBfCL0coLqQ564CbTbpHwD37sqps+352EXwjl6yciz0ZdVW4He7PUr+8wzckFFjmc9P1PuQiLPnL1yy21Pd3jC2xNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742105394; c=relaxed/simple;
	bh=DTGZ1RBVuFJ97M9XWD22MlKCOeuhWdjSHS8uNdi/YtM=;
	h=To:Subject:From:Message-Id:Date; b=D6SDna3qcTGoSsLF2MVprMrK2lJrk9lsaqDx4XKI8LquWPvIzc06KuEsb7BYPTphDr06do/9rSrbzghZD9jWJIx20OeVEnwmY/iVUdpDEc/7GMfuQBiCkKWG8LroiTXk+j43UjtFjsAdxqtkNght1gOjzCpLN4BkaxqQcwpImLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSUw2Uin; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSUw2Uin"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB22AC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742105393;
	bh=DTGZ1RBVuFJ97M9XWD22MlKCOeuhWdjSHS8uNdi/YtM=;
	h=To:Subject:From:Date:From;
	b=OSUw2UinHp13TXVET6bBB8xMK17+w1akASRMaSt/bqES48HZGQ8LChFPryIUlrAEw
	 ZMabDk7mujo6Y+TLlVGHdzUKDaNG1qq6fjEuXYigiuMdhdyfwSCELpm4bnb3fZkjcV
	 c9RfMdA2g4RvPESymgkNdyybxKYYYkOFGCOG/edEgTOur2anpmYsoHZii4OCxMDhZR
	 o/56UccqmCCyMocTHa7V+yHEDZopu0Ufai2PYbFwQRZdLhheEI0DouJ5rPZEauhqKN
	 a0eBXslrdRKkBVVpWuchu4GBTyTNwkE+ELlIOSpyARapt81capt8luugrNmOzGZEJn
	 gqf7WRRFphUiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A155AC282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174210539362.9128.4962062913873520305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ed8c83d1d18bda9073de3048e95bf46f60412814149b6094ab5831f1248ddd1
Date: Sun, 16 Mar 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742105393
