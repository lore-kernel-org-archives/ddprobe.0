Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4048E3232
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737819954; cv=none; b=cWzyOJheOTVlRWzVuSiJWiROQhKDt+YBO2VF7nH+bH+cI36PGx9Kq8+Dzgi88J65riCLFoFTz20IQhCH+rTacBNNqWFAMJQkvXd3NFEa5omelZl2ym/fS4lDTGfFKZwidXL/K4lpqp9x5Ck7ta53qbBQBxdGXrPgPz4kUkxxF8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737819954; c=relaxed/simple;
	bh=a5MzCLFqtYh4Tu0su37aSGsyWDzGd0D8saIMi5WA8bc=;
	h=To:Subject:From:Message-Id:Date; b=KJbbAxyrrVC5+jL7CGHlDmpnyjgmbEhTh4+Fb/SZVYfehTAu3/E8XjxO6LkOuOPEwKuXnADLQ1YZJ+TvgyzeZfPdSLxuPnZSkdzi6eCSed/sdSrk4fDW8VfzpNL44CbX7bRjtfw5fLHhoageXUzx9i1gBGy9g2/ooXS41vEZp2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6dnvK0n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6dnvK0n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CF0C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737819953;
	bh=a5MzCLFqtYh4Tu0su37aSGsyWDzGd0D8saIMi5WA8bc=;
	h=To:Subject:From:Date:From;
	b=V6dnvK0ncC+d1bmkymQuU2xO3DK/dWq4I+1jBTWApmWvY8vWBZtuoPjw53UvhaLvF
	 OfA6g7fcoZbkSD4lkGHqqRH2umm87CR2jYAz0f/OqOXL6xNGIxMW4V4nx9Ll3dhjV3
	 LAJHA12+sdx0wT5xTTQ2FFWfr+bYstLJ5EB7UOeLFslQOtWpR4ak5XZPwIy687r6IQ
	 fqyFarPJy8KoXsbYCgiSpsBzqWIvhIwrGPmD2gqAQxeka4WI3JqFQP1T8cQBkaXdg7
	 MaVY9JLvc04iMDAWFXGIGxz49iBrbqFmb2jPv6pmN/0KlqOd9mE4o8D+jlaZKshNq8
	 0SSGm8g6XsHCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909BFC0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173781995357.30341.11158635563837402440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ae3869869050d5993dac28842b7cd0776a23b69167b4a42e7af2ce5f3b7747b
Date: Sat, 25 Jan 2025 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737819953
