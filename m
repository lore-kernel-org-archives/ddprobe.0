Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261651D358B
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734423954; cv=none; b=caj+/W4DP+y+s1akpS59KCdVfxFANyPRISkbX/2ta26krdJLPjqj8mkWIFTO9j1KKqzHbxfeAB1dXsIID3gZy7pipKMMxCgYk+5GCp4eU20pc7BjuX5bovLF3VjgvUVqEomUmM0O0jToyw8hsA5MYmYdNr4TFABmZdHzFygTohw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734423954; c=relaxed/simple;
	bh=JUvfcCqdogrfaOIdNOP7EgEVCI2sBe8H+1WJrIfmSeA=;
	h=To:Subject:From:Message-Id:Date; b=q4GpCMDDcTcyV+7b9xbSMuNP34dN9+ZcroWbu21v4RDQ5TGlrsp1uADmAxV/fY7cRt9vFIH/Dq0HTYaKogFge0NwCJUoIDdpXZib0JJeUMOeMVZgjHpq4hMB0xYQEadW0d+WOcaBoPufGbOIM6BDFMT6EZBA4TT9f6ZQTLyixLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCvjmQ7n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCvjmQ7n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9B4C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734423953;
	bh=JUvfcCqdogrfaOIdNOP7EgEVCI2sBe8H+1WJrIfmSeA=;
	h=To:Subject:From:Date:From;
	b=MCvjmQ7nv9xcno24urAnavnSV/95/mzyVuaG8+4LGPGqNeyz0nePkbL2Wa49fEACN
	 vi1Lr9N7muIHo05aKXabe7bX/cs/dw3V23qkmlLh2oFBZLpoL4OZBOhhtZQImfHti1
	 kth+tPLP9RjrO0FARg1gEKoTBaGsjUXAYgsBpkRwOOhG6qgv90E/7ZKS30d9Z2unnf
	 n4XIkFJmZ0Ep6n1vJdXonW8LB/tPXfhHVMApyzqPFjFaTUIe6wAo4BvAj8iqMx4se+
	 bLgy2COcd+qjnHCqowPWMaVjPbZMLKplSi+SysTyQKZh/Dagy20FtVLveqRVHdLhBY
	 G/Hmck7eO2LpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D1AE7716A
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173442395361.28532.15047598170847597283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac8ac84679522fd93e8fcb6cb4d7376b684f62141b754c9f17e8421434ee20bd
Date: Tue, 17 Dec 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734423953
