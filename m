Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64AA0C8C7
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 08:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713601823; cv=none; b=Or9y/aTZhRo6YCt7teof6TlpGxefjrHcFBPu8A6szxRoQKM6BJKskFibhdvMO63JcmYCljIzpnECxIV8xw5aoF0m5cl7ggojVvemdaem8NSD3mA22kArL+osBlVcP9GNELr+FTepLqhZyKZDSY733FefBZ9vxxxEck1m07L3Kx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713601823; c=relaxed/simple;
	bh=NhNkz+UgaMzSUOyDEOOBEMxeGTasEB4XfKGxijhJYi4=;
	h=To:Subject:From:Message-Id:Date; b=C2zaaImtZiJCK4vcjRDbrcCpT52M3sF9QxKZilXqbzvfPdAt0rVaB69xJFpYtSAjuRmLvbSPKF7hWrjoQPqy+5tHjOVfNEpRmyjzzB3sN4/kEinVwiXr1MtT/4tQH3zdr1/KPhJc9eVQ0Ij7iKg3x6D7uxNvrPya+4M9NAWE1i4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HK1SH/5G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HK1SH/5G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8501C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 08:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713601822;
	bh=NhNkz+UgaMzSUOyDEOOBEMxeGTasEB4XfKGxijhJYi4=;
	h=To:Subject:From:Date:From;
	b=HK1SH/5GleySknk6NyTDDoWaVty9jZCkHiwR0cvNqn66wDJLKn4Nu8YWl3/ZS+uCA
	 G0gbMPAj934eirEqrE3miEEe0wVL/rXMyKV8xQBGoZPJUHv0oiMYemA/dCwJEwOEvG
	 sXiZiX3FqLT/MobSXVj9AUl93Cz3HuW1uDZv02Gzk9m6gLL/k1cpYkUQ7Y673h/F4X
	 pp1j2KQi0Mop9lsJ04bbonz2wKbwMSMTp1SXmy2x6r1a853O3rdtrdS4cWtNtYnUgn
	 09bL/PKAuF66TPh8cHf60dyx9XeEUCwi/GLAguHXYVGejASSM+kB+D3wek3a/Ce4NV
	 j1Ii9cl7wNieA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2496C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 08:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171360182276.16297.4503215422870950681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd31cec2402133818e54b1b3507587c64eb36e866583e130ecfa888c1f914cd2
Date: Sat, 20 Apr 2024 08:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713601822
