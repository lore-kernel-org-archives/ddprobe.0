Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A04416F288
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 00:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763340114; cv=none; b=nDjq2vQWZ/AOgsiT6MfT5gkishnlEirSOCuW0bRj+N98r7qd6exBprtr9fXIoCviufY8nXeF6zy/2NeGiDNTwiaOLWaL/JlYCe1xw32ICfV51L6+iAO9/J1GQrSpaschwZWRq1SWBmORfJCzWO/CHQj3NIdRC2DcctBu09kVcnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763340114; c=relaxed/simple;
	bh=FFWMl08qvqrKqRL5/NoBRg3jfMGkV96yEt/0wgQKSi0=;
	h=To:Subject:From:Message-Id:Date; b=bDFFp7mtc1XEyjNwTF2R79EQIUo6XjwVaYQQAYTGwnL10ye8wr32nw40YeWL4/PfhiS04oUCTS7RdGR5l/V2bSVWiV+Wed+qqdLxKGgmlyH8kcCXax4o013Nb2QXhc3I5w92w6FjquRT5pYDGJ/EBDo/zgqZ7M6P5yPAfVXvZTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SMJl90iP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SMJl90iP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB23C116D0
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 00:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763340113;
	bh=FFWMl08qvqrKqRL5/NoBRg3jfMGkV96yEt/0wgQKSi0=;
	h=To:Subject:From:Date:From;
	b=SMJl90iP+R93YtNgg5bbzs6/PXI9zFyOiAeo7ityg9rQZtXk7vg5FsLfFlrqfQph8
	 OTvwGSJtCeGKXB/pjx9/ELrel4128gqSo+8iXtx2g0Qsa7rGFuK9kZx4JAn9uRrDWx
	 DJRnFkroDoN6lUiopy5YRbTzoDHrfWM1TEDnJ3qcAd1NyXuScdkgD+XOX4CtqNzgWl
	 eIzDd2ob5a8bCuLOl8hr+aBxvTMRK9w7qwwpAgWU3XapzvxUOtiwqKHClwKqvQbMI5
	 16dtsijNVHrytEJiasgU9/WtQSLpSR3PG116RKoVa5xGI/SCf4mIVPpOZyNvbPXQ+/
	 lmasbJJaizXTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA577CCD19A
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 00:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176334011361.14677.3013913678560533988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5433fe1e8eec8c6ef1ccc6e9100dbb9e0881bea55ea457096589376dc54d6304
Date: Mon, 17 Nov 2025 00:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763340113
