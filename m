Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 035222EAB82
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 02:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780365874; cv=none; b=QXeL2KtuMnOQ7KRiunWuPS/AmyT5xf/I4c90qyZnRxVnUauopjlFzYKcngMj3hZWrbTCANqQXPP98sAgzssQ0UzRH0YFJge5RWvq+KPZOd6UwOMXZj/+/29eRAmc8N5zRMrxTADhz2QuEAgPlU5qvaMWGXERrcsZmNuYFdZs/Vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780365874; c=relaxed/simple;
	bh=kQU7kvcrz2VH2iZ2LlFwRtDp2JURzkp/2SZfpGVNg7s=;
	h=To:Subject:From:Message-Id:Date; b=nbtb9eZe2fyCHXruHDOt3uh4vyhS5v/hEJa/v4B86li4iyoK2s4wlQ3MknpTviz0RBVSeZ0uzgS0TKXNsYJkG/X0II+XG/dES13dYtYH56O1OfR22ED+hnnSfVJmpk6/l83ZAfIV/69bBbf5jl45sPAfq7PFOFAQj9pwu9ZTKXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ajvfv2dk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ajvfv2dk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C16B7C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 02:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780365873;
	bh=kQU7kvcrz2VH2iZ2LlFwRtDp2JURzkp/2SZfpGVNg7s=;
	h=To:Subject:From:Date:From;
	b=ajvfv2dkz6gdAc09Xer7StjJirypxc46cDfY7FolItkYB9s1VR7VI61OeZHDXhqMc
	 BGyGLtB29cBqySiM/e5NXkhvv1z2DF1yvjrgtNeTqW8HCUmAMKFaLEQ3ve2Mj8GIe0
	 KMWgmeySu0R1oTRqYHx0HRVl+O1/9e/VBU/YN8EbBdFUekYCWKhiskFT/73Im11+Uy
	 AyoHlpZzQbWv7muDDeIHd5Y7DrakGUk5y0eCtAogPwaAW0BpZdPmMa+kLfp8dGa0B8
	 dWmSg/MNqWOlz/xDop7K1Casd9QQMro48xhQXjQaSLW7d3r8eeTTxWd33cXSJm/qKT
	 P8P9p3IOhB5eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B9ACD6E56
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 02:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178036587368.13468.4096081426151548523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26a7370f2f99bfcbd386008ec5ee3ca7a720d06e146acdb6fdd89456e1dfafff
Date: Tue, 02 Jun 2026 02:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780365873
