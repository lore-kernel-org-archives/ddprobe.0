Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE751E480
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758622796; cv=none; b=kEz9kmfJ+azzdNcp8S9P7AU0RmgBUbjKpAl2H+dF6FRfmNJqOCgExw1jaAptDAIqa9y+WgGpmWZZycBwsVseqiot0WGvGbAhkfspNnDosvpSLQEXV2Smncg5KFH/bqvYncm2UujGoeZsxKDUfK8wLWFs4GPt/nGcSoRv/u3m/K0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758622796; c=relaxed/simple;
	bh=XYYqV/jpn3gk0hG6JNigGniE+g414eRg0xpUCnwQlVM=;
	h=To:Subject:From:Message-Id:Date; b=OcDktgn0PjBr2tSsLkGeeFn35+K6/IzlZaxkszthUuylF0vrQtfWzMknaj+cZrFmbXHIeuOIhBZwKSK4vcnVOBtImHUkwbUpVMI4urnD0YUvGJ8mNTH7bk1OVMss9/vkT7Y4iR8eKDqBeflQgQDI8N1zocbAyAMsaHkJMqaIOpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sndgnZ3u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sndgnZ3u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3969C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758622793;
	bh=XYYqV/jpn3gk0hG6JNigGniE+g414eRg0xpUCnwQlVM=;
	h=To:Subject:From:Date:From;
	b=sndgnZ3uUXUOttKACgJF8uRtjm97QNQ65ve0x45jI0WiqwbEibq/RSURRURN2viU/
	 q/14+ix4ZuTlTLI5jOzRCz4943vPMRVW8YGpTXO2lgpmtj+Rhc4CLe1JEDtJQKgtop
	 42vL07qsQM+A7r+zCFiwGhnCmq6pYXpTACcJGh5S1VNoaFYh4ReK22Ij/HuCd6X3oq
	 bgk5zLI1IzSa0Zqt7Xw2zKEBsMo0aWH4RTDmLH5K8spwLCh3L8e6p6YmxiUNyViczh
	 3Zy/kED2mnX/oU9rZ+mJBZlEBJiKmX5SHFOAhuEhz9dlg/EhJsUN19mgRl/RArVxcf
	 68Qr1ssBS1IsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90830CAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175862279358.9142.17900918799661725169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12842564e970c2440386b321533e49a17d65c7ea5be132ee99492d6f80c040ae
Date: Tue, 23 Sep 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758622793
