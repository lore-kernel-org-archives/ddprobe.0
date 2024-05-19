Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B254C80
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 03:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716087743; cv=none; b=XMlTAFILw9Fb/X7YwWTV7upC9TF+a1P+X354SzwzB4JXlLlY0LQYghALTgXJPj/Gol0xUynJXuNDnsUTFCMTaaCP1GZf5MNQ5eboRfFPODVpdXjMq9/qzCJD18Vgp9EFKy6gz6kZMujlhuZkVtws5tbdvdgAzjQIV2SHaRl48vI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716087743; c=relaxed/simple;
	bh=vevFjU/TCVZy+eflGs8kDat7LxTvRTW4bgzc4cM20zc=;
	h=To:Subject:From:Message-Id:Date; b=t/8AH2UJl5s1YoRNwPZKec3WIq7YTFvRT5+/aIsBF+zSz/OgpBxE/NLHB4JUhwAW6GuzR1oIFz2ArZVWSyZvDFAXXaO9Sm1u2xhIQZfQKrxGA2Kd/lxpGyv3etvmezOoTGz5egQEacabXLbruDbq1UvUAyaYe6hDVF3SW9eedW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Echo7y8J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Echo7y8J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E171EC2BD11
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 03:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716087742;
	bh=vevFjU/TCVZy+eflGs8kDat7LxTvRTW4bgzc4cM20zc=;
	h=To:Subject:From:Date:From;
	b=Echo7y8Jl1avVKAg0mlSw/i/VFxl46ydTFqqOFdP5SSoJGto6fjDzz4lExEea1Q/h
	 BoHy1RBFnUkmHdOUgzJil2LGmz33n0UqUjvEAg7Mw2YGOFVUw+7QfGWdxYF6SQnY5c
	 FaE5jWYbBUR0bz7kT91MxGDa1wvKMxvuACcWTqlghw04TC7Tb8zvWu6su1u9Q65aU1
	 kchtNIAA/x6SG0DbT2iByWMDg9OxbOC39Vkr6n6carGoGmXkTVZyY8a5yi8yk7kRD4
	 zwWWLKSGUahawMjznF+YqVpNVAoR1H6O5qbats0azy5GmGwDirctSl5uhvttWLc7/c
	 W436GcdYhnt1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5B2AC25B74
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 03:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171608774277.29472.11656059865846290772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96155e0a3344eada04a1ff96b45cd4628a2477c460abb26c90bf137a4c27b6c7
Date: Sun, 19 May 2024 03:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716087742
