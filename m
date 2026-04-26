Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EEB1EFF8D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 07:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777189054; cv=none; b=Jm2HWYM0oZoc+UYlpnSTU6WtaNvBB/gjL1oV9aC0eFo3I/I7YtxrYYF705NmZ+ifsXejhP16xP20LIwVpBlmYZ2M7vb6MlCQPLLkUoy4BpctDOr+IhK/AYdC4lUotHTRG62g5061L4BQyIxE2Q4zawd4Gv/i1HwBDQicWs0J34c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777189054; c=relaxed/simple;
	bh=tc9TuO3j9iXXSV9GNh0ZPk/7dy0WhI3oR2nWzySeMtU=;
	h=To:Subject:From:Message-Id:Date; b=uQEQ6bGSc/Rw35F2FwSHvrxsVkqcKz9aVaW5gVoMEd8btB3jiUsoOd31lii/Mt4c3crJU7Dbbzxr8fqsBPqh7MHunMm1RFjT6r32ROCTCozVVZW2YBRd9kuPqnF3R96LcaIWY13SUJQg+N79Fc7bP723M6gUHuSSSSADncHAaQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0kM3bqu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0kM3bqu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C197FC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 07:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777189053;
	bh=tc9TuO3j9iXXSV9GNh0ZPk/7dy0WhI3oR2nWzySeMtU=;
	h=To:Subject:From:Date:From;
	b=c0kM3bquwPAUOTcmDV45OvQJOYEYVF8HCaZKrHqCHKBZShK8ro8Pxb/Gp2Eu1xsJS
	 3rMLCaM9npYFUXS1Bb7WZWOaQR12tksOtnRzkeoPM2/oJEe6fUe79edkKe6Iks3kgC
	 Ahazl/14wFBHG0ikhE1xE1GTtTKFMQkoIOcMV5kzb2r0fBlyelA+ZsDgUZJOeBDZv5
	 8QRCvvJ6YrDGlZY9RVvMzgbh8tp8aLRKCJ5f3b5OBbsRrB1C/OCD00Uey4tr08itay
	 MmR5+H4PvQUVEP2zPgfxV1tJ98Lbg+PS/MnC3uBLONKR//DB2wGZsQs1t+oyHHaeQE
	 RQ/ymO/+AgcLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5B6FF8850
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 07:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177718905369.29332.12003617040513552535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 538654c27ada9e3e052279c87a927ba9dd54d4cdfcd571fc75c8cb11ccb1586d
Date: Sun, 26 Apr 2026 07:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777189053
