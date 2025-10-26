Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EB1125A9
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761461994; cv=none; b=S7tKCIFNYjB4XiIrgxNMtLXN7svnpOxJpi/Zp8GcqDx/cDaIRX/8z+XoFrSz28jGLUm1gef9W7XzLT7CqHsPkVJ4avReaXbMbW5KMglocBpxtPYbWoADBY/vAOD228dIiAH8JOgOr/zaYx6Xm66wXpCO6EFr4MCQb2tHE/s2Brs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761461994; c=relaxed/simple;
	bh=7Q7GdAkLHIz2TtLZBJgepvevJyh2yJ5/JEg/scP5bw4=;
	h=To:Subject:From:Message-Id:Date; b=nFxcTxwPtj5yLS+22imL1FH/1cd+5Qx58LC0UtukX8AXqzmjViysitp7PqtkPsC6NWmtht1P4Prf4+xqIWmgw+Qavr3o+IQJa8b3O89zlTvvemmUdH+BVYQpGOzcTo+8OOHh/S77xlQgRjOl5tLdr7rFCn92i35F+DVoHSm4I3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vKowb8KW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vKowb8KW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1204C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761461993;
	bh=7Q7GdAkLHIz2TtLZBJgepvevJyh2yJ5/JEg/scP5bw4=;
	h=To:Subject:From:Date:From;
	b=vKowb8KWVyMylt5cXZ5RbtY2r3RcJLtM/bUhrGNmX2AGrnOePU+KwsqoHnfcJNed8
	 dxn/H1YqBNbc7HI5NmE/pTZn4CV4EuiOKB9PlYxGPz04zNaWLdm4PE/zNkGWOeYh7p
	 wtMCy9vRX1yWGrKS7fj50DYyxC92jSp4Fp4BxC7iTWfZpjotCSK5D0QGp+z/vYDFnN
	 daufbf3xkclgeGAjQZXIaS+0/t5KIZ3IPFKfBAIecvnN8EYFXbxLHPc3MCYMBGj45/
	 9sVCDhWpF51hiJonQAMH93Ixfq2hw66krJTWw6ZLPtfILQV/MIHwHH2Ny9pA3fHg+E
	 7BmDJNvPRf9Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E145CCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176146199362.28095.6715816318306744139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37a93254df08a1efee2f29b1b081439c92ba6b0a7a29c5a4b66756e8a394820d
Date: Sun, 26 Oct 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761461993
