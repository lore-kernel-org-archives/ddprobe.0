Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC257CF25
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 11:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718018243; cv=none; b=g1UOyN3IdIJp5kE9CWAsMs1jVWTT2wQmriLB7HD+rFA8OyRGj6szOuji98UtSerVlOrtxuiaocrVrN+0jmg6CEHR4Qu0Jraxn8hy51YDp1f7i69RTYiqbS2afUKfI8KKDwO+2jHhEzlTjEktixHUxKdKaPmn9Y54K4vqhI7EmFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718018243; c=relaxed/simple;
	bh=uAzT4iwCnD2FSGURYJ2GlyGW3Equ0B/rFlbOxcwGJIM=;
	h=To:Subject:From:Message-Id:Date; b=G8cBf0xJ9bmxDKKtjOYoBjgtSxLLA7fJuSNRKIjWMNwHLK8bNP1vspJDNvXe7iuZdRUCgrX1SDJuK7KCnVvUx37sThOXkvBgm6afMAqyAIL/kSn70VUbOV9AbJ1lOUOjO3vOHnkpxLi1WbVxjDGUamSdr0qv55BFkcq2zVFC88w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dPw/nwLn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dPw/nwLn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F44C4AF1C
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 11:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718018242;
	bh=uAzT4iwCnD2FSGURYJ2GlyGW3Equ0B/rFlbOxcwGJIM=;
	h=To:Subject:From:Date:From;
	b=dPw/nwLnML2ZPAcK/JhFO9CHQz6bYEZdE6vg6FpVVov7MXe5eBLNvDJUqfNnFtvxj
	 pNsdKkby8sogzqo82hkpDrNlzElPFWm4Q9vNw4UCetDg6YA24wmhBAEdJ+EsOiTGNl
	 vXKUmUoT61b75uUbQVD2OGSEilDH7nkcVtwCk8e/9I73iSDmsC7kIq98XJ8V1v6OmL
	 U/hiNLkddJoNtRg/ICskU9ap4wWzZz9nCfxqD0UPDFKfsAsx7hwzVIrh4m7ZnSYKiC
	 1RMo25B+aBnjzOsEXsXdGlaLGfV/raTJpu0nJzhv60T2Ms1ow6M4ku4nY8ptiDOp5I
	 eVYMDeOQISddQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C16C6C27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 11:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171801824278.30508.17826593537134120496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a28a0ba343ab748b289234728bd7519ee7591a599a594741f6076bd5dfdfa301
Date: Mon, 10 Jun 2024 11:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718018242
