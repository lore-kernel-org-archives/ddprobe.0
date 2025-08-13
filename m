Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149F921255F
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755080994; cv=none; b=e7aJWPDT9UigtCinsSRNhGSmY7cBvuBpBoKIYR4Mti91ye/goST8XgjrhDdyPLn3eMbHQkgj2vxOqhLzfzHk5u0uz5ky3k8BLH9vmGMwSSSx6hSbny1ocnm5G3mKOzdNHPBqK6yc5rkkK1G0Znnydih6A65bxbPGwJZv2h9mcsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755080994; c=relaxed/simple;
	bh=BStauj46ZWKHzPaTw6H/qkBUcJcG0BZFzAjmIdBksz8=;
	h=To:Subject:From:Message-Id:Date; b=HxVTWjoNBw7+NzCBfoOvXYSJwMka7ItFkJNJwj74uu7ss0oadP6YE179E3PpUu2MnG68ovuWlGUnlamDITqJ9LrZnsZbcj/BaKTK3M5Hd2XOHPMX9jq+/DW14BVyVZYFKMnkss3T5LJ2HuVTsZEO9YO1YzrfX+y2yVGgq1ioVlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/i0lcNQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/i0lcNQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F24AC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755080993;
	bh=BStauj46ZWKHzPaTw6H/qkBUcJcG0BZFzAjmIdBksz8=;
	h=To:Subject:From:Date:From;
	b=B/i0lcNQQ4zcK+E06lrCv7NG34wsArmbKvNglpN6Ro8irCFbol1i8mmEs8creg/EF
	 5qOX1Dk1McucRS03PFW7f/+v2PQZw7WcJuaorkY6aBCWXddIvgSVpn3aBFbtogxP1c
	 y4zcMvzj68l3BAhrEJIYSeBLX9OoVRDFuYZ9ehOtJCyTZOBaUYZ1tL5MQsKI1OBizj
	 bn2wlSA/6yKXqsNaAUhQMPXqW+KZWqC9ncuu27x8X9Of5RihsmK6UuFCVi6CGJ/puQ
	 M/ZtaCoGJzpWG+Gp0mAAhm/6GOCCStjOZyFPT7hgCDjnZI6RqIq363j+/FM4AXzmMu
	 A4zZeGtEIWmMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC34CA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175508099357.31465.5665026721900186801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ed500ad432ebef11b8aec2b12ada59d2995e16bce95ee486a93d3f0319e820d
Date: Wed, 13 Aug 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755080993
