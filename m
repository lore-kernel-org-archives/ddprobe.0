Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0742F2D5C74
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771262694; cv=none; b=q0orJNopBVEhj3twNHJailOtLlNzqn/B60ebFDYdfjkuvuDUnAJ/0EdhhnUdlwwcRW94BciZVimtD/8sOA4euW+o8eoFGSb6G2spNQ7USPA+ez1nmbdWExBpT6DfJXGS0bHPzHH1nW6OW/C5ajKowNcdco3gQMFlBpGWTaNRtv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771262694; c=relaxed/simple;
	bh=AqEDRWglX9Ly73NROSMCweWmb2qBtTjJR8OtaCn0LFw=;
	h=To:Subject:From:Message-Id:Date; b=i1aZysjrK7+AAYnZIMjAclucHV+O17IEASCQuB5NagVub0AsnwyBBqTPpVckPUr2AwePRl5zCR6A6pFR59vgCRAYfzkZI7pw23w5Sb17k9imh5XiEUJ203KUYjcFiwTz9tu53xWSsX6IPAbLWmsUXwYvbcxS959bn3AHpCFO9IE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ymx1nnsf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ymx1nnsf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DB5C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771262693;
	bh=AqEDRWglX9Ly73NROSMCweWmb2qBtTjJR8OtaCn0LFw=;
	h=To:Subject:From:Date:From;
	b=Ymx1nnsf990TdzhaK7t+dRlonz9VQxruA4OuwCFTD47N11C81fDEUJUu7J10G0Xo8
	 Xwpnh5qzOJwUSwIHOZI6rI+Euwkom7Fm7mkhk1vZrjpba3huOM6Y6HuTfER5WLwsaE
	 WXaxe+nto+uWapobuJTyN9CbzIQKmHmJR4FF3N3DuzDf228ldZhNx1cp5qerLxGmGr
	 Tw5U/HZqkH7/TogEaTOa1DcJS6Y3aNReR7mz5eWG2cq2aoelM1uyLL0EezJdjTyl1W
	 btZwaexnyHBugLGyLEdZvpUzppE/n2ZKH0W7kKVQ8aPO4Bcc7TKIsQyzpWBtRsoqgH
	 pAmXOvXkPusbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E9AE63F15
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177126269361.28760.494440882272224869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 883c48a4aff80b05afa37c2deed953bd8103c5f6e3424ada5303b2c5f064efec
Date: Mon, 16 Feb 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771262693
