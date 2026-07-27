Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42730175A6E
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785124834; cv=none; b=h6OCTLFzVPC45gwvUkKrq/lwBaULdE63m/J//ix380WKzaf9lukoVc6r/fsYY/y893jEt96rsdozJZbo+vA0Leipue/kSbT2kiVBHzrAPMdEPPGZM80JlIcAXJ4oY38aCIkTiVm8BeWtyJQamjvO9MGASvZKWOPwoDvU0M/FPec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785124834; c=relaxed/simple;
	bh=MAJ9TgB1u0qvmUT4JkIu5p1niHBtZLxAYaKKOMVzwqQ=;
	h=To:Subject:From:Message-Id:Date; b=H2zYfigj4GGQOPMhot+JHH16gxi5+j2RNrncFhPMJG+Ddjv+0Y2/VpuMXzQ26HY/2eRslIM4Nc5MHv4Xjiy1hmG0hBinYCGzRNvZsUAe59UNtQTrJE9nUQnOmtAN9eUFMsWVG8Zi92Wk0MdpHePeHlN64JwMUMhwpjdVZC961g4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMi/J1nM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMi/J1nM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0640C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785124833;
	bh=MAJ9TgB1u0qvmUT4JkIu5p1niHBtZLxAYaKKOMVzwqQ=;
	h=To:Subject:From:Date:From;
	b=VMi/J1nMQH8rkS4lL1J+J5WgmFADu3OmyVcLcXZSl/ifp+faLCE82hagUb6j8+i3r
	 mNnrUd298EWtuGMc64RIOGBwB4WMV33NYk9jcucvghyy7vhr6lm297NO3rY+Q9xhaD
	 P8E7RBB0OYAjMR0KFVWuTt3pbqu+35ecPGehonVdNmpVFiYz58lbJxq7x/m92hoFuf
	 WfgAngD/dFxdyXPDJJhqK0+0b/e1csBhkSBYy8nnlvDyJczJj4ljDG0BDgMZWyczWv
	 odZTRhvb22ki39gFztmF4Fe8wXY9fDc7novW9HQZKZ98xcqFqiNWYDF4lVPVG4maux
	 1RZUivfbNSB4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB517C531FC
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178512483368.9392.3622430340751092856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14032216adfe52b9cd8e941fff185dec6d1ec6cc10ece4de933afd87e0bdf78c
Date: Mon, 27 Jul 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785124833
