Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166BE166F17
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724134554; cv=none; b=m7LC6C4iQMVDgoUCDdW7fSThikh1wOzx6Wiu7FDuldq75mwwKUPBbQubMIGLSe5HIcSWeBs7l9gTgOHG/n195V5BCK71U1oFWhWTpViQukMCCB8tCJ3lMeDqxNRGd6UeNzSjtpCYiIbMK3cY8IKL4r4oYNbP3220cs2+D65Akmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724134554; c=relaxed/simple;
	bh=KbHJ3UWOUAFNrtGJIeAUUxS7VQRGwn1IpiGtPYhLneM=;
	h=To:Subject:From:Message-Id:Date; b=vFmHbPRRwpiw205j8ELnx/472BrE9U9YRmgkMSt5yu6qawvpljqv2yL+uDIXDPKVBfs4PcR4VBydv7lQEOZBlnVRBhMy6cnwhLtk0urZxAoXpccNDdiDuxMoiSq/mFpxOQKrUWt3BJc4ybxlXpCo1soY6efqi2y1BX4xylWjK2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UwBkxzWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UwBkxzWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA18EC4AF09
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724134553;
	bh=KbHJ3UWOUAFNrtGJIeAUUxS7VQRGwn1IpiGtPYhLneM=;
	h=To:Subject:From:Date:From;
	b=UwBkxzWoCuF71WMVaXnVeCQEnAj6kQ37nnmYmZrf60Bv01f64w40CcP6vzCPIrpwM
	 GD0v/UPWwxj16UJDOyHJhYXZewp3n80nH1rzMtOom3YqUpE70Nx2fslgrphzlhFu3/
	 lnTgzEuRF4V8OiKfGB+RUUq7f0K1BCn9OHltjJlQXciADYrjlh2fNyCnKuqv5mrjM8
	 x5LAYR9au7ZiCq5Guz8qFA7jeqXnqAH7UIjdMyO4slFZnRn34U3v59DARX+3oqQGxB
	 G+y+vfxZc2FfeMZA8gjJzdEuR0g3Uky0NAyazmpTcLhKopifnVNw3kwzMoa1ynsfLd
	 tXUX+Ynm2fUQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97608C3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172413455358.2374.17550147833022107856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3334f740c3c9b7e375c605d6b4c6347074d0511398c7851e5dbd6379c3394cc
Date: Tue, 20 Aug 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724134553
