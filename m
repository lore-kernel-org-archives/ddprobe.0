Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E2F1DE8AE
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756580394; cv=none; b=WkoY4+Qh//YLUoDr+hrgy5lFeAHqsRF4p5W1R/e4P1Ztys6sTEmTEIs3hmIz76uYfn6k4SSjgYWid+vEx+9w2MAiSX3a5D6Ekk4hwxVhrOSUPWw8NKG7L+pLND6MVlxu3lwcnV+J+rZqPY7+iWJ7VjFEHCRh30/5ReLxm+60ACM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756580394; c=relaxed/simple;
	bh=64K9gHplnkIJWpH1SmPTr8wGTXREf+gAdoeu1t1jSbU=;
	h=To:Subject:From:Message-Id:Date; b=ltxUxl7nb+bNt/fcfmvQSF56aK4XIDt3hF/BT1lLODCdd9hNVbDEYi7NSdAxjJLQc7QsSQl7IYRG3Pu9JudRp4E6zNV7CNtnkV7Q7EnbD2JkCLaLpW+6Gsx9FXlmOBo2afF8CT5vgeimUF+4v/u5shIW9Pe4kQUoY96Zf2HYzak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZvPrxby; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZvPrxby"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A542FC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756580393;
	bh=64K9gHplnkIJWpH1SmPTr8wGTXREf+gAdoeu1t1jSbU=;
	h=To:Subject:From:Date:From;
	b=VZvPrxbyOM8zZfs4dSTZJgkzz4EzZgRYPEbg1/gcN9zHSAWazuUmbp3UqWlI5bKbo
	 Mwg7iGPOgN/nrlcXzNrUd63v7vvkwhFrojjz8UjMlCnDKrzm5acQXpZ6TLxZubYxou
	 6MivAjVrp+imJqSKpnGtClXU6C2P9twbaFcKvhbnuW5ycB0syqItELxVw8frIZ87dI
	 1GZ4cSLRKhcIXmTcUqWWosUjy0pNj6GMg0r1I/b33b9MHL3wNVIQBcIGTrRiShr1ov
	 11Rm5uBQjv1LS6vcZuSMAaSjNFIoI8VMpzGV9kaNjEA1suVsoW6GD7fP+ZVWZ7gW6w
	 gEu6C2wfG/tkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9160ECA0FFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175658039357.15196.312493370560658444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83a5393efcf1ec0c150df380676989d15476f57a2e2af2e61a20cb328cb0c366
Date: Sat, 30 Aug 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756580393
