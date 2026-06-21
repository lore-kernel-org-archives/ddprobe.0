Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5E625A2A2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 15:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782055594; cv=none; b=RjhQVb+njtSXC1u+MvBt9IEB4uiFZxVJqjL5JRlNaYto/PpT2i6/emnZh/zwgBGApJY3mNGs4ybPohXZZoSjbsvT89Lk044MAFkkIsWvy077qJHC1ujs2gsUIcMpYfyRDTIRT8E0N85ap3dOhFDmK4AevSTt88yuoyALbxR2ecI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782055594; c=relaxed/simple;
	bh=vj4QgvLK1qVp4gL0e+/W3NYQUvF08FkC8+Nut/LSvtM=;
	h=To:Subject:From:Message-Id:Date; b=AUXIKjHo0xGrMhoojplRXYhCZEm+0WntvCsDQAzRRlaczRIgBPx0PkpwcsFcbGyO33SLYNF65mgK+eyjlUZhaam9c40vCdp4pVnX8ewPz32DrZSULK7mGicizx/UVpTdQ7k6OLtmHvCW4U3WgYZRox+PnuYChAd9JZlG3y1rO1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3ahjNFF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3ahjNFF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD94C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 15:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782055593;
	bh=vj4QgvLK1qVp4gL0e+/W3NYQUvF08FkC8+Nut/LSvtM=;
	h=To:Subject:From:Date:From;
	b=S3ahjNFFG9YN+mei1o5CVE4zysZvHWHVkaXgjfbX2zDhpL10YBEPdNTjBWNogIpyh
	 tXgtoxfkklZ9I/34C448b8Xf4NI6JE5AFrs4pCpNh1BWNCGog1Fsm2x3gSZ67ki/xo
	 4iA5juKI++1G4Bp1hIuiHmkbO86IQnC0pYn+ElObYb7xeYkvmmSonLT6OHoR0bsrYs
	 qAHj4ezpnusazOJpLoEdT4iNd0bFNM1ayNiwoIWmuFAyHA0e8d18E2P4G0d01rfd4y
	 X0rAMzWKGs5drPCMM7ZCyRfLN9RNo0hAcJEl0vyhsu0X1V59otmDQ+8SLS/DFEj/yH
	 fbC1Y7gUPv1sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAFDCD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 15:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178205559370.31700.4366624022316099867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83fe29238d3eca7b4fffe91a0c6afa541fa3f59f0564e490533b17e205805ed6
Date: Sun, 21 Jun 2026 15:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782055593
