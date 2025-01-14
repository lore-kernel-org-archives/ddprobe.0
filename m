Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E231ADC72
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736887554; cv=none; b=G9HDL66UOtesehltD4EfJVXbsVlH4nzhiD8CX2+eGZwwr0aXrmuaIKFIU6AlknoIl35HUyNeM/T0s4evhdY8L4TzRouYc35bIXCP2W+AiJY6luw7B+Du5lARxWs+cgcgbMbbR6fzETT0si5qw//KT8vrmS185DPP7MUUg/0edbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736887554; c=relaxed/simple;
	bh=GS5SnPy+ez8q0evjPvzkTNs2wKxX5psDMvXAdte6Uw8=;
	h=To:Subject:From:Message-Id:Date; b=VXB1d4Sra9nMbz6TGACHYfFSAEuiFo6DYZP/+40g2wJWMoDA5VnyWxs0jxyr/FNs7asYY0TuNTkHtz0kU04KbeXr1PwW/AMpJ+OybsuOWTyR8uEtCpnjUEd39YjMw6FDPbXhnMuVh2wLjbS5bSBVslT/9nJEz5D2xECTHJA1mgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FwqBZTb0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FwqBZTb0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12E5C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736887553;
	bh=GS5SnPy+ez8q0evjPvzkTNs2wKxX5psDMvXAdte6Uw8=;
	h=To:Subject:From:Date:From;
	b=FwqBZTb0ZudI3BUHIUcyY0cwKg4tTKTvHZklYF6cEWVQ3GUopYQZDBu2BXO5UyKZM
	 XSW0NdSWMXhLPYh080EWDtaiTVFVxSnj5dLeDJ9iHjwwxKY62AHio7X0N0tLRsq2tS
	 mSrJhQ6Ao3ACQPU50GIJNMIPM80NdS4B3QRk7PSyGGj+TPfeiPdCpsuiKmq8qfZsB9
	 hLhBmOC6RQMHl/gEZX0H9Bl4Vg1oHB1i3xzNIBarT/UAft4mCR1n4R4XF6O8+tAdrX
	 Q3z04ia5wVb+Fez+4dO3PcfsRNVMjKH+7vVp8vMWprlLVx2Ymm/2zQCqdZ2y2yNlP9
	 yb0ayUMW4GujA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A10C6C02183
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173688755364.26759.17838725739546777264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7a3dce6d6b2db568c108441d5f3a7cc2c8be9342604c2e945e7cca58d5511f6
Date: Tue, 14 Jan 2025 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736887553
