Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5354110E5
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739016354; cv=none; b=JrRH3+LlMKSlL5kiC5z3QMkSkazgaM38ZP2xmPFqZ+ZkcOJtTEXduIG3sG2sQ1CtVUmfbOtvIU3y6jk2MNGMqmsiapLw7bWT5eS+eq9CsWnfM6h10XvhIaloLWFOAV+XSm6MJUeiNx/n1bFWasTwapQJi+77WMigpinKp40vwMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739016354; c=relaxed/simple;
	bh=vnzBvYAmVOGSILnsvDiB58qvCTWKRJOj80INQdul5Bg=;
	h=To:Subject:From:Message-Id:Date; b=N8m6NXfFCNJQmNjHC0DHlYv8D1GpkhxlBsTiqTD3J2KTcd4yzWnnTXWfjxt2y8XzoUFd+FGyg3BO0wqBHyjHErIchKpTXLURgwea6psDr3kq3y1xDvwbL7L/lhCR7DI0HVt5V2qg6/VEOXK4iWyxuguYsp8TBhmY1aDgdBU+0VQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PmfhFmvF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PmfhFmvF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D98C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739016353;
	bh=vnzBvYAmVOGSILnsvDiB58qvCTWKRJOj80INQdul5Bg=;
	h=To:Subject:From:Date:From;
	b=PmfhFmvFs3GUtN6bh9Ek3RCQ1LCGXK03sOR0AcGBRn0mFrapRD4z2u19+bxsmoR8l
	 rLSYE+HtUR9/5csVyGypVUyrMvRYo3CpBWdPZNRluGT7D1uyvNQkwFLqZ4ntVw0Q8R
	 HZULlS8E9jfUIsPyRNbIX/RFxjV4yelKFFITmotTX7zy2l57GwhK0ASunJV0eupcx+
	 LJ/T2s8rOdJc9mCfZRi3jbUmChxhBnEbDHSPexb3ZpJxarr2RT0tVh6xuajOabBqyl
	 qcqwpoPOeWoN8V7rEsFO7LrrYIPMAWhWupNNBFzYwuoWF5xCNzCczeFwMU98G3+C4U
	 5KmkhgaSmnx4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCD7C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173901635358.23476.9611140559196154761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06e035fa38d81124b3ef7e3ca433d50ff0c29c977700ed81df45b2b1bde37242
Date: Sat, 08 Feb 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739016353
