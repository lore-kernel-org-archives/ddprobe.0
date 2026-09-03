Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CEAD37FF53
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788451834; cv=none; b=mek3Cflzsurgs07Y6qTi2w3wvu1rFWy9GQIrZZpvjFNJ2PjnBd+LhuWLOK+hGuDzlG5QdE2WND5Tz80dSnxY48gybZVCfdrzm+BTREfWsQrz+jqlVBthtWaB7cz0xgvC3ZN1CoMvqZZHav8S63Z34bmf/jdEkv+LTNdUj8Byzvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788451834; c=relaxed/simple;
	bh=1n3aGAKZ04Uussk9VsJqSdF9/s8Ukk3DxteMdLNzDIU=;
	h=To:Subject:From:Message-Id:Date; b=Ak4P8pM0Z7EsojSX9widig2xuczIuTr9CLM/hgCjmSqwCyRgGo1LUdjL6/bMRrl5xxaoRvBuz0hyRfIThCeI2/ji4pP5cwdNH151pJkMj53P3LrpVnRRcjgsYJXIyh85B0xPUsMpgNX1reTp1PTHZObxIwbuePSmYm/6R9jYdeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSbbctvF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSbbctvF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D118BC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788451833;
	bh=1n3aGAKZ04Uussk9VsJqSdF9/s8Ukk3DxteMdLNzDIU=;
	h=To:Subject:From:Date:From;
	b=bSbbctvF7ttRTRy6LWcX1wRuQ0Sd45JZq+hnKgwHiJ8Wsc3S0t1OGXf4b8VN6cb/5
	 b1mIeUI3chcirXB2YvGflmBAtcK+Fv0XM0qHfWkpO72asFsZNsm2zndCjnbqi33GoL
	 IwvSo+O0Idg1M2dyXNgFdo55JE/l16f2+J0QlgTSxfLs+6ikW1iTqvFH2Yk55AdEPL
	 OK1ewttpAIEcj7dJB/8w451obAbPPcElrjiySzHxv8IoIHiKKOAFgZrb7jMnQW9FLt
	 R5u4AFssdJXAvH7Wg1JIqkkdX/QsTqb766DZi8ChYR6lXl8ryjC2s3cgVMBX2kd672
	 aeuD8OXWVlIIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC485C624A4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178845183369.13951.17804238089784256817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d92e084ec8fcc54aa107af58e989a712e01c24d7cb2dc40b5139112d74b1e80e
Date: Thu, 03 Sep 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788451833
