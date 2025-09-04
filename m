Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171702F6576
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757028594; cv=none; b=f91qOyLz0ya/8feFlrhTDT2mW9E9yhtO2BctCZVYCbDP1+Gk6fO6meQilY+Py+6HfcTvzSVi6GmB9/Fr/m8P1/60DVSiZFmgXr8NFQskAQYJ126uLHgs6MoirWdWmnpay2Uts+rSslmh/k3wjgJHva5VcrYrHUZJkN+ipnZyt1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757028594; c=relaxed/simple;
	bh=BybSGzbMo1IkrQ8KH270LcskUHZ/NE8+7bn8UKH1hlc=;
	h=To:Subject:From:Message-Id:Date; b=EVj+I7S4GYtYQaEpIW196uVcgSe4VvxNTqzcd4K25Fgq1xsl9+vP2FimW1+IxDANC0HyPw+wmMy0ewjSwMmvp5M9hD+ts/o7r3BkraCjF/GgeO5Xw/n/2i1+FoO114bthaqWESpiC8Hr3TZa6PWp+6Hf22L4RVQ5xGO8T422wpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7cdobm7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7cdobm7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CB8C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757028593;
	bh=BybSGzbMo1IkrQ8KH270LcskUHZ/NE8+7bn8UKH1hlc=;
	h=To:Subject:From:Date:From;
	b=n7cdobm7+WBaywK6Lyz0X7slP4jr7hWAV4v4jRhnSepoGA5dbCe76bRWGqN3k10RE
	 dVn7bh5v9waczSGpWFr6+c1WCu/Xy5eREEv2APBf3unZ3u46iNnRz6i72kkQQfbOeV
	 xpFWVlGQJa7y13m3JHjMmxPEzeySZCERBZsNRSajaATQ1icY/vAkq/+/ei/ePFK8yK
	 0iTJCTuepcCM/R7e+O1R/G0MtLdVTAmu7ZbRtFBAA3cWWR9BpapHmZENs+hWWSNNft
	 TS2TTPBXHyfrmvgPSDzZ+FP8dK2oXxobSEqXN7JiJ/33egSpE8y7b9GP/ab65uLN+v
	 qwjvIc1Cpm5Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93155CA1002
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175702859358.1830.6286503289109866522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8808a3f0f91cb099e32ee86c518113289599fffc04b2a5e9808da90e194c4d9
Date: Thu, 04 Sep 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757028593
