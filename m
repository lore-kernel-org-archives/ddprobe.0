Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449131E4924
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727869554; cv=none; b=PcWC+5yfstyeHfK2lKm/X4S2Xc0pbC3xKmh4xIwg5u+yPuKbGRkoiUBwyePq7yKtMXTkrW6u1A6San8vOwefh7ux5pBfx4iJqmg3NzFd0VqRD2oed7D1iFr1ijTJJwkn4+aSswMIas2bEMVpWVcDfsmSeafc1XmDugaEn6U/nwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727869554; c=relaxed/simple;
	bh=pojS19Ny0ISzsEzckZZOv5K+abARyuiIlLWdmymdYq0=;
	h=To:Subject:From:Message-Id:Date; b=bvRqaH+S7nPJ9yLHTjRbc2fIGdI96EjCcnAASqPKFhq6L15f6Y+a8dVupbcBjCfZw3OtG1m0ncuy95ICh+hBDFeIr6vSwXSgZ8TJUGtYPnARdvnbGWa4A2hnvqrkDI6uTp/jZ0Gqnrc7FELnXVVBbBePADEgwEX55iebKYJRz4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CF8Kr7bA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CF8Kr7bA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A44C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727869553;
	bh=pojS19Ny0ISzsEzckZZOv5K+abARyuiIlLWdmymdYq0=;
	h=To:Subject:From:Date:From;
	b=CF8Kr7bAjkYMVBtc61HdL4krOwckg5AKzIpOEcqI5ABJTKqpwGNZVZ0/HRGaHtp/V
	 +1E0ZdCsKQF8PDiwn5jwCmCm6vh3sdgGgBimaeOCwve1c9aC5PSh45S8XTnymUcpSa
	 pvA66YfEtuSIBTN+MsZCS1NiYs5lw4rgBCuEh285rVvSMZR9D+QFEnDOZb1J0s/i2a
	 nlZFzt5KhIRFTL625VXtS5y3B1nzKU1SRbNDoBW0eFaidlxjgTU7U2rPRY+EqeNhYS
	 4gAj4qYRvcEiTJe0Lp2gLDeRbzJjTq99CST+By3WJkgZ6eD9oxjxmXBkzQ2EH946cN
	 562sIXVM2Z2jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9864FCF31B7
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172786955361.2615.16583908373467884666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca66666ed118d50eee7211e1faa6db182342cdc527454f16ccb0aa7f9c36a7ff
Date: Wed, 02 Oct 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727869553
