Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53EBEEED6
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 08:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714552943; cv=none; b=f9p3HWHMsfW8WMZdtHlv57bmuVsqFVWgBtqYPT4JXMzDus0ec48NSBayLmBKnJkDbOANVR4c4mjuEJ/hd7kk/BH2j9QuMCVrxu2zy3dlTqx0IjNrfVurhJ9xM356DWxV3dAYMM2GYDa5QEca/bS3qBjKg7AmtJLbzgV7jIC4lEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714552943; c=relaxed/simple;
	bh=SfC9VhQt0R2SFvVaRqPghT1at+jmX9kDc7r3toFQJ2U=;
	h=To:Subject:From:Message-Id:Date; b=pqxtkIJeugZnzVzvLvc+75uaNiBFRkOx5jsi3iPFI1YDuDcyg1z0InRL7pJ8C53zMsOy5qTfhCpgLxLwnKyLgimWhRZVuSC4dMvUY/6mr0rMCH2FuFf7BkHROMLovwnO1IZvy8HQ5pwGpjQ0Q99NkNRbS0VJ4xbqw9Ht/MOpAzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=neI2JV+j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="neI2JV+j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36B7C113CC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 08:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714552942;
	bh=SfC9VhQt0R2SFvVaRqPghT1at+jmX9kDc7r3toFQJ2U=;
	h=To:Subject:From:Date:From;
	b=neI2JV+jnEuio0LBEb9xUEJDYnTFWDf7WUtmrI0JQG8eRqftrEOF+1C22d+TEGKMx
	 2Ns4fiNWybAEdvOHmZcXAb1tMMeOrAUvTHwLuxxBLGqfRcfUS7vgUWl+gn8IlV7lDu
	 9wG6uDtbToYZmifrvQ5LO8YTvlplYTi+9laZT1/6AGbNj+Uf/nwdIImgvt6M9VmHKa
	 NI3PMbb+dulpQgw6DYrzRzKzuLzZgmjgHKKBlZ9jet761M8N609WIBqkAWbPQNTNYY
	 SgpngpCGJsxnKBwS8TuF2j72mR1spqMqq2+JRvnn9Kv34c+1NFO6aMYkZ6m+QGqC+a
	 owdNUdSAD2Cog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED8BC4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 08:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171455294277.15211.1950753181995171818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fba2779399c177e09a3304db0eeecd0293e71c4b60e462fa3c470e2ba83fc30b
Date: Wed, 01 May 2024 08:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714552942
