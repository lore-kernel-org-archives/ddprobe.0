Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535976EB5C
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 07:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713251363; cv=none; b=gXf3WWODFPQt2mXEXIE/EcSnqIdkKUEXouwuOUf2kzlJMolEc8YzHCCg8vI6ggdaVa0QWqfz+bjbTSLi9rCivdey020w/BQQmkCoK0wam5g0O0LW6YwNdisCmQjqGTI17hrAkg3fCWkJ+CXI0NST7J6LSGwDiZ4zGcdWvrW9Ook=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713251363; c=relaxed/simple;
	bh=qFLYR5KQjHCyPcuGTSVqurYxRGhIpiJx+JNlcEoCGOM=;
	h=To:Subject:From:Message-Id:Date; b=Y+YhpMcKTUu3+gtg0vUVZ6nDbDBlBDBD6WVyx1T/yZ5AXrfQhb+fjzj3x3UKr4TEx36/dgUbmXZ1V8RKHhA6V0kOqTCzd7INrsIRPlsGdnGgOgePN+V/gTuw0wCKprePAjZrrbkkqqgsl7uugjb/Tz+ioqZUZ3ULPXw6sNmtPDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQq/LejA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQq/LejA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBCEFC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 07:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713251362;
	bh=qFLYR5KQjHCyPcuGTSVqurYxRGhIpiJx+JNlcEoCGOM=;
	h=To:Subject:From:Date:From;
	b=JQq/LejALMzcWZ3wyAvioWalQDOv2tMO41YLrGbqbgFXv9zmQZXQ7bAmLP2A+X5dW
	 8hAn9HPMCfLOANXmOEqcoFCTWcF0+mRST0ZSZNL5CYfBElT+fddsapCsrPHAeN7OyD
	 QmScNphJ8nO7LAHLOcA/Ckx39ee998s9hMhU894HN6gMGSHV8It/5nsBkNr9Do+HWw
	 FEA4BUUStrdCIVtJnZW9uec6TWLpP6d0ZWucJZEsvfCSTvtwAziwjCRzvcrQ7Jqqgl
	 9++cUoMou32iqByDnjyzSRuwUEAxKVsqw+ocwDxjC5B6HIkE7u+EKll27zurxC275t
	 1JJn+B+mN3Csw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD73C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 07:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171325136277.7679.5305327528063273393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8be3588b0749794001206158fc8f135f5a206a6a05ae374fa00ef87c34a8f3cc
Date: Tue, 16 Apr 2024 07:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713251362
