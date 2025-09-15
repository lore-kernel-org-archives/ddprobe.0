Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C92062F90F9
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757930993; cv=none; b=LMA/Z0wJfYbO71XwQJAOVa52vlVupQxoG8ONA9EHxO41AtZHX9Jwbm8/EVN3xtmNxXQkahTU9Jv02xq6iT6o4VcSng6PRH/P/u74fZkDG4G8eTqOmXLFi8nmQCWbHbjXozW/7LuxKZwnON/uEgCTf/BeKsUo+YAl4iKS9sAy7Go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757930993; c=relaxed/simple;
	bh=ZIDSB1X+pfKdPQEOjh5vLoEUPajghQhacEo/kda3P5Q=;
	h=To:Subject:From:Message-Id:Date; b=DMy/sAcTJfs/ez3VJjJGQzvhcMvvmogJJG2KjICHyCB5ahn8d95iLrbeiuUej9ZD86P748sqLrNQ8/sY+bxpw1oLY9A032SNkHeG/g9eEh4lMD7aBJA2T+8dsPrTt11SxM+bB2HG27eYMCezRZ5eKy5AgxhhdFTEKTwM1ijqoWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gf1zHAZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gf1zHAZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC1DC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757930993;
	bh=ZIDSB1X+pfKdPQEOjh5vLoEUPajghQhacEo/kda3P5Q=;
	h=To:Subject:From:Date:From;
	b=Gf1zHAZRbjUb5Ve8S5nG382W7tFdkrD8c5CY4WZBhp9uJh1hePPAe72Yb/kEnP/SN
	 vVd7L5DI5scikE0PZR+YZw6ol3710mgmz6C59GLjATXxFcZERrwghlEVup4ZDF8H73
	 HKCCy20FkgVZz+eypnF/RAo4ptXEjV21UFE2XrZb/nM1upb8CBwsQwMI49IbacneKN
	 0mTfqr27NuTdUPo7DimGa3X7+pFvIlXNkKROsaj2RNhhALaEoQb+SOwJpbHqhm3rZh
	 4BNBq9pGULr0XCuURdnQtVsrHk6t145DAQC+4gOCbwymvG3ZwzCoKtgCLHrXC73woi
	 gOI8X/fx+5efw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA06CAC58E
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175793099357.29926.66664169679186818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ab5e8c9e6727e36e2a64e6235800c470b500b4ae6a387574a321c1ceb6faad9
Date: Mon, 15 Sep 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757930993
