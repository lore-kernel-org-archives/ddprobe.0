Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D068259CA5
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749476394; cv=none; b=mILbmJRBzETL+ZlLelUaT4lT7uyzLWuZ++fsUjMYNGMGRY+EmjtvaEztrlan3UKJNP7xORmXBePdOZswQ9EUZi0ROJrOI5ruV5Qrx5+yvGv31TVwPC4OF0maurwcKcWODf8Dsgbq2AzSnzQNr3+DovRfpGRJIPMMckXgvJTLaYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749476394; c=relaxed/simple;
	bh=2PZSpA4q3H4FdpEsanlbQ9PaIWnzKZV+pcuzfT6zmyg=;
	h=To:Subject:From:Message-Id:Date; b=AI0HnljrgR9Cjo1DOCwwoTTlUZGXzxP41wJZvnEGGv7Z6akKhnNt18oEXOcR/u2LAD8u7UPReAJJPj8Ee+X0/xvM1hZ8EWun1hwdb77Nmvwi/nOMHBxVelx5Pi9AiXmrTwJW7OcRBS/LlwiyrMLfCCuJaB6sM6hYAGjku0hUUZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B35EnsTD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B35EnsTD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A228DC4CEF2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749476393;
	bh=2PZSpA4q3H4FdpEsanlbQ9PaIWnzKZV+pcuzfT6zmyg=;
	h=To:Subject:From:Date:From;
	b=B35EnsTDJx4pV7jvp3Cd8roCjFeYF2wmIk5sLpGE+YxsOwqzCnnuUWn9tJcOPhr1m
	 xb4VLhUvwApfcKm5DL14R2CYo/xQrGAyaLnqgb+8VU4rC15EWpUO/jkhWKVknKl933
	 PlVfc53RhSTM8ITJWFqzRr1M+nr6oPFBJlkzSOYnwMZLaqzx8IlHbE7akIlmQ0o2uA
	 mxSFPAGhozIvM1PhsdH+4hNhTm4gHoX+hIxRLuUaqdcGWEKxMFZ4+rJep8GyefoH2Y
	 AhAd+cNOIbXHbwK19b0E6zU4ww2n1s+MP0jBqcy2HkAlRcXzTP1JcAyaBNFh4NK02g
	 mpMqevGpozLBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2BDC5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174947639357.15827.2693908507396620600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cac2d5ee428ac21d35c6d596f25e42c1ca5513c254bd6d1fafe798575cdd5ba
Date: Mon, 09 Jun 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749476393
