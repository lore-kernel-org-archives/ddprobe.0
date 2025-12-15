Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7BE2C21D8
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 01:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765762974; cv=none; b=GQqrWyHe6+sFybzMtmtRQLF2p6X1wruinljUVAX3Pq7JJlPi93rav0ygHSRUtKy6JD7EUvJlvwCa+YZlbDqIWshgwaDQFMqQJL2zkU5qC0iUkXhSky5kAviXv+sYAKTZVKTn4H/uRThgpizRyk7GHVfBxZq685dVoaMRyMbvhFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765762974; c=relaxed/simple;
	bh=QxRBPUx7xwtLZsh1x/AcfLV2d+EAHfuZ0xawY2OmCU4=;
	h=To:Subject:From:Message-Id:Date; b=jOrJxm7qVRCMJj/sI41tmKvnUwm5T0rJl1985jY8UuiiwY4vuqpfZ7Wd4Su7FBfK9lz8M1Kq/gEpzZKcAAFAdmyL2fsV9bO72JqHna0L78+01g9O9Dclcm8cUFopfoyBbvw74LDO3lRV9RJxOdpD/H5hn/cnMNhYdfqR/SUbvmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYdCv1of; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYdCv1of"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA61FC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 01:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765762973;
	bh=QxRBPUx7xwtLZsh1x/AcfLV2d+EAHfuZ0xawY2OmCU4=;
	h=To:Subject:From:Date:From;
	b=bYdCv1ofIkPBiKav1MQUTluunMvPgu7oxKoaN8aDN/qFTPOMEwD0aUGRFpllqONGc
	 ReJCCw7RgDfnuuS4vXxHh7v/m8242TwiL8u+BVs+Xt1W0ldGnmeotSlzYZVCnwXI8A
	 d2BwA38o4S+tCFn9NU55lE9+VC8ELULkey78xbirlBi0S8r2w11t5C5dMJIUbkKF+h
	 NpZUc3P3jkgNbV61OU33xVGcjLKhVeFDKrwoCQBcsPjLPXv14Y61soK/gVa7GJNoXY
	 T+eaLpMxqdUdcj4iL6bodKwxNJzoRULGIHAM04v44+2+sbI4p1hjPpQ9DpvZKMPL6k
	 avICKI/Tpl9BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CF1D59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 01:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176576297358.1843.17363536227464642830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 450e62a69bf2bf911c472cd8a4b3272ccfe6dc571bfcc25b1ed4fbe6c67fef3f
Date: Mon, 15 Dec 2025 01:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765762973
