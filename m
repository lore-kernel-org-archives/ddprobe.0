Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110CF37EFEE
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 03:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776655654; cv=none; b=YS6GUhPx+C0gmCYPv6deGJhTNQU3dXJBbL7f+8i6gygIKTy4Q38U7/S+iQI7Cjj0JgP2fbEnQL2gZPmKd48s263pgjSXMq65w00s2R00DFKUFoSjfr3mKiuy/AXiohRKgNuCF8aiGK1ZH0BkJmkpjjIw3xysoF7wKgIEKfPajKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776655654; c=relaxed/simple;
	bh=u41YaYWlL2mxtgtucvYl4ICMtgGuVSMS8xOjxBDHbe0=;
	h=To:Subject:From:Message-Id:Date; b=W2ukNhUxxXd4kTuECocPnn3EVNKlT2fUb67YGpp0kweKBaEVrT4BlvXewPiw55BoWkJvxENFZMv3dkBifDlw4XwyM6JKuPPqvpBABAbN/MSazECwLfRvZVp+eWamYtsfT+oY2rRasvd4j6+nPNqItlow45YIQtDwBAOvE6My0y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WOFGgco7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WOFGgco7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB5FFC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 03:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776655653;
	bh=u41YaYWlL2mxtgtucvYl4ICMtgGuVSMS8xOjxBDHbe0=;
	h=To:Subject:From:Date:From;
	b=WOFGgco7ESoLZ9jRHxVhVAfvT1Ww6YC7WZo2yHC5eVNSKex5LQXdtfXhKS1exDoa4
	 LN/i+cTXQLN1/PKXSSwSgjbhHN57n+G1yqeyjqdoa8M1OiIvqR3tud9jd7eqfio+bs
	 tUzrOcsqXOpgX4PKeKYawU+dmajmRUoP30+cOrZr6YpXmJ1lvzrEHjSkw9A+Gb88Z6
	 h5Cd1o5HHWy9UW5R2HYXqmIeb/J3PtjIA8N7cQDpiGnvCWH7bUJlXuVvXA5qPKIOAZ
	 Py5m/5iCPVXVXcD/B0ceS0BBrlzH5oxmAUxbh7iDQk3Zaj28KhttgnNaE/hczTZBpA
	 ElZlF1CJ3djRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BCBEA7185
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 03:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177665565368.18555.11068900804324331524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0cfb3a2e8c968cfd6347392460c5a65927e1ea7de2dbb183759c332900590b3
Date: Mon, 20 Apr 2026 03:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776655653
