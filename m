Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B4B2253FE
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754737794; cv=none; b=fW/nlM5WgJ641K7NuymC+hZPDUnpUFdUCBi0adMnlA9EKqOjOhTcKqyM4JFPBctzEgJM+/IqzjGxCYfmHst/YEqn6bRzHpEOS1f/LOmu2KPpIuliAeG1y3BRyePapzew+0BkPD0aD5vMDoIAocV0dMnA4JHfLZoP+1gVow3f9a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754737794; c=relaxed/simple;
	bh=8/4agZ4IXrfkDMBGZIQglZuNJRSjwrWwJzVC8B9iIWY=;
	h=To:Subject:From:Message-Id:Date; b=aLUib3Yfk/CDXRQ0oO1u8NE56veVFmhaxGkYNP7AWCSxKUqvMKfQq3J84hExkTEG1AVBqrOBu2jOk9YfXPP08TqafopEt08fLzAlhlkDJ/QYT8yKBfVhEYxSdoAtJoVruq/q/tKW9pXBMfENDshYfbANRZJBdyftywhTkYpQEgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BNLj+S0/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BNLj+S0/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F53C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754737793;
	bh=8/4agZ4IXrfkDMBGZIQglZuNJRSjwrWwJzVC8B9iIWY=;
	h=To:Subject:From:Date:From;
	b=BNLj+S0/1KwEB2JEkjlkly0WZUtPfD8z+yrlhF4IzMh79AbwcnwsKY68v8AJNylh5
	 D1cMwz3k6WiYzoQxz10VBV6TI9vLtojE7rPA6dKFQ42xEv/bcxWN0y4xW5KZTykA/k
	 sfsPqVJR43X0h62xiVfYtvZaMraQKwDe7mRMGK65Y+8YhdsWnFgpmcbfokJLCFMXjd
	 C9rmmLp6cs/tb/yw/6yjOJKcoFXo8za0i6qKqGA/7p8KngLxabzH2Ebh9MKb13t7uw
	 rI+wrVHvJOYdZGrokPmj9mwi9xIQVieHjExNCCoYrwQsRZm1XLwbldQuq3qDNtJwCH
	 snNOKsnRVQIgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C5CC87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175473779358.14446.5609103136018483935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9acde8ba0611e7279c23954adc27a2123e486367beb5b8ec211e48cd59c033e9
Date: Sat, 09 Aug 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754737793
