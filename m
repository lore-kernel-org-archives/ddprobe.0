Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1769028643C
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770450234; cv=none; b=qD3MhO0c3ALJuHhLB+pjHPz4c1cyY0THggEas3Xhr9RPd7RtjG+aQuJo1FHa4CGhMcattfCCLutlP4lcBorTA20NVXUUkrjrHgZpV0Kj/INouuZHzAB2xjLrd+4KA97+oV+45CsRypzEBl2LwPa9+9dD28M+3Wiav92vBjHoZus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770450234; c=relaxed/simple;
	bh=N89zVLAbL4zsXITIbjIUDH3qGeCIUQ68OwdqdtzYbAs=;
	h=To:Subject:From:Message-Id:Date; b=qCCR5/drLUKrQyWDkSg84eONidXpBI9puMPxHm72Mcsy5yPHZ3BvLTDD/4IkiU2XoI/qBQv9Ma5O9dOS5wd4UbqVHz17dvyezH5D4ReWVcOufESBEa367UGbbKP5FqvUG+VXYh5V4j3MQQG1gzM9hwqRdcnOkmUwbHRubFAjPZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r955uor7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r955uor7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8AA2C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770450233;
	bh=N89zVLAbL4zsXITIbjIUDH3qGeCIUQ68OwdqdtzYbAs=;
	h=To:Subject:From:Date:From;
	b=r955uor7vfRwLFCWZfmGX/k7QFlcruftF4IdS42OtI7zdzEDAE0QPduNlgEqGkxEj
	 tdvzozc4mY2F16OeS7xJchLmMA0xYF2qFUwzUeDkbFo4Tto8c64Fke5/0Ix6unaBTs
	 MGDOB1yZTk7SFv4kzg7rB5H7QX38HgmVSBTx1bOAXB1z2FVqmu86HvoDB3t6aRgSdd
	 ++tnGJyLzSeEpc8tsHRyhbCy5wqrRLRNU/gTU4R7T+TtTfDsWei3WIlhWg7aoyuPAv
	 rHWhkjT8bt9S22KhXYQojCR4NoCZYjpF3SPm598rf4mcQJLnD6YaeRGeKjcUiPDtMD
	 jkyduSTjE1UUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F79EE6B7B
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177045023361.11999.736176945067096280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccaa71da2661ec9e6853be40c33f223c48ce0db82d9236635cd4b3efd7b1053c
Date: Sat, 07 Feb 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770450233
