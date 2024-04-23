Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A6937144
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 15:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713884423; cv=none; b=TrDd/91TMxdut5+Eec12jj9W1t72dyw2B8gcwLxmu4cVFm095a0LDWAhqYEKJ9tgI6ME9Db5d07HOtEMeytz3+I8lCBtvZtLgOzMip+EjJWz8iua3efhAOlc10JuiOusu78tAyNJCG/QEDYADhkXSNE+EqgKbW/ZHXp2u2L5K+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713884423; c=relaxed/simple;
	bh=A+Y5HOQ5a2ZT6vDPq7JbPoDJtlTU8UqB+r0FGo1WhZc=;
	h=To:Subject:From:Message-Id:Date; b=bW+Wz/sJtr4zHduFbdmb5veyL4Q2GgcV+k1Iodu9RUhDFaHQWKgXzjLc4uIt5d24TXlHZ85n+z7pQPP1cIQoEvUT2g/1iiMcMABJ43YJRQVcv7EJn0c0q86fCh2rybPjzq4ElFcziSzjvu/yApUUcapGQ4VDZjcmCIiHiBmv7Zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VM58lCjv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VM58lCjv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5C82C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 15:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713884422;
	bh=A+Y5HOQ5a2ZT6vDPq7JbPoDJtlTU8UqB+r0FGo1WhZc=;
	h=To:Subject:From:Date:From;
	b=VM58lCjvpEEqDxsmUmTQHmr09eS9sBFF+rwmne2AbhpqkrF2M9ifFtrltzfwXzjvA
	 8Du5akMKcKLr0mHtSL4QPKZL2bHLL5REDPoHnZz7xwl76o0NPO7g6LzuumbPPgNDeW
	 CoVtG/OR5/l8oOqgp92GbWrr+epLjaydbpleGOWEpIr8dEwLJ2jJzISQA1NMeFFa15
	 4ly79C/AIY+UIPKP10emf1qjQzQkLh5LdWF3FXCHqWU1f4fYPfHQlr7A9E5G/NUSvt
	 Py/Kcv4o4XqZPtObe5TCfBrPz7hlVsTS5bkj4zfzuqHPpXVrci5/IsZgSClmv9FY7R
	 2i4EQeopsCOQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDA14C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 15:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171388442283.20958.3864774562643545669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7021d256a2320267695be62a0283e7018f9787c3f5acadab3c520b79d2d38421
Date: Tue, 23 Apr 2024 15:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713884422
