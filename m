Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4086533F584
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 18:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782153994; cv=none; b=k70Cw8dW9HhUTg5y0VRMH6YNI51+YjsjrycWonjpVB2AhPxkf3yEFeYyD3r7UAB9A3JIzQ3gXmyV4GJvGvPjd2rURdkT7FutNaijpWuJ4QFmVblWwfN94ZGS3RU00lqYy7/Io9NPW5Cn3gEWWAsS+02mUOEQEW47oNfgFKjGZLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782153994; c=relaxed/simple;
	bh=dR7fMSX2zY4dH2BuSJ5bOvQ8W/mtRKaRaWnr9We3Gyg=;
	h=To:Subject:From:Message-Id:Date; b=k8OmWudc+R60wvoAuzh+WV6wVFj6FlMAjcIuRrDhZGjmhyevPDzq5DZN8GiqBDwm1R4S/clWec3MFhHp/yZ6kvX7p9s4YwUECKNaXLdFx2BFHKiBAEyuHFN0+BKkgX5XCfsIYMy2b3DqfawjNnbyYBYxBHa3CGmeiFEStMUblsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5TLJ3Iu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5TLJ3Iu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8899C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 18:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782153993;
	bh=dR7fMSX2zY4dH2BuSJ5bOvQ8W/mtRKaRaWnr9We3Gyg=;
	h=To:Subject:From:Date:From;
	b=u5TLJ3IuhgoyxNVRAp5G/IxLo/ZnGr8oCZUDrhGnjLwtDQdBvzXYsoIzc8NCKtweH
	 mvkXNqVBcCz9L/vEHeMz1M8mb/k7oVUzoiVCKOLtPin/Yhvcw6bzCc2c/fqE/znI3V
	 Osm7MVBYls/u+FsRdX0xGi/goosEcG1nM3NYm97Cb00q/EHxRyxLNJfZGLOuMjpXyI
	 TFNL6uRmjQiqb2K/ugIN3pQ7GUslnztGZ9nUFpUaAgkP1qvjOO7bdW9iitzXkQFzLt
	 czZlao0Zkca6J8ngq7xKa03WpwwLalCtkvL8rFKx8bnAI4Hww1z0Uv2SoyQQAGVr5B
	 5SWFvkL49HWnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF73CD98F2
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 18:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178215399369.16286.14250385972119689155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a7b54607320d3b2a37f3547f34ce67553616482546c0b2238ca084a73d9f30d
Date: Mon, 22 Jun 2026 18:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782153993
