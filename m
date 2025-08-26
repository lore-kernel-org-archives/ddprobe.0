Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179EC2C0F9C
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756217394; cv=none; b=qBqX4UXE0Kw+17hac6x3ky4ZeV5VKIs8CPlYjoco9PMSmW/8vNtTyBQgBcRa4Q4JQutAD5f1BMdXwpjIPDyvD6/PJHW1VzlZOiAei+Gpmu/5BlQPry0V3c0LTTKN7dle3PE4ca6p8IZDNEGYmQflV22f/ztxP25ZrnrRxU18HWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756217394; c=relaxed/simple;
	bh=eoqDnj0Ah9AqiWjxYAr3NSCx0qrsupDnUX21T8JJc4I=;
	h=To:Subject:From:Message-Id:Date; b=bCdCLvvtuERn3PnKIvKZX92dTzwpTkz7wv8Z/NaW924YUStaTNo/9HeBLulr/VUg3ErU2vAg2octzsUTPRVGs8qYNjB4tLusASs+cDjhWCme29GBSoF056qQdp/p0VEmH+kvzFavKER6PPlhzvCbgPsW5f73iKTMsaUhHLmIKe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8k80Ms0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8k80Ms0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7513C116B1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756217393;
	bh=eoqDnj0Ah9AqiWjxYAr3NSCx0qrsupDnUX21T8JJc4I=;
	h=To:Subject:From:Date:From;
	b=f8k80Ms0/0NTl3/EgXKOlQa7BLdNpWU+Zamqmyt/6vjkuXr1CaBGY06kiQJba4NR6
	 BsgpKyulctu6JyUWte00+1nyIaZEmHw3gP0GdYa4qJ9FzlM2b6saoxRaoEQ22XhpkU
	 Awv+CFaNsctiRBOmLbYwloSGu4C3b+2bGHPGsb3fBVYMzE1UqSlLQo7XZzCkkAul7T
	 5b6dhVDH7cRP8m/7aiPnrcvKUJ0TTggI9aum3qr1qNJL9L2lrO22TrK7A8IXfkw54J
	 6nrTl1l79RnThFITfm5iuPs4CfODWkfZQ58YYOVbK3dtTq2BNZ01lqjChqtfjDa1zB
	 qalUcMJE6otPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A51CA0FE7
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175621739360.7737.9567458586569785175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3314ff138182d30c16f6d9c052c0bc2f1fd33cde941078a71b9db41d1e79d450
Date: Tue, 26 Aug 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756217393
