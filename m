Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480F710A22
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 19:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720985423; cv=none; b=VBvES2DwggxMkdGVpNY4tCIp6t4AFUyzg54sC60loKzVFL2aqhfAfvD/H0uAqdoqi0U5GmmFynhtyD1Zd2VMhXpCv19ppgXSDc5JALMiR9opXkbx8D/90SwiRllcsg1G3FBBno8b0deT0L98Yq1ywCGen8XSr8/VSpvOZ0COfF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720985423; c=relaxed/simple;
	bh=3C1CDKmy+e89aaTB82p9EgPR9kBbHhcioERRroQjECI=;
	h=To:Subject:From:Message-Id:Date; b=lGy4etsOIYN/vG6MFPKmDuyH2qPjs53h5sW1ky+odMMuB87Ygd+Qkm/76tB6b0QLBjfrgSNsuJBPHm3ko21eC4QYJvYUacSsWAwJANWUAtIrKiIy4OUCsV6Cqdgqxf6fuJEXawV9IGdhKES9so7/yIWznKpTOxITpqyREq87FPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jgOusCXA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jgOusCXA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D690FC116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 19:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720985422;
	bh=3C1CDKmy+e89aaTB82p9EgPR9kBbHhcioERRroQjECI=;
	h=To:Subject:From:Date:From;
	b=jgOusCXAxOhRGxsH/hpymZx7vn7CeAGIowLh1E/tldEP+V6pE6H+ks3lgyVKuHxZm
	 BPEi2qn/61mDM9bPj4MQt0THfc2iX4en2FYtv/hDH60mGGEMuVlvpr/AirzxXBDAFp
	 YHRW3xxIZg0wZYDpPzRqt+7GWP8B38jd2SVi7RgcII/3IflMcGhXFjf8wtsrrv+Vmg
	 i16hNCVQCjcufipA7aUmTEtj2ZsPfr84YOVki0apDlCOt74Dm0jpB4L5q6fwm5MmLS
	 An1Qh1TzLH+JMmJxc5e5Yf3xA+OoyjkFIhxQda9pcD8t/Kxg27DCzH6igMwQd1JqQW
	 z9c6Pzltj6aXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C127CC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 19:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172098542275.8339.17757488113169642273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ff321ce9d9d8739cd330ca01ef07d02b666fcd0ab4bc1a27abff8339c194abd
Date: Sun, 14 Jul 2024 19:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720985422
