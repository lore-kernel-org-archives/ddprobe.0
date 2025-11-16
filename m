Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3935D25F984
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 06:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763275254; cv=none; b=CGb9i2fg5837gCXdRTVq88XBbXLzBSLFMXoQQtRycG2wdINGyZfjxwM/VFjHdegAe9lXXMBL58TjtlCfNNqityoCsu2RMB++Q0Y17SK1NSxiS4WyohCjDxNa7YVXM3OrT/TIDZKwDlvNCmsy8hNfB8v3XhSeHvUI+ImAb+eOht0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763275254; c=relaxed/simple;
	bh=3tXcqp4kmn1w7MglLz897q8yVp/P/lUgKrfCXRc4fpI=;
	h=To:Subject:From:Message-Id:Date; b=SdMoqnaqKVzygr2H6nLQNlEBTRQ1CRdxCwF7ZIPnJ33z6guA7Z/1keXwoxVcqInaGDVKTMr+EeO9pHWlecHbbP703uwbripFFZYE6A+GR0/Km7AjftVrH1GNqtwKCREVZe6UVUTnOBR5i2n07vxf1bMIu3+OubmBVz/okRjOZxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kib1f6Ep; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kib1f6Ep"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B931CC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763275253;
	bh=3tXcqp4kmn1w7MglLz897q8yVp/P/lUgKrfCXRc4fpI=;
	h=To:Subject:From:Date:From;
	b=kib1f6EpkvTMh6KIMT0ImTzURvn3SeOcIeQeWtHf3Dob5ZR4fqaBaNhq+1CIJur1J
	 YkHugNG770gaUz6nQ+jUlIa/Gq6VQsvqiU0e6mR3+lV/78m4/g8v/4gJVo55r0WjaE
	 qZ9LawVenJA0NmUiFbE/ZoL15f/qmfqOT5GY9Nr39dWoOzmRcctIBf4POCUAlyuPBs
	 TrgjtYfg9zQi7d+ccztUfPhh1PdU0xRF1YYQiGImMHLp645748jd7cHkU2YXum8Uln
	 SlvhUQdp9VLWctrV3jvZcWaKNFmzgYjwTvcyhaJRvAVh+vZbyPT+Ah0VzxULZKWLE9
	 LBouT9BSRp0tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B42CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176327525364.14374.16178838609993623144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 688e68500fb4ba8e83b6474593fef955fe74f00836e7362a2bd62b7c62d38f6b
Date: Sun, 16 Nov 2025 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763275253
