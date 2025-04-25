Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3224023BCEF
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745576996; cv=none; b=dIEjPkuY4jesSXKTr72iUYqrZkRSIgmOTg/HjP9Qk4hNLGC0k97+4MkKpZFYXO9ggAK88TSfiyJBowyJY/DAmP4zxrGkk0g+F7woAOtITVHxtU5017zOVy9sFmzhYC3i/eDoBfuBsi0UgFX9c5RR/FdJM2eFZrP9XTjuFVZWyNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745576996; c=relaxed/simple;
	bh=1BaxQT6KTyhNd9G53GrgrAqbMwuIqdi2pbMVdYuUpJ8=;
	h=To:Subject:From:Message-Id:Date; b=Ak572OoBBTLczrjeBKq/o7TNxjTdKGPvoL7f5Hrj86PkNjw+3NRcDOMW8+n6kA56WmNak5euONlG+V6hXC1KcDLkWsYbMD0wxwvQ7HKq9Q+A/iDdCYg9G5QOHG83a8PTn8rs+Wm6AHfWVQpavHub+gPe2GTfgsJhOIJz1Lofj7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0g8hrnZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0g8hrnZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13F5C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745576993;
	bh=1BaxQT6KTyhNd9G53GrgrAqbMwuIqdi2pbMVdYuUpJ8=;
	h=To:Subject:From:Date:From;
	b=B0g8hrnZGglvPyeSfAZDLDJdH2I07UPiaRXNdVTj3xlz4SrIfyy4aDOX5ICtXnSQq
	 qwA9+FIuz5qdnXjO+OA+Qd1CDLm/MTgqLazh0tJrtPWKQ6bB0PdMjYAeUamHSktl+C
	 RufE0QfT+5dEoNEN8/jnHjilj8BJ2wpRChE8YSji3oMVr2CUwrrZkEH01A8xtIZYvR
	 ge9+JrRMP+lECauraTEKj6LJOwj/c/bQ4ZITFKQG7C/b7S9qXHjGTss3OFDgBXelNr
	 qFC23DX0LFiBbtthhbnPx5tzDscic4be6kGqh8OzKrNjXsNxfC6+XXkEbx0bMHs5c+
	 0+27t2Tfz1xFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEC8C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174557699357.29001.17675026548281655275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed5be3ccaf2fa480b788b59e7824260d6d77660a5a09b903e3476982ab17bb4b
Date: Fri, 25 Apr 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745576993
