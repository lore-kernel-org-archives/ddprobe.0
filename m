Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC4131F9A0
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 05:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782278794; cv=none; b=lKV55vn3bKYq5FhTi4J2WYQTWLC1UthpaOWH3tsed/bXs2GOeVgbg4FOCY8yNOPBM9cI1cYcZtpzva6hcwTC6O0+ORlAZ2zGB6NxGm/LYZOCtyISsuANyRVGHjGhgQZpLttdVFF7V8hoKKC1+Nuoxp7cpkktQH6RcE/asqkosMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782278794; c=relaxed/simple;
	bh=mLSoT6w5ikyHtWacgu50wxH2RI5y56atZ4XRz+xpyDY=;
	h=To:Subject:From:Message-Id:Date; b=nnKqDLch36p9uxHTEnRONHrJ3CXeudf7EIDBUuz00nEArpWGd9IDBjaqzfJRvPrKgHfRVXtgyFEKrWb4nyuvDgstCGxCUxYJ9k/zTlv54ZOCGTxyfgY1Alnr+B0y35BRnBIqgCLMIXUFVHKdbgx8vcRBwMneqE92uChhf61OCsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8s+wYYJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8s+wYYJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03200C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 05:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782278794;
	bh=mLSoT6w5ikyHtWacgu50wxH2RI5y56atZ4XRz+xpyDY=;
	h=To:Subject:From:Date:From;
	b=G8s+wYYJR688rWpLamPHfaAFlT2m9NAtbH1elLl0kG/odyzaLfTlP8pMeyJyANbWs
	 x5FXGBEzHZySDR5tC8rKSwVUV58gz+YgCA0DWEtY4tmV5JM1bLXw0+zm/Sik0BrU9W
	 KSRVmwW9la9pAJuj30axwMF+ux+HUbz+avCsGjZU+gS1voJN5YngjUE0Xtdu7RV8dY
	 9OEyQ8tq8zi0zFvSV6ylLp2x9ecd401MTJgy6fMVn739JfoXV0uGje3+ZdM6w+lk+R
	 RxHkj+/NeABmN/VPTX+Iyk9ws+UlNBD9k6RI+r3NZwnwa5rKqV4Sxwo8WoZDqm8rhh
	 Q+nUcY1xpkRwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEEA7CDB470
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 05:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178227879377.8493.17271434004471139527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e9b2763388925eb9662fc969ac50dc1de1ddf98cc84871aa1bd26727a9984cd
Date: Wed, 24 Jun 2026 05:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782278793
