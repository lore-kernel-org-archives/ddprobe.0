Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2778372622
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770600234; cv=none; b=FHRaprilrcaFefBY8o7ieacSir4fxtzVm8ZkdAUs7KMpY/VqiAezEY+LexM7J8uTdheFyyOfB/5Ey8DcG19Pm8vVfEEKbdbA/DXmccF0OUSUjZu4OLiIamg1no6XwSJ725dIlGPX8FXS5sU42p89wlD8zSSKiDVmk9RpjS0drm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770600234; c=relaxed/simple;
	bh=58Qr53gRoY1wzG7/RKo/tFTNQLYWgfGUPOJo3ymiDBo=;
	h=To:Subject:From:Message-Id:Date; b=taIk+WwbpUvaYHXi+jEGi/WfX9vQ9lahLoWejkZ9JWaEAyiVYFO8Y0nA746GV7NqYASQTJ4c7pikIj8KPy7hwCYbZ/cHsG/upNefWHdAr1DEmtaH0PqNmxPESD8Z/1ifNbAY7uxs3r8kMb7Q9YIjOoXqTahD0F4BOpGQM1VNrjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dCDrmU64; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dCDrmU64"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF654C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770600233;
	bh=58Qr53gRoY1wzG7/RKo/tFTNQLYWgfGUPOJo3ymiDBo=;
	h=To:Subject:From:Date:From;
	b=dCDrmU64l7v0HlIZoYEnaI6uM3KN6LQf078eLLwIuwgRbTUGcqcCYPay8Fz4GuxOp
	 ivIeRGzgui3rZQz37vGX6T51yB2B0CeeMUS5BPdqVEQLAgj1397yyUX504CxIdaVSn
	 SVoyqHLUQjGPgPDaE7cHX/96EdMSiiK6EM4YVairB5MTWW7/ZFSOTaB5CnPv4hKv+l
	 YNSYga7d7UcmOsJFBa0R2ReAWNZ2fJQpagcOaG0cpFFSm+vF4XkiYaLfXgVUDILk+K
	 lYMbiiVH+kFqzcsC43urthmCQfGrUBYXlUGlhLN3mKx+e4tsRQq5LAU8XhXXAGyP2p
	 BnuesUej1LTbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C89EF06EE
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177060023370.18722.6362384961498146916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 208aaeb152a3ad39ffd64fd62d241d7406dfcedae4dfd7895dbcc2bfc712e794
Date: Mon, 09 Feb 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770600233
