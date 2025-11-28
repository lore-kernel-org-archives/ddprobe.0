Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D72B285C96
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 22:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764370374; cv=none; b=og9b09bjYyXBxlrWV+2BVAPewyZnp8R+0aWz3ql8wfNsz9qwbCNbjXn7FLLtCjoGpIJhd9+GFiyX3470XDY+Lqup/FFernJkHwIOcB+aJ6pjyp6/Px+J1CgV5JDIyBBRWDpIO+V9bu0u1EkiCInNnJP7L9fb85KfUchnw0uWw/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764370374; c=relaxed/simple;
	bh=lh+DuXRQYigkOPb/+8pxNAsOQBOADDAecgkJKA2OrJg=;
	h=To:Subject:From:Message-Id:Date; b=fxOIh6+yZk7xJA3dqiIUCsN9c8eJ5Mhn7ioxrrxsrDy1btcW0+ACctw5EJgKeCvYh0vX6f80p+k3mdXIrDgZn39s86+rFUijddmK0Q6KmRn0UkuoqhttqzIJGq9fHq0v67BKb2Cm7/wOkgc9/1DOoOuHvmC9HSVXT2LoQL1h36k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pPTmiDDQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pPTmiDDQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC10CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 22:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764370373;
	bh=lh+DuXRQYigkOPb/+8pxNAsOQBOADDAecgkJKA2OrJg=;
	h=To:Subject:From:Date:From;
	b=pPTmiDDQHSIhOyxidhovckHlWzwgsWjYhz9xIXLHco22IpeSuKy1axTrzMFAVYF+F
	 5UPW8hZHeBQnPWmSlzqWSkW/ECsGY7oyNaX6bTbi9WwJYCHE2SvmBE5Sz4FOF45x9J
	 /jyegiD06U+J8FLKL4szkDAZbHCK7oQHUYEKbVdmO9hL9hmUD7cugROmR5Nj47jEbz
	 EgKO8vxkvIxJKQXArQls+01IRefkXdtptka/o1m+wFzDQacIBjCgXKeVsBhxYsSp7P
	 elDz4ICwbfGGQ9yOBmgW4YMJZ62YtLAUUsPRJtFzG+tZ4XUY5gRtaw6mNCMY6CzHs3
	 6K5KSypV3g8RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98724D116E2
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 22:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176437037359.11763.17833370016222430789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36b3d9b6063e48b0d2596391e5b1b783f48e8df067f926a8a6e72457c0201c17
Date: Fri, 28 Nov 2025 22:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764370373
