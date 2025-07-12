Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BB73C3C
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752290394; cv=none; b=jqBqKqhqjHnpDVoPk59M6csbh68Y7fqqcnDaWEBhNHrKlkBDdMLaHyolFXLjFbg6jiLe7TilM4gsU8J32knmdo2SCsrAcaKLFp0oKeAKNE6KX/S3eCkXlOAaRD8LThj++TSLhLYt9Fkas3l07BqFEMiteOubgTJQOezAAyTBZo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752290394; c=relaxed/simple;
	bh=62r7s3gzUqu2nTUlMOuxclpHlRLfFk062iP79qZ8Ux0=;
	h=To:Subject:From:Message-Id:Date; b=oEmMb/ziU36U2z4Sn4tO3Qf9n+Rc4VPVoZ99aPX/LTHWQYRiUAEhgerIYymhv1P0avqixuu3VwGyY30O0eW3wJhDDrqEUpNIwPu/VR472iVf5mHoUhmt9Z7KzLCMDSxeI9wwGFTNWaevosn8/Rr4TpaaS3LJOo0gDr8F5aoXFFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfadrNwL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfadrNwL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39FDC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752290393;
	bh=62r7s3gzUqu2nTUlMOuxclpHlRLfFk062iP79qZ8Ux0=;
	h=To:Subject:From:Date:From;
	b=jfadrNwLVGekuQNA/W9ueps7WB5wxuX+zE089UYlmylh4MhinnF9Ulx/W61mqpKHj
	 mZWD9VDCYGC9kOCAr/MjBjWmp80qHiZLUWb9zEzAQx4myK1MIZRqri63MySt0beLv7
	 g3IyBBqP0/rXt1Ge+L106clFZwnwpXKxEdBecq9BfjwUY3cqUpfhc3OuKjy4cb/LKr
	 9AsHvcwf329fYHkcu0tQ7x3TKHLHDjPyLuOAdR0yL7Kby1Dz0YOmO7Y/NfE1g7FX0U
	 9SzKpLBgQTbckWT29DjcnCPqMPxCCYbyToY7nbpvOTDv1ZnZauD1RW71XSFYh1xgF7
	 pYPkLuf6fWRSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92043C83F1A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175229039357.14463.11742303162319412634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06de1f2786dc1aeb89b3d55c9f87871403c427e9a0f42d22e7d7d618696e94b5
Date: Sat, 12 Jul 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752290393
