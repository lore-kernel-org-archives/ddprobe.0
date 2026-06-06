Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529181A9F88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 05:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780725274; cv=none; b=U47swsOOQU/0qna9VikwnCHVQB8ZzSY3jF9o1L6Tm+fSvXmNy418UJlDeOgtKl17vromU40r62sSJoWZMwHT6gAsYqqTnzruXE0cMk/guHEQT1oBk4flk0RlHD4GuCV2SHk9iQ4Tfo4KchqF8iNxpzJegAMlndr+NS+qbJ7tNBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780725274; c=relaxed/simple;
	bh=uMOeAzLr72ZuCyJCtYKI03fJnwTD1kHEzqYtXSum6Ak=;
	h=To:Subject:From:Message-Id:Date; b=qXd3SbIylerS7j40Gsp/nFcFHsRUCL2DLXNiC+Yf0ZHw/FIAVggODCTmjt2RTEB16g/jEQ1PDXRMe8RDEpdc7eymlFrhqDES8dN6VE3aqYO5ou/E5Xj3op5ckBgH8DDVxngLzikauvxvMaFANaP1r5pUrVlGgtXvtRmCfrB76CI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LO+tCrNM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LO+tCrNM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0899C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 05:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780725273;
	bh=uMOeAzLr72ZuCyJCtYKI03fJnwTD1kHEzqYtXSum6Ak=;
	h=To:Subject:From:Date:From;
	b=LO+tCrNMnu4VPHUb9ON1WTingRVaLzfdbyhJh+2r19ZwYh9WfR96GnYF7IlojthPt
	 o0+M0STqoA8WnC/PDUEwSWInRLxBKvovuqY1PiNrqu0Lt87A1RgzPBeLnzuwaKto70
	 r63/V2zUfImN5h3sJnPdPFk6KDbCrMN4rd+K+dRXoAsPuSG9tCQhINtVzShbkHykTT
	 dYuncAF5uJHnxldzIXpDsh/VNXg1yKrQczFmal9rXvMn/noEtt4WdOR8++votFWS6i
	 miM+Hculjw0BOFSKMwclXhYEY/QSWON0iV/Hrt3GBGlmzhhNZ9MIamRcsj4L+23JAV
	 LvjkHARxNhCJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B70C9CD8C90
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 05:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178072527373.630.11271416581946211893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 871b7fbc8ad4bfec4a79e8e2496c60ec3399bbf3612fc6ad3f5f8a98f8648b7e
Date: Sat, 06 Jun 2026 05:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780725273
