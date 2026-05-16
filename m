Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4234E33987
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 02:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778898034; cv=none; b=IrIjGkt5c9JqsKBduRKqIC7nycx4GYwyQt3sp+oEcOEHR8lA2mqv44uo1n2FNQwwRu4gu9yY6K/f2MuS749q71NebP30heQQiQAlNJHshYspOm3l4+imnMgYNM+wPlGNEoOCr0cDhCgYgOYaHw04TnXKvjWcSbbwUqjQ6/4XpTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778898034; c=relaxed/simple;
	bh=APPZoTgbmIIYE/hROKTGNdGX6EN0ngzuQ0iq9oiYN6o=;
	h=To:Subject:From:Message-Id:Date; b=C4BvBKP/2PaPUgSE2kX38krSQuUTTKpfVQzhM4ak6CcNXjYb7dlcZLSWUTCdFxLZZWU1btybcE/nIG346/TYvyLliLkkcsNGBvcgIUf9Pqwg6zOGlP+aH/QlVuNVJo2WQsIgqpj3WhV8YibwPb8/sE+2j93FXtYmtSrD2bwCf9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qcVXtf/H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qcVXtf/H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C81B8C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778898033;
	bh=APPZoTgbmIIYE/hROKTGNdGX6EN0ngzuQ0iq9oiYN6o=;
	h=To:Subject:From:Date:From;
	b=qcVXtf/HZ+w6GZgsVLLC2BJkJgrELnIqoKsjve1/FYYNEzntu6H+ZKMHRC2StaLmr
	 hIJHDpJETDYe4tfH2Ki2OCramLcdtS94qKDtaTTRrhg2hl7xW3SJRADB/kQi2HyFQp
	 Zcdttx2dQJOrL5dIcCpHnOuiT59AA1BmxlJWNkp9gWBM44xsNWneaxIG9ps4d0/ZpU
	 CQjTbuL0k3g+YBSGgZcOG+41Z/6mAX+sZ4CaCEBmbB7l2oDf1kCKxTG3JC+DQhZ/78
	 FUgaPqUUx+vPgidSdSwk2eDajhZ0rDH7aeGh4eTmnO1QUg+wKgqmYPwpNr8bLiCIl0
	 PAbTWBqqz04Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF506CD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177889803369.29461.6092063932732858725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 559f1c45b5dda7dfe118f02513ddd5f5ffaf9588ab8437d9062f0d6c8965222d
Date: Sat, 16 May 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778898033
