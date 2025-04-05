Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4612C1C5F35
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743845395; cv=none; b=d/u0WAe6stZCwMKrujE7GOqPDxugpMAt2jIF/nzN5UPL8IO6Hw3JW0A625BhCjd923/jJ9pQ6uCfyv9FuBVO8kB7aKR5J0GOtAIWjaOZB5MnlCvh68LqL8ktspGLOlvOB0p1YOL8acDjsOpsbM2Nc5vxo481U+B4LrmzbTDhwTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743845395; c=relaxed/simple;
	bh=yCFgLkbXGjthkLB0yr/yJnm/9itM734j6p+zWnPEZz4=;
	h=To:Subject:From:Message-Id:Date; b=QVNSSBwFWYnc5HC/g8J52YnY4QhUyAudb4OeIr3D287znGsjugnzYZBEaIJ6O79t29M5FlohKqADvzOB3I205Al5zyiSzBp7ax+YcArzCp0V7frdDO5LDHBzL3TA0rNMyRjBvc3Iz4AfWgU3hHBDam++9AUVsk8YhyOcYPVPqmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSwi1ZGg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSwi1ZGg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8158C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743845393;
	bh=yCFgLkbXGjthkLB0yr/yJnm/9itM734j6p+zWnPEZz4=;
	h=To:Subject:From:Date:From;
	b=RSwi1ZGgfamtqTgSROYShsxzBi0+Gx++5zQUNKMWyo5RO8Fc8sjQCByQzqTl9SXSF
	 h2HESv30k+BpGHUlpGdNAta/HdEutBrGrLge6UmNe2WSCFNwYzwFUD16HOjxXEhdVf
	 rz21f/2gMrf8L4s1G8jjh5kcfnrr+47F2Mrmi+d0OrYNcGpIkZT0i0bVICYq5tUAh4
	 2/XYCWxiDeM1qyWUXlxPOz3CRBha4luK7lX0CVB81AeZu9m+W+CrL9lwWoV7Cyoq+1
	 5pj+Vab7n49PpadenU0ZS2mrQRpeGyUWiXqL6nHCq6pH+YNvwi0P8iDF1WMVgD8Mh8
	 vpVDIBz7jU+0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1F13C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174384539364.25154.10666855900952169338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe207ae3144c40defd633d76e2ebcadb0a698c78814b20bf826647246df6fe1c
Date: Sat, 05 Apr 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743845393
