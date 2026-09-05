Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8CDD32ABCA
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788581434; cv=none; b=LNMNno5NcTt6fB73OVBN7SV+K2C3oSAWxDcrTqUynYdQuISO7WSlDn2ahEafXM7L3ol+xO9fu7GEj+Xek1Mkr2iqaW/b3iNejjGqXFrxyny3U/PcNBOL4vZzVy9lmzorZt5K7u7F+HgRt3sVDRoe5XfW5e3OLeBvObLl6sDIy+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788581434; c=relaxed/simple;
	bh=AFVYcoH4cRa41JgBkwUYLtFdmr8/ShAglZ/z9eLFscM=;
	h=To:Subject:From:Message-Id:Date; b=ltnVJH2Zd5pCRipwS7S5bwM03eC+RR8bC34rq1qdStrd4A2asSeFoXhuZliSJr0AdTtQahDM06B6tyoyeiEi6uHxmGJ5CX6kGDkoqxP6zYdXT0XqIWSNz3yWY3PXOu5Ep2ERLGMy+6TWT2yvUsaZzsPjcCWhKBI/kOY8/olBut0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBBnULXW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBBnULXW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E01C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788581433;
	bh=AFVYcoH4cRa41JgBkwUYLtFdmr8/ShAglZ/z9eLFscM=;
	h=To:Subject:From:Date:From;
	b=uBBnULXW69nr2W2VZpjFPXMfjvOClpteHGQfwHE/oliTaspCEUKt8FwJDui6L9POx
	 +t0ZchCbM7otT50SBz6O6alFnyeLR2eFDQjEtZcp8ZM/+FGKsQQ/OVdpAG+ugxkovQ
	 6hrR+bOHX8MOKEXDapqM4dxnyXI8PC4TMLbkhTp/9yAbV5WwKH4AsCtJaw2CaiNv/J
	 oiJ09onkUz8v/uYiXPuvLarlBqry7E7ViPXNe32BBTzTzwyHHxxccTSn8RVy6vjSMg
	 mzKJJIbtZO5vJhrqAExTxwPK8+TIoyYGU/SoozdmXVKe+R+lrSQiuErV5Yo06Gfmy6
	 3yLVQTbgJosAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1374C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178858143370.23583.15064649030805864343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e527e5f809e55c1373076d7f13b38a182918704c96869e97f2cd377f5def81ee
Date: Sat, 05 Sep 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788581433
