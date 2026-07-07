Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D93A41736F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 13:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783430314; cv=none; b=qHDLQ39u3RNPUCoXjPvcPqYCRv/v6vZys6n3cwH5mspEdAMgTtUGy7/LAjkT53rK5aLxxffvByq5voCMsqC87SEdPLFippQZH4Y26d12S5UvjbuOChDQFxqQ0wFm5398kKyuoSvmtEqplZquwJD9m+gB78To+6C7x1wjatIOAD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783430314; c=relaxed/simple;
	bh=P5vzGYx2So41uWzkxwbH/TckDNph5wsuDEBVSTU42Yw=;
	h=To:Subject:From:Message-Id:Date; b=RWoW/ckx0vdFzdPCHLafJHHLaGBvDz1F7RdoODiKIu7ylgbbFDqXGP/DFVk4ViDrJoUYo2E5LBwP+O8pxYfQ5LfldvlXls7uMEU1hZF/GBLTXpY0UL8REpFzIcQXkmpKrvJt4kfYUCVM28mfq+ox4rsIp+MfFti527d/sIgCgU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUupCFhA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUupCFhA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA705C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 13:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783430313;
	bh=P5vzGYx2So41uWzkxwbH/TckDNph5wsuDEBVSTU42Yw=;
	h=To:Subject:From:Date:From;
	b=rUupCFhAKsdwzJwLN3nFACWzszj4PnhGgixrvebDftVU9ys78FMn/mU/QRS5Gp7Ux
	 DJ9yLPMwYEa7WS+seqAPGd3OpudCAzTk+Lk3bn4RlB68HCSh+v/5nM/l9ealSfV4I2
	 /tarwgOqBOB/eCB5h51tfOoz40JUmD/MiONQrl8/mF+bhWcGggac2CBllCFmRO4P2W
	 ZQZdm/OMxtlltyu6gz/d1hYIkMlJwrClrvg8N7Etrkbp7z2rNRyoacwPtFqz9DpR60
	 00JuRltheZbuXUklPqNjaRwCGe/lUtKuo168CvwXguQSr/ID/cLv9SPr6XKNqJcofN
	 Xf8FKWq2XHSHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F97C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 13:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178343031368.12185.16130891079009102145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fa70ba1c3cbba806c3e9a409cf42acb51e33dcc6fdd7bf117718b42cf14790b
Date: Tue, 07 Jul 2026 13:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783430313
