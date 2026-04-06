Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29921221F1F
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 13:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775481934; cv=none; b=jDR7i5COPnC9ZQaZ0zAvH4qZg6axvB6TPkoRttz+aO9WDtE5GD4wt3/rlVLatfnZyuoB6aeWub7ctR9j27x1Ek2FM64edCxYdnTtOcZeyMPTPZPa6GKkNw9rLMv2POqbbyIE2JuWFslLgUGZc1yrqwfZe9vermxkl61qjgF5v/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775481934; c=relaxed/simple;
	bh=8vxMTmhnAuK/kSRX/bBbGKhjpuVPNZU5OLFq5uyaxV0=;
	h=To:Subject:From:Message-Id:Date; b=O9+cnyKyenJKvVZijowFp3wzF2lY0zVKuuzUkVtVNprwWxeiHByx8vKdpZYShq2MZbGVhyLn55UPiFhyNSPhsEOaUz+o+Rht1SqVzBm4AfCkeAIqmiAaKLl+l0ZqVymxqDd/u9UK4Q0CGgZq4c8BbeRnm4Q4mxgxhCOscXJYZDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5EL4Icf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5EL4Icf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1FABC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 13:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775481933;
	bh=8vxMTmhnAuK/kSRX/bBbGKhjpuVPNZU5OLFq5uyaxV0=;
	h=To:Subject:From:Date:From;
	b=k5EL4IcfE2KZRXJrqN2wAI7YHPSBGlwRH9dREXjN9hFmxKvkCBZIIsdvJUh3/qdgK
	 b2nIC4aetIgzdtDt+s08Rsac71V6SKNeupcBQUeUmSozO9O8CXxAmKErZkzADr2JHU
	 /7b913aPuO/YHBBDdUdbs/X6rPHHvjPQqm2qy28sydk6GfSouYVHNBMLtUuJ3Xdp6j
	 ZAqDZ+i78tIFYPZbp6yXA2e3zmpmjl9w2ZPGzlgQYa+4wP+CLpQP1aMkA0gRJNKCtX
	 x8+Udd0+Wz1/j2lFMVOGOgpdJHD2NvwdmvK2WiP/ubP1HWQ1DSvcCSOcBofKy3C6fj
	 t3BNTzwp52bhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4D0E9D836
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 13:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177548193369.29763.11436649059473544144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ad83c910c5edef6f99835eb2a67f7f9c2dfb993972bf76c6a850eb4d25ef94a
Date: Mon, 06 Apr 2026 13:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775481933
