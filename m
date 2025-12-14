Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A8C19F11B
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 05:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765690374; cv=none; b=tm8SspWIaym774rfEu8sLu4i7XxhBcgBJhtsfGjxGjMPUJDfIM+6lA8jYLyQxIVtX+nIuGs03r5WQLXv6UV2aWscZqKOXLo5ZU80VBhlZH0I1DjnkSiAbqJ2vWLiAYSmNX5L1BemFAWFEyy/RuphNmXD/KfAzIqehkcfgZZ0o7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765690374; c=relaxed/simple;
	bh=pRw9wWKElEGS3gMhDNmzTbsGzA9CZqtynHY4pV7kHoA=;
	h=To:Subject:From:Message-Id:Date; b=aPsIjf8qU0CiY5hr3TLeQpjTu0HHLgHuC+8eqQdBna+ZMHtwdIuTNAy45r6ifn4pJxhGqsyNW57YIvehErkMFH8rrBaW2BDwlyhwKqTyHhWzKRJuqhXI7hpzIj82zA7SMgEWYHmk4jTW/+xjue6x7wq1DL1EAzfl5TyW0KoiSBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8vhGFfs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8vhGFfs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9AFC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 05:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765690373;
	bh=pRw9wWKElEGS3gMhDNmzTbsGzA9CZqtynHY4pV7kHoA=;
	h=To:Subject:From:Date:From;
	b=d8vhGFfsCFj4yDQcyV0OKVylh+9ak5LGg3K1VQp5nINXHnTHR7diNdCzjlqFBJI+k
	 LN2hwHPbTgyMUTwR7UjL7T65kdAxq8eP/nuJf1k0JtmNY57aupJx6VPE2fZCd3FH59
	 jqLATlAJQEgch6jbViIqFMOnodLt5urz8lexVHJlOZCWKF9WuHcua/u7BX9EQMp2U/
	 JlF85c4FopJAVjrmEQ24tNJwD72ZSW8jmWN9o0gJ521EGMK8Je1tRLpUpJDDbB5w6+
	 FQS0SVbbh9hkMRuTspJO/VhpOWsgADrSGZAtlFYRwyvkMh+tXecjEHmzWgt+OBXKtR
	 S7hg/dOL/yQWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999DFCFD314
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 05:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176569037358.6342.13353960073269566322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f737383e9bff857d5368c039bdfbc8e7162721d7a27c0c9ebc8371936be89ab
Date: Sun, 14 Dec 2025 05:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765690373
