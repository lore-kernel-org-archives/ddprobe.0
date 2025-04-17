Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EACCB2DFA56
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744897195; cv=none; b=MHluT8vnKi4bd9EMswrvhF1HSP0D7tDPMF/su0JDvnN+KuEEPyesIWniTai91BxxdjPbOaUOkgYz22prj4qWlxf39DyfjTmHDp5iucY/hVyvtQaOaGpCi1WA8VXlvI00X9bkjVxr5DzOCmDqQs+XkKQAsXWQD1i+6sjbM29ozB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744897195; c=relaxed/simple;
	bh=mhDAegkmXEPpAKzg0WljwbDeSiPIDs3gN8Gr1aRTwsA=;
	h=To:Subject:From:Message-Id:Date; b=gq1ItwWLOJDXqZ0FRw5pk1aWWk2JR8Jc/ZvUrkWdoZMunnsHoocHQxxJZo3Yq2kw18oYQUII291Zst7zhYE4ZFhP7iwvnUDevptGwkyy8/ioPyNCu3PbiJQ6qb9itLXTk5fXcIhVguYA65r/rkFoJSCoHzJag8VXsoLgQ+oYvo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2f6bKIl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2f6bKIl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A98C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744897193;
	bh=mhDAegkmXEPpAKzg0WljwbDeSiPIDs3gN8Gr1aRTwsA=;
	h=To:Subject:From:Date:From;
	b=O2f6bKIlCH53CJOQnZdd73i7yr0ZjKCvMqP/YQypF5AGPRahNU5jTWLCE07JB9GGP
	 +0vN6lc0uCOaqr1LKT/7IMEl3QLSMPWP87byZP6Ls/2jnZ8ij5osGeE/LqTxyHc4V5
	 5m7tRXWd6HdhhQ2VTrz2jonBKR/1pcziF6ReEXQPK9jS49Xfe+CRUpYsP7fXv4KBw+
	 Qr4hzoPog8T7iFXgU5FYJ4FKSY1FiLQQz2di4SW1Hm0PxL6q1B18Ovf0thK3kjmLX9
	 cgsw2fLGHPh6btKtg6lvONRqZEOt0djZbGIP/Zid2C0Sd/wjkumR2DTK9av/kz10JY
	 KGfi5ZSjGFQXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C9BC369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174489719360.19961.15209299021780658790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8d08cd0f0b08dae4cdc5a89646bc4c6be91281bcf705c855b95f9a2231d69a6
Date: Thu, 17 Apr 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744897193
