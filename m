Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E413594B
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754851794; cv=none; b=RpdmlWKPzwSN47V4coo44u6ua7XL+npkXTPSNjRYrNIoWwoLND+a2brX0KICvX+jAik3gSwseMOEaK7R9PIgjP2VlEhRFfG5Cy4aKZ8KiBJyuBDKVJi0/Y5CMwXbOF29jQ8ngQIGqmb2IIOZCmwcwGPHO6W+lvU0vIGwXdu9r1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754851794; c=relaxed/simple;
	bh=20Pu26GVpQbVDl+f5vRg7U9STvAidiUQmb/qCGuDtlo=;
	h=To:Subject:From:Message-Id:Date; b=eak2xfL98l8C20gSN92g/oglmjGp55kTucttu4dw/eAHX4Ad56g2dcX2ZPMh09/P5AIjvsx4gISQggn3YqMdzFzftI8nxpYGAsxu/PZ9j3RRT6NXQRSzscrx1UcG+fFfqESzwsowrmYEF12Slng13C6pNGhfD54RrUraZfXMTD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgUHH0eK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgUHH0eK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3142C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754851793;
	bh=20Pu26GVpQbVDl+f5vRg7U9STvAidiUQmb/qCGuDtlo=;
	h=To:Subject:From:Date:From;
	b=JgUHH0eK0bXFhGGWZ2d9A95AxpWiqjrbK/sSmRD1EIjiDJHqBhMart/X5A8noo1wY
	 wAhkr4Th8vnoX9Knrdj0Jw/380fDX+3h0OmC4Wm8Ef23l7wg7wJ3ujowZ57E4f6EZ9
	 SHYmAp8AR6VYMdxogeF0kfX5uKoi9ksu8Mawli6qdC8A6ohQUIgttqDe4FjKGtvfrA
	 gQARFSZh0ul0/pnjqhHr2Zp/FJekpQPua43aNrYSm0E9w0/F7QjFuaWQ9WVEH+Ad6r
	 JaNySY3+EZOHh6BUdoYaw4iUCNjb4Gr0qin32MEOSKl4Rtobc/7m5XEdWcUnOnwpOY
	 PhTkKZ+eTRw7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9151DC87FDA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175485179357.5208.11991071111743115939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a9aefd776d554f7425e4d85e9a6b4353280d50f6cd4957ac117ddfb81ab309d
Date: Sun, 10 Aug 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754851793
