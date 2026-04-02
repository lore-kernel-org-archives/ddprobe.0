Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4A527FB35
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 05:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775106334; cv=none; b=AIMPG6M9q+JjGWeiaYcqKCXnfPhxWmqsblKxA6Rf8WWpIBKjtyLP31GITWvLCn2YIjHymI6qEw/d+Um+haSfytE3xfDl6Xeqd5o4G4S6O+jkSSiTrbc6TqlZ8HuD9AJfour4ILLwo4OzMC/1daozUIlPBMILE16HRWaumJwwptM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775106334; c=relaxed/simple;
	bh=QPDdggkkgoOzgHwsNo7K/+E1DeZ5oKpUXV97VCD6a0Q=;
	h=To:Subject:From:Message-Id:Date; b=PKgeQ4/08lfnMaF0FzU5r3tEz3Rl/kDCKCTvnckin1J/tnhFvrUdS4G301E/1/pXPNtdkXkec27rTTuv0aCbmjLy9gmr9WwYJiVQZSjCj8lmXTR97aYObHel62O0U7VWx7hI9iifYdvpkgN66QWmZQJjRcWU0H7Hm20xfQL0nJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHo8VhZZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHo8VhZZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE636C19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 05:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775106333;
	bh=QPDdggkkgoOzgHwsNo7K/+E1DeZ5oKpUXV97VCD6a0Q=;
	h=To:Subject:From:Date:From;
	b=LHo8VhZZbGFi9m4JxMGsqceJipfo7ElUI6XxQ8b+J2NW7Yx2oi+hTtn7YMIgeSRw1
	 hYXVDfL1Qeqtx5ZTfmozZPyrpfUTn/Cqmlibt32/hkLtjs7YeIcx3CJF62sb7X3ECV
	 J3yTDqQPJi2BXtPJRkVdHjmrsEGgsaBwi+EDP9acIh5TcfD/MBMK1p9cKLL2T25qhz
	 I6twl+12f6vIAGfP+2vQH8v0lTtHhSInIaPU5M+uXg9xR+1QykLzkEhN7BqUpvyKKl
	 kb6EILwSXZAqSOoQgXpcg5L0cps7NkNw69W4ielu+RC2MAcwZtQij3LJPOOGtuGZ/h
	 nfhHLVq5YQBgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B3FCC6B00
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 05:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177510633371.909.624384666024179846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15439be0cbd3dde1c75ecc2f34b3cca24e1af60fb69b13646897fc16e5f045d8
Date: Thu, 02 Apr 2026 05:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775106333
