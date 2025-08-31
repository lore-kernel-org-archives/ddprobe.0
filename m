Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1779F1B808
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756600195; cv=none; b=AUhKewGAVHUCrfiQVOMDSuLXzmeBN5vwoFhZIaaUJK2rX4q7UqHQJiO5yEGxX6z1Qm+b4N8uyjhwfXE/bTOmOkXmI3Lav7FVfr8CE6GA3y5/jr276+Fc0Qv5aCD2O67+eVCqT+GDF6mtUwLOjguHnsZ7wY8FQmY31dp3CLTPdpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756600195; c=relaxed/simple;
	bh=Z1LhtIeeqS2DXhz2ND1cZ4bx+3D+VDDT7up+l3DYNGA=;
	h=To:Subject:From:Message-Id:Date; b=In2V5cQFp4lzN91vAhZXtNUFJ8JdcIKo4jIbueTi1TSMBJht/9BN7NBbpt+byxT/C/w85DRX9ema8DAy3Cq8/0fCznOji+ZGpFBGherbNGv8stL7tTG1Bp/jrz/RjeHZ0yfVumNRs7IFgktTC1IfAL4Ba00JHwb7lM/wdZSlZ2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IpNSfv94; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IpNSfv94"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28B7C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756600193;
	bh=Z1LhtIeeqS2DXhz2ND1cZ4bx+3D+VDDT7up+l3DYNGA=;
	h=To:Subject:From:Date:From;
	b=IpNSfv94o117Tji4rxUMFKzwnJpGot7uELy99xG2IRfcD1jN/Sf/PmLo7UU9qvmm7
	 20StXN//MnRJrcvCbaZAggqANKbAWmKLD6CGpt7Hrl5M1B9TaAK5OWZidLArCkKQRJ
	 DBKEHzLi7T8UfhF6mZWbltTvbIz5Zr2P4Cp9/aw0gsO5unJkr5p9fYfkAoSEvyQq0j
	 ZfutuPP+60dCpCfRSEJcYZBVl+NtPslDBjX7NGVyxurYgG52yVTAGC1ov+A1eg9oFV
	 KPdNtFBrS0eP3vD6Nnt5r9K3qAO1y+C0mJ+8zFXbwi6V6whLL7MR/jxsXqWXIg4JhC
	 xh4mGmcBsaphQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9131ECA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175660019357.11076.3648184779890016852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f32bd19897b7124ce334623219d761f6a050f991598af4ba7dd21d19703dfa2a
Date: Sun, 31 Aug 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756600193
