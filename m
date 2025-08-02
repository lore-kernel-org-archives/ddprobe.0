Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4BC1E89C
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754138994; cv=none; b=e2KLOtqa3wgxv3VVqIw04hHRlaX41ZVFyHMmwepE5gKSyyBVj3YXKwvintooPLVBx/fIvy3qprqmc7hzLa+5Xynpt2UEA1o/gBIQzZEmVuYOe+xTJzDfpUcp+qgJKAWUx6vZ4imijjMZbwLxOTI0RyAw9m9c9G4nlMQk8lk/Vfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754138994; c=relaxed/simple;
	bh=y21DdDYRpqzv4BJEFouexQn6hBFtjORR6I54t4jE4ao=;
	h=To:Subject:From:Message-Id:Date; b=e85lQkoJRvQ21V+sTDIBr4vXPofkyYxGBnwisapoVIBnQM9AuzxEJBx64gK/XE2vB0grltkZmx8z/CWMHC80J/5YMPkBUJ6PTFFtRD4roPIIkAnWUbemoJKTZZe8ymcSSfmUcgcGuoF4dwUkEwgBUj6y/9AdamkUXDA1Mdo8yMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pavh6pU1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pavh6pU1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82B8C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754138993;
	bh=y21DdDYRpqzv4BJEFouexQn6hBFtjORR6I54t4jE4ao=;
	h=To:Subject:From:Date:From;
	b=pavh6pU1Yn5WehaRVhgx8P4xCulrZlBKIQiaTPMPUVyu0TIu/xlz1cigTaaiMvIgG
	 EsssJcwmJN2ZqCMohKLr59G4i0fEc3nL2etC/pmcEpxEpXdIkqt91wMO3CfFrV4BCk
	 ByrKtOt3/ITuhzWaIN/gCXEXN+plZUdJmxJ+fhouB0ucgZuwUaFFIyeDR6SzjeIRec
	 mUiQdS6rF3LbInDOJmnAioeEKssqlaMBLZB6LrVZwN7/22ybdWZa24X/IFpQ+YALUA
	 4JQq5b/SZUW/5fepmw4u/zDUhoS5wzXknVqTD2yLffX73MMjYrInL927pcVUUi1zOE
	 mc/IBStvRStzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A92C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175413899358.775.3431905056419175861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dc40094f28d580433e4c322b782d0798c1db518e271877ad13c5e661c2b0285
Date: Sat, 02 Aug 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754138993
