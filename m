Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2140A3A1E6D
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767658434; cv=none; b=hkdFRM6lLV4/IikoYuzPFQyEyo91s5rhMubOxDLTA0LjacF8zVXyFOvdMSj2qrySzCeyNJdcvWFC/nmtCK+daSPZ98Bk86zCMraZeAL8M5n5Oyw4x9+NXLLKRQuB4yobDwBhw9BTBNEt5b+nysKYDRI61yOkHEBbcuLO9ttfwmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767658434; c=relaxed/simple;
	bh=hUOdz/8rZ6B9ssVegtd0cX6qqGlHVf8l6j9eKNHIsNE=;
	h=To:Subject:From:Message-Id:Date; b=UWXjl1IqWWjqvhjYVP37q2xM9ScwYe7LLJLsjGlmp+qXUWWwWhMb0BnrEkKWTNXlBDcFKo+YAaqqUXfhrUkz00maHUNwhZtnJmFbaAfuOmdAykix6DxvkxaLvorS8KKsLDnpPdfewvg9vavk5022xrVVe1Rci9chQtGZAl04NXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GEkBaXOd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEkBaXOd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0241C116D0
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767658433;
	bh=hUOdz/8rZ6B9ssVegtd0cX6qqGlHVf8l6j9eKNHIsNE=;
	h=To:Subject:From:Date:From;
	b=GEkBaXOdPmBzZC/ncc7gu6qNZvzC2gVUf1Oi2vmQ3fcD5eHfOYsYZHveeutM7k0dT
	 vDKoz0YiFVQTuchXpiIf2IkfpzFPo3WMzO92U8ElQKWKJHab/1Vdj8gxxyZf0lMN13
	 5DrNrd/EyDhcZwJGY5lOs3v6bC6jR8Oez3f658WRBjp+CDK/rZakxcHWzDssVGLIxo
	 +Mwn4GRhLDY/uBfC0goDYFGp52EbRx3vI7mwSg/WtYR59yrxZBXiFd00Xyt4lbx5dw
	 xCGOGnLwM2+uqO6/9VXyLhJBeTTtiUqvPl18YDVOXEoubkmmI2nW4nFB0UXtQmhSlJ
	 HtJv5LqQbuJCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3E8CD0428
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176765843357.2097.10416610261506418239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 198f4af9f30d98bcc4f1d6da74370768dd17f050ffe05566b2414b0bb37d5cca
Date: Tue, 06 Jan 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767658433
