Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E46FF4C83
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738181754; cv=none; b=FMKtCzuqjt5RuOKDU21H9y6yTWAwFU4s4OeRt5gCPUQCL/5m0aZl4+1GuePqm5o2hKc8e0i9iX0EtBPLBuTVmbN2CveLHB/fYGLpKNyj9qbNXPvIR5YrkZyKuY6ZDYB9CfQVDedqLwpdXk88lp6RwyBh45phNLV3NbZqhCNbSTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738181754; c=relaxed/simple;
	bh=uBdlXADJtX1K0r3Re1pxlTIHl/zeYpXXUaYAukF6/FU=;
	h=To:Subject:From:Message-Id:Date; b=dbeZMHAY6UV8NZfHlbGA0cbnhoh+ACYNtOuBsSKswVW8XEj7iGHbwgpMolZiVJdFsMvEj5oVVzh44C24XhF40ksHqGvtPSC1u1/YXLXNINyK6wMEVgwYJvtPdT4PL5Mg8SGwwESCHQUlulArGp3n+S6cG8Dzt9ECpxRvii45srs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJq+LfSu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJq+LfSu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1890C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738181753;
	bh=uBdlXADJtX1K0r3Re1pxlTIHl/zeYpXXUaYAukF6/FU=;
	h=To:Subject:From:Date:From;
	b=ZJq+LfSu+7CCHlWBYPsTIwFFk31Jw6y36N5xK9eDyP7HpeVnSWF1uzji1aArQ8gZP
	 I1MOfo1w8JRpnK4PwDXALuv/zOPvZ4GjLXMWLEYLgLJEfcAKWa2vQn1S6KMRDvu5QG
	 HYXd57i53DUV2xta6CYWtzt4hhGzaPfyAxVjXtFeZGdOgjy+xYVBCMpyOtNLn9maGJ
	 VhYAZzxQQuLUh5ztEOis7Lt5VDC0FuKhaOyaQiFx1SDGys+xXtBWKaLwfD3Leq7WS5
	 Cbg3i+x2md2zFl6FlOxxaMlyyD9F/020M1+h7Fg6G0J43OXqi/Fyt76SLuEBrTWxaq
	 52V6o9U7TMCZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A17DC0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173818175362.27343.2581100753506188016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acc59b6b2e7dcd1d3efab86966173c71defa586c145786b0bc2ca1123f665b00
Date: Wed, 29 Jan 2025 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738181753
