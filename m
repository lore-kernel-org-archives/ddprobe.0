Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68B90C8E1
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 16:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720284383; cv=none; b=EiWI1mz2EfH9+5OCK+UpLdXxGt3iMpln9kU/+hlr6S8MmtzwjtYh5E0fL1G/YWYitE/xcNfItZZke9vEDJyfS9lbJhEfL+fNFapnqzsi0QgrrP5lBcgt7jieoNHPTON6TpFFaNvEvX5JiKea3VZ18L1o1tgzbMm/BtLouAgwL2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720284383; c=relaxed/simple;
	bh=bZQ0JMcm5ZjOvyTi01VY87k/bngGy2r+5axcJIXRnSw=;
	h=To:Subject:From:Message-Id:Date; b=BRW2jnrsi+kMmS3P1e1HuVpqP4cfIQrlVzUdf8XgF4GjHBscHCV7rHGDbcrtLh9EbuWNIDGMNio7Ltvt5D7DHXK4YNMYMhwjIMXrjw+bqrQrBYU/hWo0GHRz4x8CMVoanhgk+lkefAN3goFzuplrXw90oF3zfT6jyqWdQJm+UWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nRQysuHJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nRQysuHJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4313C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 16:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720284382;
	bh=bZQ0JMcm5ZjOvyTi01VY87k/bngGy2r+5axcJIXRnSw=;
	h=To:Subject:From:Date:From;
	b=nRQysuHJ4pzYdUflQ1zgKCkEqvUu45YEvlWc8FST2YrWW2c3IUc9IUC/pSg3iuOip
	 b/E8siwdB/hC5PpgK2G5h95vdxDCus881t4Wo3tvfkX4wmBDPCs+9Ohth5kUUnxP/e
	 A0xN4f04sBMAGaOznpKxviW+baVUq0P8vbsa9bo+8RHKiLCcTc19FrluyZNzhPDJW1
	 lOc/H/TzFc2zr5GiQ0bEC5NZTGNXlpBxA89M6xNDsG7Y/o7Y0De7CX5sC93ww+lgC1
	 VV5HY/F7M76YWtGxday/darPLb3Gmjs8R2b8Dj51pIf0Rd0rrs3uuR8xWBvb+GEGJa
	 6khtFX3ZTb0Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C770AC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 16:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172028438278.15661.18222768856110000106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a62ce2cf84a0820da6ea7ef7c710bae3d50bfa14d9db9002ae306c69c7ccf8ae
Date: Sat, 06 Jul 2024 16:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720284382
