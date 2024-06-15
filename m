Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71B4C19D89A
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 06:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718432303; cv=none; b=kwVuUiY4r10n2uBoc5rMYoFAO4oQRd3sqcLrY1klhJlavStcNRLVYskTMhESuk6xvyDO6qsnKB83Qc0IcuzetB0vx2boen+Omq3M4mck5Sg9GFfrk/xA94ZTMVf6hgJ7B7wwLhADMvmXBvdbyXAwWmbjlYd+R/nb9QC6PU6zF0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718432303; c=relaxed/simple;
	bh=5DeQn9ORlvC5j7lq9bmKIwBn22E1PI98yHm1VqEMOLE=;
	h=To:Subject:From:Message-Id:Date; b=mCTVRyfzCjLfRzkgEMNpX0QVQY8c8CguqRVaTQk4VqPyrobatF2uWxIFAvXSRrrx2hyb2bU9RbyOL5ZlAH7QVTtnMMl8wzGZFIrzyR7UxZh0cMhF0WMIceT0DRSaB9yyI8lvVqnz3dYrLOtgSLWpUptCIl9+fbOsxE6OAS9bsqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oi4btrnp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oi4btrnp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F8BFC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 06:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718432303;
	bh=5DeQn9ORlvC5j7lq9bmKIwBn22E1PI98yHm1VqEMOLE=;
	h=To:Subject:From:Date:From;
	b=oi4btrnpJgcG0j24KzThOTwDFLjrEPWsrWlv0N7Df+CX0MMI2nwkFS4ZPlBY9r2j/
	 7Qa3MKk5C/1NYkGFjI3zH2z9qxJJQTm27Iw/OPWZ2dhHoP40P+TKItKF5Ol0r6eTil
	 Fv1HpfkD1TmHC9WhoUobbTEtRr/XbXiFeK0AZMAGKIEfGBWpabIJZCWbmNmfLn7NHZ
	 xYAgIm2oWhnQtIbXfVpXqj11y1rdAVL2YPFMqcEHpXwTNVuRyeD/7m0gwHRbMCNkwe
	 RE4sh9+Cns8qdgCkW1LvusRlMKh4du28pXr+GPOrRnfwe2YWTdNKEZ4d+ABUY2xUKU
	 as33+O+sgINQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E572FC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 06:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171843230286.21631.9925167146662938260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9956d867470a9fea8965bab2dab53d885037c709f416df1b1e223c445d443c30
Date: Sat, 15 Jun 2024 06:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718432302
