Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F6D274656
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745906994; cv=none; b=N/V4Te7lFR3Bc5N6fvwYg67DiGmnhvVygg6naMbbvfu4PYLBXz7Gh9pHjL1iMMoyYSLeDL3TM8Ztg9jue/Eb2r6wbsA0+z8K07TzRC+Y4Tc5aR4Qjkd6EudmbP5ghg+CPmGQ+c7/92KjHAL3myxHDNCICkBmU2XBK0wCHkAe9Ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745906994; c=relaxed/simple;
	bh=UkhcdXxtWZNrqrP8O9X718BAhkpwSSg3gBnkjFgEy78=;
	h=To:Subject:From:Message-Id:Date; b=iEhp1pktDMdfb0kNCXUeEk/WunmrqlTv6cwmeM2RIXscB9vh5lbTKQEZynZjXuwDmUHaJQVRepyyIMTq+lLmYtCEKsR73FBh285Ujv7ydB9zfBA6M5vG/50zJXtLKtgdtAv4yFwlWhGHffmr6gSfpUOzHLGYV1hBHSJYZmv6pEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOirnYFJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOirnYFJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D492C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745906993;
	bh=UkhcdXxtWZNrqrP8O9X718BAhkpwSSg3gBnkjFgEy78=;
	h=To:Subject:From:Date:From;
	b=cOirnYFJJ+tp0apdapUhsYp5ylZOQkB4Iuv9j7WSQ60gcU4VMpC51NcfX3EaSubhW
	 Q2jut3oJP+Zy2C1s4LzCqY5jOYfPX8ZNpVVU0TUirREn+tmDyp4xjkQhP2QhZX1eae
	 eijtLe2mGPms6N07qGEMzZz6j33FPI/RdlJGgJf3PszrYOtEpiz/RLFEymMZcs5+99
	 dDC5XHG6xXOyGsLDZpzn9LkBFulEHq7BE20L1NQXwskV/ZkdRbArVT5o69HTZlJeqn
	 5BKonrH/6djOOZylFo58rYcWsrgdReztCLkCWKYKdOhfg6kSsj6kIu163Hc5tbpkcX
	 bYJWj7cG7bzpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED4BC369CB
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174590699357.26824.11755990664061700812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ad07c44c5a5291f02211cfd1dae3bd9106e50cccc8086f21cc788fe65532a74
Date: Tue, 29 Apr 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745906993
