Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3131F5847
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753523994; cv=none; b=iXPeBy8mSrFTPqL0GcaFc8JYzWkVXSs7Jxlo7xR5tCRLgBKwZA74SNlSU3Eb3k0UtKOW5pT6+Gwa4R4iWZlYwvDJpAfp8eygfFJMXZYL855d7yAsGvVxu8DvitTNQA9vrgRdmdYXWfc3PP/ZVdD4JxOSgwuCS6KLDRfLQd5G1Oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753523994; c=relaxed/simple;
	bh=xX25xPUPvJfqAhCpjrqVthY+YxwUx70AYSiUe7rrGr0=;
	h=To:Subject:From:Message-Id:Date; b=EGIHUfkxQR0NpBYjfsZNbY37ADdY1/tAcpIu0DNKVDfMcOZl/khpxRg0rk364YfGKNdBuSdtw42vCulptOJOJDlEHtGgoxz/lVZx8A2jJjL7NuaVbRLOTdp5kO+9Gfr1jLrfUwAALdRCjXL+fssroV7uGCPh9HNyCUQjlhK0zI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JuJdxBsP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JuJdxBsP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7567C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753523993;
	bh=xX25xPUPvJfqAhCpjrqVthY+YxwUx70AYSiUe7rrGr0=;
	h=To:Subject:From:Date:From;
	b=JuJdxBsPdJ4ZKAQ5eBnhtm3Z5kb1iwTSB3Zg2J+FEQhPugE52R+xzdkE771Vs7O9q
	 Xvw0ef9Z1b+F18+Pw0gXOd1+nGt72OlFQ0VsZSqJZC8dvxGFZ0YBMefUYaKhUIbBvX
	 NYgQDK0MusxXnQrRks37TbYEz5DNfxs9c3nngmq0MtKpVhosbLSKXWWu7gHSWb6gLa
	 h2Z5hIp3/IRl6NpnCu6ywvXuKp63qtkBWo5ySqEiV/MwgFIX2r7s2rxOpRiTUBLzuk
	 bhqG9gXoLTaGT8VwY+OJZsn4gAHoQrUKfHfXDGHaZLMomLAsED7+qiCrUti79lBCuu
	 OGlSHeqqSko+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C38C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175352399357.26307.1787960409367121903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ead7cf5f3e8a1f4094ae1f4c4aa2cb96f8c1cd8c983332bcfcd225ec78b39ec
Date: Sat, 26 Jul 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753523993
