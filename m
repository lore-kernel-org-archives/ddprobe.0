Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2EA1BDDB
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724495754; cv=none; b=rc61pqkI1xTO/YAZjk61SlWl8bmx4gctJsFMxvre7ylmZDjaSg3B9pFo1O/qjDujTO0M7gKxJIbp5agZIH4c7CzP8VVC1XHdzD3Ojx+mY6opQykDMlqlKG/PzUaG78UYSfsdeQ/RVQhjzj8fHu4BuR4GdJM9fAEXSj6jquwba94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724495754; c=relaxed/simple;
	bh=UD6MGKMjHVuEq+dncFw2wUMSahWDIyZwuTvbNwYBQhM=;
	h=To:Subject:From:Message-Id:Date; b=uc0YfJ+EGb+Ns/86m6RqeITPIUwV9Zzctmw4ebF90KTpT42QTKl/W4+EYmjV+20hqA8LUnr5VquVeQFKKPi7ng4pIP3U9TFHqE7K/xju4H1+Xu7aYdEA/c1I4kSrnQk/JvbnG5nXdJx5ZY8ZK+18mtjkFk3c5sLWhLTFmQ0JJ6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btrT30V/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btrT30V/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1BEFC32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724495753;
	bh=UD6MGKMjHVuEq+dncFw2wUMSahWDIyZwuTvbNwYBQhM=;
	h=To:Subject:From:Date:From;
	b=btrT30V/E6I+YYaVuv45R3w6Gveq05/ggaorOIagWKVkN2nXmO4JddrIQHJnexH4y
	 LzzXTLtXTtSH9xPqjRqHKcT5mII27N4CVo6/PtSRdC3pUHEa4p0PaQ4X8DEXfzDfpm
	 /8P2ZyM3QeNzEWD/L989CYnjzQZ61KCZlT3JtImv9XtEqaNYXHhM7v/CEB/TONnt7q
	 j1bSxhgd5jU6GdN5eEgZce1xBCXFSXNn9O1KLMzrhdJxNNlGvJ9t9FxtKQdJoDBZsx
	 qfNJ5f28TnrS+slABVoNxrqNWjRPbrkxkf/Nl+220wXliLVeIeUcHqe4h0aWMCUg6a
	 xpJU7mYoTl9HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F63BC52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172449575361.11654.1714572956895107393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ae8667cf5e452b6783160547e646a8743f4d211f56e1d18ecc26b2bbca62115
Date: Sat, 24 Aug 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724495753
