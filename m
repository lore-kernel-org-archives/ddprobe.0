Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B991E3CF1FA
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787054434; cv=none; b=B/yzVJejnuyS05FOcOIYANLyhluBg1F4z4UfQnyeI58h1qbwxDVThWmfz5m50k3UJ0NWFVCiMypVPScbsJu1SLchjvAa3jhUaIosVrOKwx1nv1n/5SKkP9N5NfaYCmjeg2WNEC31p14/Yc9YSIuuifH95f7UslJYO19lDdDRtvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787054434; c=relaxed/simple;
	bh=SXLHETFthaHAMJXSV2Is9BwYPACZ/HP9lLBOkM3Pz2Y=;
	h=To:Subject:From:Message-Id:Date; b=ZzG+3bDfd/JHfK4GXbX8x19vxsdD8u7xi+dV0bg2mULH6hZnj8u7XRElLxO5jQqhaYLP1OWLyH/Gs6ZHE4Hhnw/IaaV2EyalIP+dZDZ5AtLgGAteG5ON47Gx5Gl/281470/tfnSd1SpEKrBKF1aHAYos5ZqgQ46uiEr1oH/uZ3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1hkIT+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1hkIT+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 42166C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 12:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787054434;
	bh=SXLHETFthaHAMJXSV2Is9BwYPACZ/HP9lLBOkM3Pz2Y=;
	h=To:Subject:From:Date:From;
	b=E1hkIT+/5PTAD2LLiTIrB1BxLmUV8EAjDGU99jzUIeERnywV5ejLBklHN3ZSzlyta
	 ujJnfQvOJwXuNPcn2dNZzq5iZCLT+sx44lPGfytEoTrAmg9EBdvcAkgNDtFHEVBAFG
	 WFgZv6VHlFg/R9j8FQn8+Q2fa2/F30yEU5WAheH2gyaJCg/U8VSQL8RFAkFOt5PFfU
	 EGXOlCwu7kpo1QK88XV0KDbizVC/I8P8LP+D8x7FJw7jZhohFlPCXr6brU3brQs9Ud
	 i834yO5+44TkaM+Sk77av3+KeTFxf/ya5U7Ry+9b+WAlQ6L3g38y923GIN7zWXaPVf
	 TUNnTC0E8o0fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9B4CC5DF7E
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178705443391.24331.2334790749583835571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38f75ecf4009195c72d84c680773f57a02890951097443577389e758d3bc671e
Date: Tue, 18 Aug 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787054433
