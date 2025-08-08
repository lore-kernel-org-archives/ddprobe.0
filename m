Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9711361
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754632194; cv=none; b=FJQoTbFhHH1j9m5RkeyV8vMxhL+2BtL3SsYtlAD3et6wEDHO1DJ92+vKngEFLFg8p0KSVL0oj24zHEUWArDtYWN0RkvAbD8R2RjCT7iWvc3DRDpQ5SJuN8H4fS3zYXmltcuKHn9n19FS+Vrl5QnodJ/0KiNTJ+94nqmjNhfiwmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754632194; c=relaxed/simple;
	bh=SMv9VtxmTM5LqddcNhYdXihtskPyAegMi6mHSv0t8kc=;
	h=To:Subject:From:Message-Id:Date; b=MjakVYZNeM5OA4N47r8qx2kNmkwOzylGl1fmmXGARXXw6b+lQDMxureYIPh9hSyjt1TTcKS/wz6Vj14SCsQxWuGHX44SmDzip3oE1rp6LEGUcz4k7BRmZjsbsh8N3ik0siukfkaoUHP5EQmka/s1Z0EaoRl105Oe4kFoayDaPJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HPzJB2SQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPzJB2SQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF31C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754632193;
	bh=SMv9VtxmTM5LqddcNhYdXihtskPyAegMi6mHSv0t8kc=;
	h=To:Subject:From:Date:From;
	b=HPzJB2SQ7g8OWOwVYGM1Y6wgwmLy9lRdS4MpGfy7IuQ7n2tEw2CgCfIVD6pAjKkfX
	 StJq9KEyFCT3M4VKXONtl0LbLTzeHts+2QcHile9ef9Y0oohWuzfIegmjx2LDAjBB0
	 01XvadmZvPxGesrgcZHm2kEBjL6kjlTclLeqaKbvIpPa2lHymHWgf7k4v+cY7bgBy0
	 KbFoYB0WQdoJOidIxNyFcJTX0Yd63zL2cWGWSoYrcM8lDQJUbWSOjAtHstx9UUNHF2
	 rHMk12TXg4TSjDnnbntnNrGDA5SAYeAjK2ZQ5C/M7EJ2givthrw7wxy+5dw9oNyCCw
	 SFJ8yaHDEapgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9057AC87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175463219357.21436.7388972962591162204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fedf7572ad20c1e8deba5bfc9d2fa71085264d9b41285740b10b92d67df2b40a
Date: Fri, 08 Aug 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754632193
