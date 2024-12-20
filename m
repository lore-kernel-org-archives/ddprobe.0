Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285EA1A3BAD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734735354; cv=none; b=dDbqzEq6jv8sirTy9SudP9YQKb52nE9hWU84eLtbZcI8VsteVRD8lVXBY9mRxqGf5Nqbri2n/6OQK8toP5NTNPg8t32OwxZTBijXnOdJ5TF+maN0mp7iTvCjR8L3J6GndEKVMBZCkcrra3nykhuQ3442+rirFcajEwwq7WkUsh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734735354; c=relaxed/simple;
	bh=XirIOqtai3UxyHlpdpVWwKCmNfO7aQgjdS7gcdsakf0=;
	h=To:Subject:From:Message-Id:Date; b=ZbhewcyYcGyr40G7Kew+eEePRof5S+JTDgbHBlpae3Csk21BTkM8DX8hN1kgWJbZpS9feI8giZYQ3xacZBqGKkS831YJKQ45RlULEXvWRlK81+DI2ArPmWU1lAZ/GOkt9zuZthbJ9Nz6tjQ+4cmMMLpVSkhcEOMlRtQwluFa10o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5pcDa8k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5pcDa8k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFCFDC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734735353;
	bh=XirIOqtai3UxyHlpdpVWwKCmNfO7aQgjdS7gcdsakf0=;
	h=To:Subject:From:Date:From;
	b=L5pcDa8kUOP8hqo/GKCNPch40zwgUmnjCVhYmqdVmgaFZBYbMGAW3rvJ13IPKAgwP
	 9aLMTkSvluHMdow65jfNJlJHbEH0G3/7u3ICBke2y8o1aj1CA5KkO5IlJUAgZyPVln
	 tQjQXkqvWcLUlFPJeo8KR6hgGEZL9G4CvKDpWYtxGociGl9WHEFKD+bW6GTZOhklTm
	 loJzFiLUQ5Dj+2B7HEimbQNuIh4PsYYT77xdCAevQuRP6W2IR0MflfX4y7/PtIbaW/
	 7E4vvwdbtD0+ceELnI/CVHz9h1DKSdykxP2nOw+QJz5bGD6Oesh8clpKmoTVOjCUat
	 /K6zkqgbxmiBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC26E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173473535362.4212.15750222445814475209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfb17e0637fc4424fde6692e7f3601c1487d5efd60aa74763675be46c9aa7911
Date: Fri, 20 Dec 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734735353
