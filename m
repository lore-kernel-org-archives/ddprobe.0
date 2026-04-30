Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136D52BE7AB
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 06:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777531054; cv=none; b=XwX4qGoSiS6eYiWM/x8bmQA5tCJBvHSJdBxAQjClkdFba8NmnMjpAmnpmW9u1vZ/FJg0j8pEeyjxaBWjU3BoQnkqJ1X2Iod8Oy0BmauMj8+fHA4roBdQ6Djp9RRzpD8TrGS3tWBmOcvB4SLEX+fGg5Zr+0+KkSsu2gmGKx7o0d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777531054; c=relaxed/simple;
	bh=kRysOVyszfRm69u3AdK6OhRs4u7q95scw7n3sCobvyo=;
	h=To:Subject:From:Message-Id:Date; b=F+1vPLfTrZz5F+0ydb4aEGE7jcf6hdofTFAu3P0GX0r8WAH8KMHuxEQvSZyvNLt7gHfgX9fKQdfXpceiL59xBwklGt92Ib8fXtbSs0/rohdsniHrWB9rwoxEe1ZXIPx4TVmN4Kw2ZNOz+aIQaBt0CVoYZdCJ6/sRrBFz3WD30oI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2Ighs/Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2Ighs/Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7FE4C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777531053;
	bh=kRysOVyszfRm69u3AdK6OhRs4u7q95scw7n3sCobvyo=;
	h=To:Subject:From:Date:From;
	b=r2Ighs/YNj+/lYphtKGWQoa79+k8KeG7gcTf6+DypxGhvOYo3AWMvZMx5JEJ/EYxd
	 vNo2HYrZhTJAjQQzPUn8D+O0svtjZVsRpVbaI5csRAbVls6PikJRU9pA2zaV6OiKGY
	 0GU0ixOXg2lekG3P+rvRZRrRhcTocb4r5e5J5T09YH8ZEfuICY+1RG2JxBP9+h80HZ
	 nvQustM+eVBfl+8glOJ20DGBnh3iFTbhd3x81mRI0Yxm3y+UdQNmFPSlkvTwIiLKlf
	 Jc9Kcsqk5FC6LuSkYO0mSeqbaJEu5Oh2Eqcgor+x+RsRoTdF1/sRnawOtqC1yFER8O
	 ZT4nrsiTUdhnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ED0CD13D3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 06:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177753105368.2432.401381092726938664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fe2f988c9e4abf132bb8fb2f6878ad08f70991ee50a6fcd1d2e718173b232c2
Date: Thu, 30 Apr 2026 06:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777531053
