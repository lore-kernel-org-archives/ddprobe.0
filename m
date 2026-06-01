Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC1A37F8DD
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 14:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780322674; cv=none; b=FtPXMghkgrrJWDcz2zOYTfciTeFqS32mThc8tThKkqoK0nHKr5rfPjBpq7l7KxbDKJ4DxZ0hAFwYs+1bGUDtMsqz3nSV4p/qXm4PmkVXoqEwM9/bWBHZRN6eyuNxzYNuGaPZc3zPF685zU3aYiT7f3IrP1Vk6kpoDpUptpx4TUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780322674; c=relaxed/simple;
	bh=Zpi3uzl8TE1ISeJlpvTaKKLeOCqKYQSEb6wyBQkMFpA=;
	h=To:Subject:From:Message-Id:Date; b=C8qiSjU7oppfWvp8gmyx7+P3v2d+TBZYqMdzqlnCNGgMB4b7UBv0EV3/8pBLVDqOvKl3X3twVYYbB6B96ZCJmEjkZY+t7QwHFxteQaeKBM9kFSWPdzeo8W4Qh49MtKCuWhV97vhdUADMMXOYfMQg3aN6Ls67iftYyq2Q+xvCVgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bL51uC/N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bL51uC/N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6848C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 14:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780322673;
	bh=Zpi3uzl8TE1ISeJlpvTaKKLeOCqKYQSEb6wyBQkMFpA=;
	h=To:Subject:From:Date:From;
	b=bL51uC/NXuXbXB8mv540WVk2y8QSAw+n8w0ZbMdzF5u+kaImD6TaHp5z43S9Xdarr
	 hOzlaebZcKk5vvuXLMYR5meHqhfNAUx1Xi4iu7TVZj+Kx4DwBwkwfVJvzKSqPIPaKi
	 R/gI3PQAQlyltldSvYxyshdvF9B80ddtA4OdCRQomCMrJ3cgBO6TwySImqmenZG77y
	 oRGrGImk7vdCjJAi5+zJQQxIfOq1NSBWPHRcFipSx3zbVA6S9j5cCN8tyn7vMoiuot
	 b014E3MekwkdHlgJWEI+ZhSuyIxYS3Gey4HA1zX/vgPfsIWq8vI76aWzAIxetI+3P7
	 0MSHvVpdPCXYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7E0CD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 14:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178032267369.12548.7924570717672726043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95a5e3ea0d23c881018754c3f7eff3ec01da9e58fe51d53319733f4379983f08
Date: Mon, 01 Jun 2026 14:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780322673
