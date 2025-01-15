Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD457231C8B
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736925353; cv=none; b=It0Zwp1YWz9+R+gmeTtT3dcKD4qs4KIczsm8UyeyuMkBIthQoZB46pwI5QLVq6ahlhGaeIY7LchfP44Fe6MtWrdnepXy5+aCnruGvAJbSuICGPOHzM/1yFfSYW7YkobFNh1eVPCvFtkRCjblKRO11GCqM7BHRPrK/lSLMONLbkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736925353; c=relaxed/simple;
	bh=lDSjuUvh3QPxJPCcqjBCLSzxYBOeVmj2M0UUZYrusVg=;
	h=To:Subject:From:Message-Id:Date; b=dWzj8DIgAZXWp+v2F6Nu2lY/5+HZDUegjAs6vjZB2+eLdaqxY0+cyACg8ShUYY98ycMsI/EOAfEJPs0MCvk++8V0wHyBCzPCwT8VW4ad3CJXe11Npqjvu1wMTB5WGG+cCwKancxq3GlShN/YCdWstB13KbiSGLSFwaZ9K2yc27M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9+EZpJu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9+EZpJu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9983C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736925353;
	bh=lDSjuUvh3QPxJPCcqjBCLSzxYBOeVmj2M0UUZYrusVg=;
	h=To:Subject:From:Date:From;
	b=U9+EZpJuD5uo2nyXpJzlSa3pyAvO8Zjsgaj/czBuZBRNOIxc2Ps4mAEOqkDCk4lxN
	 sxujiA1RPVOaolSerYpGfXEoISCaOWz4sL/3t5rHIlerBmipSTrpiebRHHsbhFS3MU
	 DlNIeJuoYpAn+zvRSG8+xxi12jLDCg4FhWV//TeawSO+Y1N/bXTQ+ft3UJIbVvZ41c
	 3fjuc2RPCZYHEnhrPdF97VsZ66kUAH1n6oaf/WYU/PU82r0KeY45sP/QqDcc0RcvkG
	 ndd7zrJqcHdt49eAq+LIUtSXFXM+2gdE8xbUxrIUXTdhNRs9lUuuorbuG9y5gRbYMn
	 FfcnmUpChiWJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A45B2C02183
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173692535365.7472.12158562997402504947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77e2f70802d128caf29efb20f5c24e63e4ec7e718d74942579cacb258717633a
Date: Wed, 15 Jan 2025 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736925353
