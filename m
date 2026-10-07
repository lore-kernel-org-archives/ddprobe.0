Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5254939A7EF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791386434; cv=none; b=snuoapUeUV9ycOV7JewWTmyF/8tFKf/sQ/PsWOXvnfvYGu3EoWMw1tD90T5DsZxBj89HAxV/8cgVMTVO0BxoGlvX2FyMihDLkIzUTr73hCyU/iaPTXfIGqkexLFwofwGD5XJmpKgOAlEL3LicNN4QIz/WWa3oWF2qEYcdReDBfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791386434; c=relaxed/simple;
	bh=UR8Ljnu5UjBOGO+Mhj+V0umL0x6QR4AiGVQi2c8XZIU=;
	h=To:Subject:From:Message-Id:Date; b=MjRfg6dJra6n43nE7QnHynuOxz0Zy/R53H9W3x7kV8Svgd+NJ+mmRRkkFT/jy+MvnGDsp+piWE+vrIOMcp0NeTU1kntiA0pxK44dRTbjh7dhB4OKfTt3t03ou5/GrtJ1OxrZmdkehvYMwtPCs+pn5cEUTeEQUNrsbiImEI3zjpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJmizJOo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJmizJOo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B27C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791386433;
	bh=UR8Ljnu5UjBOGO+Mhj+V0umL0x6QR4AiGVQi2c8XZIU=;
	h=To:Subject:From:Date:From;
	b=nJmizJOoqKwjdDHiaeQLytQLXPfK16ofbx7axhcI3UAmzSLpTEjezCAoy88i1rlgT
	 iZffeQXQEGM3NNArvzmwlvfOH/MLeThxL0g4fH/MW8BWo1Gr/YsxdD/O6TdA2tUA3+
	 Q7zQ8R1rdVHOrAm4haQPl9rETdXecMlgV2GZxO0t8DMmfXE0AG3yJOVM3ZUe8sLeFT
	 svsHHGc4BtVqKgfHEPl7EdKMAj2AkMRKyMlb9Meb+mCo2SpdX3KgF3FsohHYumyR9h
	 Jq5s3pyslrRDdSESLHIcF4jF55Xh7TK6tUIlb7ZChFjDSao9H1zE72O+7WQTgeA0a1
	 4ZopdJ5Afzm6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0603CA6007
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179138643371.4042.10368219447604793325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e903118e4aa739e98f0c1932b38509a7bbd25d6319375458b576a460f5610cb5
Date: Wed, 07 Oct 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791386433
