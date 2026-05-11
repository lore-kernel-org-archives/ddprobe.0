Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4EB29CE1
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 02:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778465434; cv=none; b=GhWzYE0aBhomClger2uJzIk/2i8aF4IvBgv/njqRpBiHRmMzrD+xz56h8VaotRsTUJKzj4sSjF8IcDPYoo/49HCfAz9qx6og9ZUvk4dD6gN6Q0RZ1Xq5M+owSVkNH/mEacfVifwI8o5fEvQ+pNp5H5yteB+0ndHsXMmyoi78ebU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778465434; c=relaxed/simple;
	bh=JsyixnPbX8K1tLrwIV99uWvuQsnC4dLT7d1lj8zU8G0=;
	h=To:Subject:From:Message-Id:Date; b=ke5FXMwMsr4oftoQtYnjORABiEMVAQ2iZmp05HBgE0msqQttHnmm5UuP2KQW0stgpRwB6NlwvQ1AHX1Z5eNshNUEdCs8i8NL9Hs99GemVKk/MLa8ZoWAGaJH2R+JqKUpjK733u1olQYzUr++VNym0hdEKBBhPcg8x1+AGIf9joU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/x3G7r/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/x3G7r/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A01C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778465433;
	bh=JsyixnPbX8K1tLrwIV99uWvuQsnC4dLT7d1lj8zU8G0=;
	h=To:Subject:From:Date:From;
	b=B/x3G7r/WCph8jHcvlPBbMzOwlYZBreUKnQUpIL48X7imTLo6bcVrXItcKr8vdNi3
	 sDzfdPRe2Qy3ehr54QnIGziflwXo363FHU/H5QZhzCp2LpB/9luRl1AlJO8i45m7/7
	 4t4hEyQtYJcPzoU/u+S4x2bynts6LT4QfLC2Xjt/OTuLoaeDwHoaL2VvqxQD27Mln9
	 IdRlEzl1dBTfax47/dTMlpudY/UcwrE0zYhxVX/otxE/beeY3iL73WerlAOoiBJAce
	 Tv1swGYbzJ2lY8DSvx04UmBi4wgR10Bw4QaAc3cicLLm95zPW0QqbkIJlIYqIva8rm
	 zfo0joZNEx46A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD34ACD37B2
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177846543368.13047.17518078054270267356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d39c9ec6fd52b9b345e1a19f382c62e1ab8b66d600f4f3180bb33178428b487c
Date: Mon, 11 May 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778465433
