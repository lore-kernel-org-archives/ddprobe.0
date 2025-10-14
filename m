Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F37EACD
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760407794; cv=none; b=d5u3UCaJg83cgs6I1a5+p+zkydbvK5/EOF8kAh/DI5JENGz+PuWPQGT2LaJUKKt0F2kfNyBh9iWynqa4pfjTVhaBatJGl0LORoGXK5FJrdZC8fUIN+S9jK9PFV4qOUsNNZi1L83JqsUZvJQ21IRrN3oJxusludMKUuzQIatuaAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760407794; c=relaxed/simple;
	bh=VFS1my2nJj6C2gH2j5Gy7OhC3rSxkSJiIhgYFkFM78s=;
	h=To:Subject:From:Message-Id:Date; b=m9PHMcNo9WWFpfoPGq/YbpCMj0adhgtDuOqGFAe3QptZB033KCknLccvpKK6tcpZGPfClyi9Uudz0D1i1qoLMIIsK76HIj9JrTb75mTZnBtBuVODlUhRoB0oNOzbSTQZLSyKoX0pSLxH1HZPPtmein/W/dRErvXq9xkafAaxD1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNSZPuXX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNSZPuXX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34D5C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760407793;
	bh=VFS1my2nJj6C2gH2j5Gy7OhC3rSxkSJiIhgYFkFM78s=;
	h=To:Subject:From:Date:From;
	b=gNSZPuXXwx2DBpSEw44zihfJVkGpRClIMQK06F3FqrrKapDXHswm3asmDKRyLkY0x
	 J7xymy0jnEqohjleqxsPpQ+naatv5Q7r8qy8Y3X2TWQXpPS+uQXxndT3zScFj1MYIW
	 exfirddNwIcVha+tGLj7EqfcBfYsSOU2/L4YJBQ5o2/fIRZSy0HWt1Vgb6s3jQkb+7
	 hgVXPsbhhMeKuBr0KYVQi0a1op1bO9dm4P2NumGFET5uKQ9a1UISo7FLLumgYJIUfr
	 MaTEhidqKavxH5OTw+AKYsTtSjBJwsLmVGmu0NtNddyGevXWYWOSbh5T1FbkmtrUM/
	 dus2kOulXOdWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902A3CCD183
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176040779358.19557.7396173303911129118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a99daa8e85cbb4460899abde1a9a6a7e3856253ae3c22d802df719ef222708d9
Date: Tue, 14 Oct 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760407793
