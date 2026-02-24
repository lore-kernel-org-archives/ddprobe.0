Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD3553126DD
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771962293; cv=none; b=grgJXzMzEfZacjJ+IDGg5G5KH91MgWSrhSyWCVjypnN4XvmtwYIbKijOgg2ZXLQSciqDcZPRZseflEqfgI4INJQattSns3AbuUz9uZWW2GqMQgEEJVzpyayOwNLr/+lmKDy3cDCU9NyJ14z9n2igXyHiuCtFJZcA4q7lUNaHcss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771962293; c=relaxed/simple;
	bh=TBjEHjSE0Rqn/Kmvt0ZPk45q7t+py5BrTz0Bh868uFo=;
	h=To:Subject:From:Message-Id:Date; b=ZZbIpP1QflDisRXfgJVSIU/1OwvBZ712+qNnTQb/QgwYsZHoPkQHK04m8uPocMLDIfr5hcRMgtuwwP5YlLaFQQIPYf8PsfKIVc9zUa6NBFLaQw3piYHEtPGSXD7cmCptLS0UqnBTxuipmzhOuDIZx5g6qhSQ+luqd7BblJUvCeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ixis/kYZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ixis/kYZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E846C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771962293;
	bh=TBjEHjSE0Rqn/Kmvt0ZPk45q7t+py5BrTz0Bh868uFo=;
	h=To:Subject:From:Date:From;
	b=Ixis/kYZR4EVF9GIQmf1uQ+MwRSmvgpJas3Ab1pGJfk37NgsAYudIIR7YcZzPPa3M
	 QV1c/EG8OF7685kmVorbMC3xDmI6/CM0IFZXCRY6cpr7WDdBWcG+TtsVz1IGLpt70Y
	 ew+UUgVpHVnVQMY8mpwkizq0Y429WX8jkICEUXx8eOnWJeR1jRXwUmj4q3Kaxt/8Yb
	 G9T5pJfBmOks6+5p/Zp0uJ+4a8G6e6rF75Zf++1C/Ca4VWnkMiA+mT64DXQa7Nv9a6
	 vBJ+E4NaX4LmQtdBEZdD+tDZpVo+sQwDSmNPH5pwkEzWWSKmHTHK90SXlnVLDf/mmk
	 60T6wCOyqe6+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE92F4BB7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177196229358.6007.10175074380158414613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 495c659cb465ad9cede3bd6b602792b230d0f84ca4a5c94a2810ad9a16c91a17
Date: Tue, 24 Feb 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771962293
