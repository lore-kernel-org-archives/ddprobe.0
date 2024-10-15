Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156D433F9
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728971154; cv=none; b=VfNUM0UCVekBt+BRromMd6j0prF14FS6dQ6xcyWQXG6dtKTbeCvfX3b1I1cENfPcjXB80GmTzpd/ZLsqJ2xOePJR9gM7a9zy96U3iXUS/1aW6UUhbqbAseDb97d4I0YhQd7FF5AdQEu+QS75KLa0K9P1Cs/RsR+/ag8rHsadYBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728971154; c=relaxed/simple;
	bh=OF5hzWoWdh2In+AyGLsrQ8Z4qrGjxadhxdQDLmCVsco=;
	h=To:Subject:From:Message-Id:Date; b=rQncfsT5x26Z7aOztRwHdl5gq9L8e12dsUuQ2efAeK5rekf0jbiE05EXpmT+1YD+OgyH1IAbH4LmxjGnYnhWDe41DmL7GGyVDHkdc0cRdxURRhZjAOErRX5yh1+5wT61hHyeJ4GtgN9lg12o6HdAO32wtynIfLEmodMA2IDXCsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FDaTNeTC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FDaTNeTC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84ADC4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728971153;
	bh=OF5hzWoWdh2In+AyGLsrQ8Z4qrGjxadhxdQDLmCVsco=;
	h=To:Subject:From:Date:From;
	b=FDaTNeTCJ7UfGQ2O665T0uM5CVxx11pnoi5fVNR6b8CHX3FTSDH2OD2kJ/3FO7uUm
	 OPaTx8nLHNo352AARRiu3faCcycFkJzocWyQuHZPLt0eRavNo5VzlisRyp6j2dTOQH
	 YBrY5eZ4RGWEolv+S3ymBJxwviGpYkjjNUiUXBeyEy/glSbYDEBOIsuFX6jYA+sDGv
	 JLlGKvuLzwuIj3gDj5aoVN+vTcsRLYqNPCh+FJYcJKSX1CfZw4fDLgf2B3LTMtcYNk
	 vpUNMoeVu8lpWifkGnlspeppsUITS7L9kSRuAzJ5OGnrx7OTniQh1aVrvTC2zEuC9T
	 hqq80Mkm3ZeNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C90CFC268
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172897115360.9666.6297956038687983988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47581ad973ea6691b6217981dce24f5fcebed47493e21ef94737977a6156eb38
Date: Tue, 15 Oct 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728971153
