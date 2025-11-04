Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB6B32937D
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762264794; cv=none; b=F8odXsiCXAt8ombBCKxTJvYr5qRyaGg2byirqhUS9urMlbON7yP55hwd22epD2wYACC1MFrZ7NsNr1YqS9UWmVBCXbAjvzLXcnnYS0rMrmjMGE+XpRo5+E61yet3bQeyKU3KgleflmdcwyK09zJiQRRMIp4LDlUdptT3L1YNvy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762264794; c=relaxed/simple;
	bh=Y6oMcK3TN/E4i4Xg2Z3PsJMZAg2RDvWGRo1sBcZYGxI=;
	h=To:Subject:From:Message-Id:Date; b=f0yQmPbCNvnkBjvU8EbGAiSI00y3zxZQBrOznJeHWnxf8KNzhLFkm1xL5S9Vtb++mP4GeErxdkdlL7X/Jk99YAT3cbQSRoBS+/pwaDDkCDdp4P6Q2vtMf/YhWsYk4+42JS/Qo1pvsXmYh/JZqzuMhN4OLuHwlDW9h43QPNCDVAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WeeAuAJs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WeeAuAJs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2EEC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762264793;
	bh=Y6oMcK3TN/E4i4Xg2Z3PsJMZAg2RDvWGRo1sBcZYGxI=;
	h=To:Subject:From:Date:From;
	b=WeeAuAJss+7KWGdYrcZ9Gn3NG1fNpVUv9gz4HtI14ND99SJEtSEBw9PFQa8q2iUtO
	 Iq1pHgTawOYM6lsjlr4tX+nClSDEI2gwKurz79EBGfAC+/oPzgXU2uM+Gc4gFsbtTR
	 HKW/V1651yrOtAHTXmxVxZL0yC5DE0lKNEorTWBEsPQwVaacTXY5wvmMHF/cqb7FMJ
	 9aOKcOl4NxTQbLCps7rORPeKcxaxx2GjJMzogvCC4nCP6QlhiqLhNvveC2FiU4rvxG
	 g5+83MXcrn6y8NQhatxJCgmvfGLt+YaR1rnetCVVJObWuB/gmbJU/kFFP6S4mQpGIe
	 AW6YHtQtybS9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91899CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176226479358.974.17583758852219204318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dc187282a3b3c5b0f5979c5550f4a7d87746a904114bd71ddc9b194fa6f3255
Date: Tue, 04 Nov 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762264793
