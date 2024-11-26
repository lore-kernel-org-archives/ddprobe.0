Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2936413AD18
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732652154; cv=none; b=F23kAVNSyog9bZjvm0zBsx3aV9UqCaFPGUeo2me3ndP+npUBXVEYn1EkAIwJQA2HnRQO9MacfuZZ/fFWjKUJ/+aHxcwzY297gaZ9z9ozlELdKwiRzFRp/QR9hEwSR9X0nY+mOwulwxKeOfIPEFmNasdIwLkWZS37C+mnY3Xj48c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732652154; c=relaxed/simple;
	bh=hnQTcckMBKyhSmvMC15ZJNaKVS3aBygnSofFmsH9hFg=;
	h=To:Subject:From:Message-Id:Date; b=lQ4fxT23w1wWkY5hifglJfPVYs77Ww34h7lUFWziQuE6ImhoXbAnIaI2cbJZ6JJs50XZoWb37KSPKGxO2eZf2MKTFYY2vENMvrSNdJPwPQTnDOgp/6YcjulVOgHi9XTDxJEwJnv6J5p96RZKGhux0YrlmKZNrtJXcEQxXbrWhlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZoJhvU9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZoJhvU9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B61DDC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732652153;
	bh=hnQTcckMBKyhSmvMC15ZJNaKVS3aBygnSofFmsH9hFg=;
	h=To:Subject:From:Date:From;
	b=SZoJhvU9wiFdpAas214Hv9YIiD/F+JBcRaIaa6Oxiz9BLN82tUM/UJBkWA6Nk+VpS
	 bQnm21OdL0nZITOxr2I4yWoHE27nxyQiA0sUuEe9NPltNqNx48hQugIVhMGCGa0TOb
	 DTpM/Wv9IJUUi0ajhansIO7Wehzrxrb4HQtlv9DONE2pNTwdicl6pA9lShBbnLLSzo
	 Ej7EJvmdoI9NYkK39PF6+bqAl3t1SoX9PzB9vL1lG22JVFILxTUCRo7b7MpsI6eCMS
	 LbknjwJpJ9Nl9RWZodKL7cvai8V2Coxezm+Ub1TQ7FxB+XCF8d04cd4FZSocUIA+lF
	 4lQkrSJQO6ksw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EFF3D65553
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173265215363.26052.2314883257711904935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39f03eb0b26b0f7f1cc5c53d0bd8b7fee40742a1d20c54258f6086efefab72b2
Date: Tue, 26 Nov 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732652153
