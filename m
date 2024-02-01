Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1297E62173
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 15:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706800697; cv=none; b=oNlR2y5+NpQG/c+1KxOoGzQTjgsUXwNw7LKARiZ3yHFv/k5PWZmC9hqXjyNnnVGZEuDDJHT+6/rjeWuJPaGtAry/ywtIXQ1xlroaxJWOQWUPnIjzDgbGWj5OYtZVd6uzXX/3aJC1CFaJUEFlO++SELx5DCD3vXLOxWgWleav/c8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706800697; c=relaxed/simple;
	bh=hRAXUU6ChQ0P/s/TNIiAkAbgOmZ7Dhz8pf77aX851hI=;
	h=To:Subject:From:Message-Id:Date; b=EayUjAr9NeMEUaE8HWYf00uVmQJQL3pQoZl1xBZiqyeQa7IaSbsZ8o7iw+52G7xOvbwxacnTd+bJ/gUE7M/YEaZroH6+qd2tnKMuaj331LXOBrUDCaqe7xGYFB7YyOFD5jcZqbXsPffCPUwq5oL9aP4/jWEC1I9EDhNanGCI4mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7OkW/Il; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7OkW/Il"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79E3FC43399
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 15:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706800696;
	bh=hRAXUU6ChQ0P/s/TNIiAkAbgOmZ7Dhz8pf77aX851hI=;
	h=To:Subject:From:Date:From;
	b=J7OkW/IlCQSzzgTxnvoinr1+MFfPEHlDqBrR+Dxz1tUApIDRcpcrVPNuBNpnhYVcA
	 Edo/03mnZMr+qx5c0jSRq8nBV4s8V6Yoh4URz53dYAIJFTEyOWP/AXljp/gSBNNw9u
	 HT5kn9QTdHUXhIO442Cp5rBWlg04Yb4Ftq2grd4Ry26/z3wLFkj+4HKykmvfJUEMFa
	 dwY/I1WQdwEwFvvk1LRWE1DUjMqbJxP/F/R6Pvkj6IVYYzk24jIEglxa7MVGVmOGO8
	 9tFl67HcPHuQrIMcAKUxyl76SBcMdDRSL0WUE2IOvRJ4mlQgfUJH0kwslx82tTWAc+
	 ogyczFwmzoBjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BB81C4828D
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 15:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170680069636.30587.308197473508104751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d266e868e53a9044fcba6c9ba8e8f601ae9c18d0bd1928fce3b675a39e1985a5
Date: Thu, 01 Feb 2024 15:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706800696
