Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342A7248868
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749024594; cv=none; b=MA28D8qgmjOsiKztuWMH8SiBCrltkNv1lV7ArIhlbbDfNfzUOBEefs8GysdReSJLqIcAIoqgIUGy6OZIllzL0Z8WGLnEls4BXLYwx+x4jGNxAHMucMJJzSG95W4Lnh5wt7d9FiXClKREyD8OkpNa18GcByyJdsD63MVdVH7kHlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749024594; c=relaxed/simple;
	bh=iayU6YX7e+HOHROGKvdlldwCt0OGSJB0CU59mdnhVZU=;
	h=To:Subject:From:Message-Id:Date; b=fXPsTnXD4Ex6+aoMugYauuwcoGJVDjh/7sG6PmhdLCxGLFW0UuTWt1/0u84c63wVZ03lN8mpd+hTU6wjgUaB77Xs2/zBtFb08FsTiFsR4KHSCtjNgEpr4huv54c8NhkWmUW4iFWD1Iqo5gfYFeRfe33PtNAWBGeGby6r+8m/BiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=th2baLY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="th2baLY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EDCC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749024593;
	bh=iayU6YX7e+HOHROGKvdlldwCt0OGSJB0CU59mdnhVZU=;
	h=To:Subject:From:Date:From;
	b=th2baLY8Eg1MDM40ZvVtwf0JC3jtEh7VCcY+runhUO4XdP1O5kslFp9jKFH+waTuJ
	 5+pgoU3Cyr9h+IJS9eeE2UdAGiZnmcw4f/VOwaPK4GpvwsQ+DFHt3TtkvtOEMHYQWc
	 vPmeqyriXJUzo2Nr787q2GSbGWMILC+BoczT8afyMyyOcQnEiQ24HnYHvHDDf2aNUB
	 MUr03XmvRiH8bunrW+3F9CG1OpdZ0lvyWjfdI7snzCs3UQFmZYP6utDr5UQLdCj74v
	 7TawRJF33MlK6V2xZxsZ9o+eRV5ejBnPAmazWSgsKu7e5YN0QWaAr1+HV4iey4wq9q
	 X953/kC8V4RMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C05C5B552
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174902459359.23374.3565365938864609060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c9c6a3d7fc43072e14c320d92e7ad9d1abd129e0184f9bd8488abf12fb6bab2
Date: Wed, 04 Jun 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749024593
