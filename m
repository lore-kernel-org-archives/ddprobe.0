Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DE55733E
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762040994; cv=none; b=j0aglyMtiQLc709g7wag6vAoooRnEzD5lrJ0+7XB2PGL/X0vEGqK3tGU3O5QkXsFrv0mH7Zc+k3MVlsP73plqx1cOd2mCPTxXO8CadwC68hj9709TlVKQ6XWhUM8+eI1fqopcaZWGfux3omnSvRtNMusVG2m+TM1XqQwPnG950w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762040994; c=relaxed/simple;
	bh=2nPugkkdbGYE5rxsN7jDbiZLOVB2VCD1iqbTP97E5f0=;
	h=To:Subject:From:Message-Id:Date; b=k48PrD1/KNlwhi6R6oIoGTzOn5GOENb1FGqO+xU4soaDOvjMcWI5d74h2sy7kUnC2aNjuuZDUYOQBrOxnyPuLVBZDL6hs4T+vxjcmU3od58xdaYwGREj+dT+ILemhoszzy5sU/238Yas3HbFwP/VyDZ5HJgL5LAG7wi/eFTrWWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uDxae+G/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDxae+G/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11D9C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762040993;
	bh=2nPugkkdbGYE5rxsN7jDbiZLOVB2VCD1iqbTP97E5f0=;
	h=To:Subject:From:Date:From;
	b=uDxae+G/olSv/YSqOSAvuxyNYRLbT2jkV61maevbSO/oaAUdQRX0BroUDAzICUXYV
	 wdYRjc11uWffT/3yww0Q9FBssF/Ofv4l2AfKZveF1sIly46iKk7UN2dsZteD9Uc/9X
	 FdRJiL4NVWN3No473WvDDvECAfxRlyCzZD/L6uoVlDdtXdfQdxpkGQwtFlDV3ntCem
	 KfeddAcxsfa4A0GWjpoBRvS6q7bCPJ9x9Ko2OSj7an9NWsBRadJottA0beAKEl3Iv4
	 NpX6ds2hpKkkRBrfyzOfePdeUq2SqutxWhsw5doaGe/QLCEQZgGAUPRD6oP1tGlNWh
	 TtaXaBhXydHvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F8ECCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176204099360.12209.18024263412020085922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75b817afbb263d8e59335f7755d95aee05d5e3e8d04038368416c2aa67e00c37
Date: Sat, 01 Nov 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762040993
