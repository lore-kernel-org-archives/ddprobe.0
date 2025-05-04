Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A1014A82
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746373794; cv=none; b=CFFP7RMmUvbrg/9I9JM9HxU0TUS9D3tk5ry0+QfAiIGhymD5IB7tAMBZvxtdb/4lglkYDhNFICbvbM6bTnx8HwkAs9vdqG+s0r3ONnb7FNc5ntT9kavqeSxSY+fiu9CJpi/oxWLReSjgwG1fF/sDNZvy3r9mwkwj0PLEJKjsNtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746373794; c=relaxed/simple;
	bh=YSs6LqCZbIDLoID74wUQ3tDw5P3RADKgUK/GGfvgrH8=;
	h=To:Subject:From:Message-Id:Date; b=WD20zQkOmFtwJ2WCMP7GqXEOxxguJ4DyVyVtHsUvNC7JSALTA0F1vU12ZDAkXm04XervLHDQ6RXQDkNGqSTXhoesyc1le6YKD4dJMyxcqLnpQkicSsDt1UW6qua/si+ld7452bAARUPze3DgR+gWL7a5F0Q+pnHD7M/h6AX3zYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYMUJONv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYMUJONv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4190C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746373793;
	bh=YSs6LqCZbIDLoID74wUQ3tDw5P3RADKgUK/GGfvgrH8=;
	h=To:Subject:From:Date:From;
	b=CYMUJONveF3kz0vMMU74ye+IAbwejePtpzUMwgyfqXt6nLfLgIECBiMC4e+nqttgK
	 ogERyHZ1HWvZh8TZSG8fNlxzTfv2licjSqurQ/TlK3/GAdDY25Mlt3q72+saf6pTu2
	 sGOKcWYLqkGEGnmQPtCuQJfH7Dsg05LCqtWnNMVk0ORLG+MrkdqW17Dhe8zGiB3d9L
	 KzzDTGtB3KrmFyOhe6DcAq8bOQnXQL94VmgOaM8Id5HhRsnwrxnjQ0NlAPgo+98J5/
	 DJ3nlot0lwN3R6vq0BMANdzPTj+J5kclCCLhWlldnl2ASdrSJsBd75QxwjVWp0CxUs
	 Pj4r0PbyZ2kow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91633C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174637379357.30495.904344690481977793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d93b7023f5e55f5b2036b52e4eaeeed9abe093e4bbd7a88e71466178d2431402
Date: Sun, 04 May 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746373793
