Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E41C1B4223
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763207394; cv=none; b=SMWDcPBd6Lw1m+r7ivhDpiTZep4ksa8bJ2MoW5TjoFRB0/hbX8a7gMZgQDfwu0zEJVngpjYmxD76wDh8Ao+xl8BQXaVGTkaXjk6APnPGn5cp9qa8DRH/ikwcUPQlzVO6fSsxW994kK/vyoTA7bFU8XUh1U/RP1wQ585VNDsRSqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763207394; c=relaxed/simple;
	bh=htGtAeygShMOy8TLtN2BpjEntAG19BqW0K6C8+c7NaM=;
	h=To:Subject:From:Message-Id:Date; b=WQOYcW7VSSxX+lNNGkmE5c0HqsiNFHJRspvIuhDEAz+Gu/7QFX5/zC+BGgzz1s1JeK3I/5HWIA2ByLgzlvWgXG+B6UpxVQ8f4pNjHeuuDnv59RvO/nJ6o5bZY+WtnM++aoxI9A2ik6m293xwy75hvKpQnzRdabxtKPES9sxEwYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uoWsGJMU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uoWsGJMU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD50FC116D0
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763207393;
	bh=htGtAeygShMOy8TLtN2BpjEntAG19BqW0K6C8+c7NaM=;
	h=To:Subject:From:Date:From;
	b=uoWsGJMU9C9vbpH6+tnaFG6ScnAHt2zJzMXB73O2ty6etooaEdfPP58MQAUuBZzEZ
	 YaGIRX6zDad9fFDJnlJq6e9X/eFbAzSTOutDMxuwgXIHEaSEfpQSXpClA96y6NUtZU
	 uLcfolzoIH1JFlcxs9i+TV3jfFoEpOEXEWu3EFuyFy5fn9tDNgvzE/TNHKMsYKoLHg
	 Y40eYYtJNur00Ksnww+CKqEZ7ZjziUEckzbwPv7kod+nwArVT2AMDsORs3KZF+jTg0
	 7vIC3fNd/O7kg3FIhGZYplCHonrde0S+tYnOlGvSG/tWpZYyPu7pmwguvgFcOrL8Cx
	 Ck1AyWQr4SLOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB63ECEB2CA
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176320739360.20406.7463337208915793564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c0baf424825662d3b86e7028167bf5738e24b0862e456249b7794b2b010f84f
Date: Sat, 15 Nov 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763207393
