Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F36310E4
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748567394; cv=none; b=o1K4ZgK+fspMN0cNEBI0x0cQvaB1npZi5FiWjI3ez+QD2eiiK2eK3D0RXIkKrMD95DxBfo1osZF0XgWdpm3TtyiOpwll6a0tiEvumgpK0pBDRbHLDvkWTS3TaNCJIlbWMK1CFLHv5HBSXCLfT79aY6Mt8oWRkHTQ6Qg47M6OJEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748567394; c=relaxed/simple;
	bh=qv1HA/Dy6PZrPKDslajlU2A3BA34qxKge42Z/+iYp2E=;
	h=To:Subject:From:Message-Id:Date; b=TrsfVfLwdZWimEBmFCcKLJJcXyY6d+W618Dg+MIw2ROJNMHzE4RuQM7n3r2Ce186MwTp/LWxOLP/sFBQl4Q55A1iH9KaNik8eqZ361c0k0NGJpJn/aKcHyUNAjNkUqZct49UTuva5mvnAd11aJry+SawUBbRefEqxDKxHDJ8Pt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBQHMRfJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBQHMRfJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A955EC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748567393;
	bh=qv1HA/Dy6PZrPKDslajlU2A3BA34qxKge42Z/+iYp2E=;
	h=To:Subject:From:Date:From;
	b=uBQHMRfJXk1Lv1TzR0S8kjohYq5jA+UmQkmYZ/MkuEQMREPvV0FtmaowuqmYbBZZh
	 rROrUbD0/dFIUvDIEnAJjfefb6Llm9gVzgjwd4V3u5qPc0F5cYHj3lxoySDu/ksOFe
	 YennJFQ7TuielAcZGJMUNqJuQ7UtBY8SNWJUsfYGAC3Solk3ddk90JkXMsd/8xjOpR
	 dhR0o29UjW8ByqJTwe9jvgq96/z1sxsjtq1DvYZ7bgXeTiTUKpitz6c29RRjJNCOBe
	 WdYbAp0kdYiju+CmfO35jyMwYaVCQWw9ch01ptf0gt2hWOHeVmyI7IwCpnmaA1N1CD
	 Ax2UYBU4Eu8MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9183DC54FB3
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174856739357.9199.5856359292025550587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 638b1de94a5870f2cc7053cdce7a9508d5bda263e34acbc8c8e8160aecc149fb
Date: Fri, 30 May 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748567393
