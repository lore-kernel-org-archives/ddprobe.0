Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F23FA2ECD2A
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750174794; cv=none; b=QuQ7Sn+rzwHRW4jbhaZRgIMAE8BKcrdAKZ70os9jZKS9P3PBW2+Azt+5wkLdMH182XPhizkcIbFpkuQr7DyJHw1Vb2D5OOprQNO4h170YuD9BVUhCoF0ck0A/Sy6kLLv4s5dQrmHJP6wVEKlqJdTeHU2iuR+7XfG38iOTvMTRjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750174794; c=relaxed/simple;
	bh=/rdxhVXM9eVwvCGx7rfLk5JqaOI1IYmfRGPXYpN8VaA=;
	h=To:Subject:From:Message-Id:Date; b=YyCs4yfu5xL/41DY3UiKrCW1KGv60qz2i2thOK3G6qDnaSpqZ36cjYgTgox8Xfgtn6NyLbOIKQPFjv0zH4o5AhdAfs8R5/axOc5ffuz7wHd7Nzd5gUpf6iwsD1q7bMeRrXHFg3zPd97dhLk4aEoRlckUNL7K4DtvESNbGPAbuiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r33iynsZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r33iynsZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA9D2C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750174793;
	bh=/rdxhVXM9eVwvCGx7rfLk5JqaOI1IYmfRGPXYpN8VaA=;
	h=To:Subject:From:Date:From;
	b=r33iynsZNqAEWgkwvTSYRYDt2ScV5wEou6TTWDnNHnoUFV/tHa5Wwbd+G76PEgd9Z
	 UEiq37xTLl9wZD2mXE3FsKmRuXx0UgJL1pfWyKuAZ3F2wQnoG2xeMRAUHz9ggBGCTP
	 OhGohEzA4TW4afN8tLNUw7OIgYGCbpSIFEIzSuJzLYQiz96VfPcEBllx8u3Uzz3H2F
	 fHoRMoN7h0k/wfXt9SI0SAh+f6cphI/Y/z/8d1OIG2LMVicDvlujry8jDkjowUr1Lf
	 44W554A5aGhTXkpGu9Y/m4arfllc4aEQm5/zXxYVpJs0yLWpV6eDGCmcscNQbNxWMi
	 LsOWx+B5RGTVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F45FC71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175017479364.3823.6286561428394821543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a23832dd0ff169b74b5c5dd129ccc9954e5077b540ba1bc4aae8b1598764d65e
Date: Tue, 17 Jun 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750174793
