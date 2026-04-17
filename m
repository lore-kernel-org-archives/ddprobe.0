Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1F2257ACF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 13:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776431254; cv=none; b=qD/p3Q+zq+xIAIxANp3ABS10Y1/IinWsIkIzHS+ZCRLkAdYZ8w/LNWpc1uFSeYB2pCdP+W8EtIKjU8/qva/9Rcme8U3nM9jkU9STw/JYA4QSBmYiC9db8EI6m7BuPW5l8tTER4XBHrvXUpfVIKvy01LnoeUpqCDa2MJQf1SuEbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776431254; c=relaxed/simple;
	bh=BhwcikiuOu75i0e9TSPKr34Vwzr7SNazE6UYOOrXHw0=;
	h=To:Subject:From:Message-Id:Date; b=s2//tHttoa4S+eBrAX3JjzLduXv8lENftyTfg1HZyVH4nJLtfYoS0Zv4c5GIuxlKiISmWB1Oc/gh215yx1yFUjH3AFvxabffBBRb/0lMbHNA9ZDnHQS1qyD893Lm4xY7+2hmMD9MZhGmZMTpH6RuZOIYUNQbvAmx5r3xcfeNL+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rggpjdiy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rggpjdiy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD800C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776431253;
	bh=BhwcikiuOu75i0e9TSPKr34Vwzr7SNazE6UYOOrXHw0=;
	h=To:Subject:From:Date:From;
	b=Rggpjdiy6+sTSBhLPnn77YIg2dZl6BuCX5arHc6zfqEiM8vNfidU9eRXzuzbL5qDM
	 oGKvJHut1FH9/BZarbFzm3eYWCtTj2Iak7sFoZwHpB/7aQas8+kfjM3JDGOfV1G/cs
	 9oNBrQEQvhkdWp/IVl2E/1qbY0Y90h18m6zcsZh6eYtMzfsay0A3RoR76NJAef+wir
	 n/HfAybpEztzQVsWzCuQcO2hMRI6pehje0IPk3qSz5d1iP7KO3Ws2SoHjLdbmakrIg
	 VqmkjugjmXPeYHL0XuAqYhIvWyyPTsjPGIpQOkWEvGkWBMIbMDHGA7Ti3yL8gomXfK
	 nY/ctjP0V79bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA203F43697
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177643125368.23069.11055809436638839115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddc505461a5f8729d4dccbd788204382efb9c1faa46d93da9708ee424bc43f5c
Date: Fri, 17 Apr 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776431253
