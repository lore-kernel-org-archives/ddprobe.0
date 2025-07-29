Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E15C2BD5AA
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753819796; cv=none; b=ASEQFi77jB4wLbw16Em70YXu4NwvwYiYr2Gqxh1WIj8lnfm7oqZUSJe9BMGl1f8zWQfNQvuiNTJAycO+2yvr9Ps2H1uOhZvYndbXXsIRqxjYHJVvo6SpZG0qAhH/kG9xhW1ctb08SBsO6bxY0upKL6OtP4dqqdMhiGc0Fsuim+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753819796; c=relaxed/simple;
	bh=yHQpDaTFa4EZdSqCQE3ObDlxab0TJnG5Xd0fKDzHPtQ=;
	h=To:Subject:From:Message-Id:Date; b=bRW4mttpXPjq7PmKfA3KOQmcXfgn5NVFJ6fbnqLUDbuxgrBJZTXRcGWIWYiMLTSs3+53FDV7EyekEdt83NJgJcwI/pQgDjsQ3Oew0R30DToU21YCEPAAjNYhKZ3tIeEjgGChvpNePRzFdIxJZosEp5/gFouUZlwh8SW1PNCE+LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDHlv6Rp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDHlv6Rp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12E1C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753819793;
	bh=yHQpDaTFa4EZdSqCQE3ObDlxab0TJnG5Xd0fKDzHPtQ=;
	h=To:Subject:From:Date:From;
	b=jDHlv6RpngttoBCx9vjQZ5C54RYogR+DFtMbn+gOR/lj5m6rZg+hQ1ZXPwoYujr4t
	 tUL/FFuxhTsnKYBLHPdotGoCxQ3YONridDZewwShyWAz6qRUvVaNLsDL2fVOh+Jogu
	 k3sqLA2H25V6N+fh77QgkCgj/WZlcJ6pwKz/H/i1ziaF7dxKS7Q8vhBeXiNWl+zDfy
	 Fb4zAjg1vbRSXLsJii7lo/A3oSyfLqAQUxgKc/FI9PxwoMwKX2j4zBKO60DrtooZN9
	 pnpUOS9i2Wm+JpDUH4o3gI+tzxGv/HDLf9i48CQudeA3XsoUaNWOm7i2DvLda2KLyx
	 y0HgR7JM8DSQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C18C87FCA
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175381979358.17992.274953908681386262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e5a9d0ed725a711de160ff27e9b9a05d99a432d5b5985d56fba1087e0878464
Date: Tue, 29 Jul 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753819793
