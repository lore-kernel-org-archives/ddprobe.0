Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F0E374C4
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753652994; cv=none; b=tr4iy8r1rQYS3d87lYr0vrR5xADM/+u1rM1WOCexQdUYdFenxyrOFY0WTy+7tyU5U+vnMDvc/CgaGlDXvkJJIqN2cZ4Q0wmFYLY1Ntl7seB916oyayOD4Kut1sIA7eKmojmWtAJt42UQ1OxIlL+FWJ28+um+j4Sc5r8z8Nb/sdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753652994; c=relaxed/simple;
	bh=no9G9WQTnmqwWH8m273myvnrrIETxcjPnd7L28taPTE=;
	h=To:Subject:From:Message-Id:Date; b=jvfsCXxgm/65YuHAz95GL+BFcbdgAU/LATBf75muv+h9A1iFqBekar4DIo91uZ1Y5kec/xeR6fLqgjyj3lyKPS3tZUr8AHzBrQc+JNPoT2XtpaxHoE375OqYkG6ezMdLqcjNjken0c6r51tmFNmV5q/yKPP6XoVA1amowQvbxsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V77NsCKp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V77NsCKp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5442C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753652993;
	bh=no9G9WQTnmqwWH8m273myvnrrIETxcjPnd7L28taPTE=;
	h=To:Subject:From:Date:From;
	b=V77NsCKpE+kgNDBwHDPTF6eCY2FnlL677PqUKuYctMa16MN41ikFEucmmuV8ogWJ4
	 UeIvC3qhoJi32pldOCYSv1E9pHrAtBlCJ0K7Hme3S2nmv+cxcVLj3k+viGj8K09Lcg
	 KelM+Y3Ho/uBuxRCHfoY5zQ9/87+7iF5FO1vvvwCsKswg57VvViRqfO5jysMuST3wP
	 jdIsVUjzVwhviv6MmTzcjrZRdhCj3FoHH0GZ4E7L0XZCQIkHI2c/RhL1FNLMMEult9
	 QTG0l8nRvj46jw17+biAYsl64td4mDzUPk+Fkxe/MZJmvao2ofa/txHOXTnLxOa8hW
	 mHV0dwXjRuhDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91146C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175365299357.14538.8139649811911659211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4131106a0f227f0428192cc3c02ab0db074d13aa16451ae8faf05b6d6ae08ae3
Date: Sun, 27 Jul 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753652993
