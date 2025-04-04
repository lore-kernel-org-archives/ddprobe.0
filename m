Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 652921E7C01
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 22:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743805194; cv=none; b=RaFU4D3EpCCRm3cIwl+hLhx2P/kzDJAmFb8A3eSYU1VPaW7s95mNU+8Ab8ZXegx1+NlNJNHDfU0gDM2HbE3f3a9u9SvXKvLlVpUlI0fXGERQQbDdgssB9YOaQdtaFk6T4gIOZoMobYQ2RLolQ4q4V3Ckis8jFLqrllLAiFME2GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743805194; c=relaxed/simple;
	bh=Osww8XWf4VRI6iGgU0VmCCsLD514tqcCh9nxLgbyabE=;
	h=To:Subject:From:Message-Id:Date; b=tddlj1pLxNUH5mVnzf+cQu4zrrXgvkGdzDreFvwh3V64gtJklawUGKwyCQFZS4AXZYvYveGI6OuFARmr27wUkW99sokMyxMqrUf2mpABgbDLVDa/ucYDsU7d7pLkCxX1vdEPEMlKoCa5xkrAoLq2dxVJV8VccGRh7C+eIo/OUUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qlvS1dbY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qlvS1dbY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD08C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743805193;
	bh=Osww8XWf4VRI6iGgU0VmCCsLD514tqcCh9nxLgbyabE=;
	h=To:Subject:From:Date:From;
	b=qlvS1dbYS+XBnc97FMDUcgobmF068WIvdKSzh5/JmbwGmUy3F/JsFm0vjpcavp8+K
	 fDuiQdPqlc/owrPdYecSpHqDtM0hQ16eiFqp2wTYFCQDUeGXw5pIOvYvoLOU92/DvC
	 3StkVDcJcnZxoRWM4y00t4mvNaHgKsgbM/aFRNKn7zAv6jT4XRCwsua1tBtJOtOJEy
	 LZLdsNR4Hk1L85vvUzObOC/dfzJfJhqyCxoqWT38c0k/LmJ+qeolpEdo5DAiv7six/
	 YrrVWMi5dkPt5Dr8D0C3d19vdXn+MRyj/edIPtC+J81fOEtbjQZXlvIskeV3fmVEa1
	 JuyA7n/X5rDHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE543C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174380519367.29261.12922816546701818084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23025b31bdf01e5848c182b31bd4dffef9f99b3139b5922544499616c8b18ef9
Date: Fri, 04 Apr 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743805193
