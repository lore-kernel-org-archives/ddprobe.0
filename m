Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E922609C5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 19:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764791574; cv=none; b=Ym7f8O8HI3skWUtGcHTcdX7+PeY0TUPewN1r7RGBepetlKmyd92h5fYGpEzP3QBg7ZzbIR3o0Eta58TYGA1XTpdh6hB5JHSrsg1N668s1YwWryCNdudvk8WbhIymoF+/roD9MHfktdyWiW/0xzKZd9u7xE6c4wNQTAHyaNWkRnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764791574; c=relaxed/simple;
	bh=jmefet8BFpo+efSAX9h8uIyj7AcP7xu/Nx2ro777zo4=;
	h=To:Subject:From:Message-Id:Date; b=mn5lP78bibiwtFEr5zildyJZbf7+o2EPY6RHaA4s/c0e7PesasLikDUjAFJGSMJ9a6pgpr2kXOjQpykscHA4pLfga1++VMqJGe0k2aV+d03A+1Wp1rDrOHwVjk37RiFB60jTyh2ixu5Lc+3OMLSG/wsEysQQvK8mZUrh3w+wWR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+DDiAWn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+DDiAWn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5496C113D0
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 19:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764791573;
	bh=jmefet8BFpo+efSAX9h8uIyj7AcP7xu/Nx2ro777zo4=;
	h=To:Subject:From:Date:From;
	b=h+DDiAWnoqm3Mpr/bm6/1t3Jkb782lK8LJeaaJRH6v7JAjtxS/VdEtdpNPjiUZvKN
	 235vP8uHRqVz0lETUsSUQh7449vURIFHzxjbwGYh43dFi3yAIZ0zlKugFPun6S1rBd
	 RhOzQ8sNIB8CcLaQmOEnZLhLPSreakyU6Ojtk4IVpoIQ8EEPq+Bo0qFT15cYNRdMUT
	 aKpgtZ54V2Ww8qOfiZAf7y691t//ScEh+iW3rrLNzAHCJMfJWxNTgeUXaGa5DcE+sj
	 Y3nXKkJXKjK9EKkVdEf4rD3ptskRrRCFvhgXtlX46ZCV1yeM9igWhHQtaXcZGwZjRs
	 9qVnn2sr0qWZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DC7D1BDD4
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 19:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176479157358.5434.18441184948462285969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52c10561824f5ce694097aa75ae245be165ab1532b7d8b4492c6a102237ff67e
Date: Wed, 03 Dec 2025 19:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764791573
