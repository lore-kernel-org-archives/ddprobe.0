Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3EC40DFA4
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 01:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776476254; cv=none; b=A+8a7+e/w1S81JCR/us+mi9qbt9aYrdmb6PrKtrV8Uz02NwjFXHs09hDeeNKEUMdyqA4V2fSY2b7A0GOEkxP6hilsK68oxHroiyQC4OF6J6JSUkn3nVxGZ71yuvgeLIdJqkHTiPUtF11On/ovxh9AQmvyPZcjgWkXOWbCCSU92A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776476254; c=relaxed/simple;
	bh=j0Pif2kw0D16lT3IE0Y7OyaPvXbJofbumuxaiNk0uvE=;
	h=To:Subject:From:Message-Id:Date; b=KdRiS4PrRpNBJZ7HifqKS0UPDJIlUpYxu3c4E56o9UDLMzuYOsTWyHBcLt9l0f0e8F1sLQ6Yx62woWnd4TOByWLAEL9nU4Z+draRNkL1oZTGYXyK7hYTX9LsrtkNfGoB/H59M4naffNbKaFf0SLGG3SfVc75MNvLgNfPyB0U/Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUL0m0Ms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUL0m0Ms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C266DC19425
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 01:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776476253;
	bh=j0Pif2kw0D16lT3IE0Y7OyaPvXbJofbumuxaiNk0uvE=;
	h=To:Subject:From:Date:From;
	b=XUL0m0MsSpFfCU2v1ifrJ9V9tuFRauJRieOuV3HRJKTwHtRH41tIYZ7aeBn9vtfv/
	 T7ggudKgnZPgow+g8TV3D04JHs1Sa0hHyebuJ76K3nKpdGSRfbaYRhQlptbS/VxnbT
	 hrYUoLdruQWOoLBo+N8gz3uGbOhjzzS8coTM5OGDSri+GqA3HgVuNT3QuHsQ/VUynR
	 8Z1nKRBrtq5o95CrZNlsVBJUt4/QEl8u5M4FA3aJz5p0kk1lyhTTI0mnFluFbOzo1c
	 ITbaJ447DWf3gK+BDu0qkqSMayWQK4kwC40gkC4ux8l+6vVCBzU0153EimnNJur4gr
	 vaEV5AcX/c9oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08D1F99C6E
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 01:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177647625368.31369.15736717666675201830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71f0c2a61e1838e64d2cca6587dc228a70344bfcedb47486b141a6cff58cad0b
Date: Sat, 18 Apr 2026 01:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776476253
