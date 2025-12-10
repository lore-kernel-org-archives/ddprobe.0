Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115D81898F8
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 18:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765390974; cv=none; b=BItGZeg4CXtppRP74bj8HJjKPRPq9ox8V6qC0PX7wk2XNX8devsOauj0Bq0Y/tUHdFbJU0lUTy4mDLLtTEHqXdiYQHzFikMZSfT7HnYtMkcXty6eeivEBwG7Va5+3dbUz2BmNZcho3n2w6ZyloufucnuSGWM3mdkLfetZ0aaRpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765390974; c=relaxed/simple;
	bh=oLq0OATy4x1VCcUo5a0gsb/OLT6JWbEagbTLxD0bKyc=;
	h=To:Subject:From:Message-Id:Date; b=oC2pNtHf6Lr6aVWWABqsbte/piLszK13lWuAyjt510xujSKbfY98gRvx31H8XTX3/Q9uMl5P56EchUyI9iTRihDFv07ugGFF3Jo+h8XOonLVxp6Qd2gKyQIXz0eAiSRx1Zo6mfiVGbqS13JWh4KsDrhv5EBIR6Y2PCpZoXxOVPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQOzxqY3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQOzxqY3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F925C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 18:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765390973;
	bh=oLq0OATy4x1VCcUo5a0gsb/OLT6JWbEagbTLxD0bKyc=;
	h=To:Subject:From:Date:From;
	b=SQOzxqY3ALTvAuOKuCISeRLv6Ho21PycS2tbUTmhkaPKBbj0SBXmSvn823FeSQ3Ud
	 C00e812B8qrVjf5dXSuOBABfmiLYmurpd43p+1iyJ22+eiLSJoTrLDs1Vs7kmQUoDR
	 cKefkPPPE7IU4R7+IvVtY30n7kMSzq61doFdWjczF4SvTl/H8sS04RIeK4CQVZn41b
	 vdbyqe6xutMKooy/KvLqTkkQLhr5YlHlKBcoNudm//uYFZqZdNNA1vTuR+Tn//PjrX
	 uy1WPx9YltkT8gPSW33yFkznbqUWBM7nD0MTDKgtZVRrPPCeQTZnpn/zpCMqOeMfXr
	 4A2MIcESzxbxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9231AD3E768
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 18:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176539097359.23851.14230193076450190958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3df0135622551391ae71b7cd6e8cbde5a30a49ac22663b55d300959ba1d0b9c
Date: Wed, 10 Dec 2025 18:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765390973
