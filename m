Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC7728137F
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746544195; cv=none; b=QH6xAjQxBE8LXJKvWvjsOGYY0shFp464EcwBu2ewvfwZs68f5nUu64uPAkXWtmDtv8Nw4UgRX2KPGmiMzdCXshRQKOOxJTT9ei3jI4Z72clDcgjTh/PIHzah7/JRHk1iY4xZYBOr3Bze1zEhRVbn0lvY1o50S+Vq4yA4qPU4iA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746544195; c=relaxed/simple;
	bh=AebOgLt+ohG8QclQqdJklBh8r2x5jdnUeWcF+o1LuQQ=;
	h=To:Subject:From:Message-Id:Date; b=Zgxi536fXRZJDHjArzcKrcx5vmUS1c8TRrrJPYh51WruDBtFpPPLr3BTUSEBrJGF7NdfIHNxLrTczfj1DIMwRK32jfXAHhHwLzalD4eg4JqCc2QWX9ITgdqaTaItEh5CZR3QO5flcvbazbr6EVPMcUD/XKBBoqTfwcaciW9kBh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjSDEJmv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjSDEJmv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A87DC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746544193;
	bh=AebOgLt+ohG8QclQqdJklBh8r2x5jdnUeWcF+o1LuQQ=;
	h=To:Subject:From:Date:From;
	b=VjSDEJmv8icvJ7hDOKBcyDNCJT7FDR6HdnLhYSAX7XKigbOE59lMCLC6Djs5OSGtk
	 UbsKSuzNa4BH1dY5pvJVlAQZ1tv+Gw+ay9Ld252XJscpt7OUIugRpRuH7opnYJdMyZ
	 udPFr9VlcIKsRn6nPSMyj3BAZsDtE3D1cL4ZUr2eeSVngu0ACa1PWSXDoNktT8DNEC
	 6CscFM/0GHrdwTL/cfrC6GP7Qu9sVfnKUbU/8RjO7M74jQ9e/C6QPVjSFDUGou6Xun
	 AFlhlrzUSdIFmSZ7qEo3yXCntBOgVJ4J44U8kGJ8FqrgaOaTQKmWMoqT0I8JixKUlP
	 XA1WuG0de72ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E239C3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174654419357.1616.6336039259226823736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 601bbe49f9105ab140103f23772ad08b44b8b84adf87efab29c304cbbdcd018e
Date: Tue, 06 May 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746544193
