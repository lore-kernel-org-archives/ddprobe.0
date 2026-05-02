Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B2B2F4A0C
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 08:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777710454; cv=none; b=F8iDCUwbl5GfTJD+HifAXZQ41mlSm4u5y3YSX9bX3YfrGoce+kzok5nFy6rpR4rYC9QIivEQ2ntG6yixi+a0akZUnlJXgVnsZjdGwpd6+oA8jsKkIpRuW8kE8/IlBRPX196V4qr0GfqPnB3jghr2lLp0oZsG5T7Ur/qOSG3g9hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777710454; c=relaxed/simple;
	bh=tHZjQrpmMrIpf4MXPsNxolYLR8l7Mj6QRsZzeCx7m/s=;
	h=To:Subject:From:Message-Id:Date; b=JFd+uZg0YzFU57vNCjbtHzHPTNP220Wfsn6J0GvZPLU/XBVKJDD/5RqR1cNep0JOV0rmk+s9NgA4pwmklVrdpUvdmLuVrTrfq62DfVBrv+VPIZ5ueu9fbE3AopsYg8QudW7BnYu9yC7tsuJBtQCeQamoEyZz5X2dOP5naH7x5KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GsFx5Dgq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GsFx5Dgq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0534C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777710453;
	bh=tHZjQrpmMrIpf4MXPsNxolYLR8l7Mj6QRsZzeCx7m/s=;
	h=To:Subject:From:Date:From;
	b=GsFx5Dgq1X5+kTM0Y/hF884MQh0BAKq7r7IXkrJWhUIO4PMa6Jxf/yyUJ1LSdXB21
	 ETXlVzzmrjdofdJUd/vMybuDx9caFFJI3zx0mnkAvDtyO8nncg/R732culQJMunx4y
	 hBtDGKdbrMBMSaH8GADwX3G4NtfO0imo98vsP9af5bj1f9rpME6XlugCqLGaXZK8Qm
	 QJHklNyRg62JX3NHWEgV+u422j8ActeXVjbXm4v6MXXsp6DVShzzcdhO1n9rP4GHxW
	 9C3/eoPEcNtl5BIlWjhDtDTUh9xcE4uIRgiqDebcdVH5rs1pu49Y9yXVaf1ZwB38Tx
	 vFpqiQhoW83Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0111CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 08:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177771045368.16015.7651057275234153144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 380b854a1144cbc5ad4ff8db608f75269b112b98143e5e0cd8da1f4117dcfb29
Date: Sat, 02 May 2026 08:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777710453
