Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23968277007
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767552234; cv=none; b=CBREygg3ZPRLFnDptniWpkQoO8NvZtUcB8aNqGR1dFg4bWJw+0HrZ4+3ErygZRVoHMNzgZph10mXqh7pH2Wwj5+yiJKkeBm4IJjfuqM2qyjHQEpWCKV2XZYNtZNxwJo4GjIGInV+O5U1CB0jb4ey31w8AcdtaLr63y4n8FhJDDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767552234; c=relaxed/simple;
	bh=OP493kq2yhCMBAQuIuBagsxs6d9VPw8TXRfF6upDs8c=;
	h=To:Subject:From:Message-Id:Date; b=u28Z2QaL+5TLNwOrTWgcXElAFUDepj4hKtDstsrztT3E5CujGaw9ud9eofEa3GVT4PlfS5hNeGiG/z8/WLuyZepEfVXKJC91Twm6DUV1baXERL6SSdphgjSZPEF8KLph30cuJyZEUuel8u+PUh7AlBPfZhkvIbMuF9aPmACBurg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ioKzJ4pQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ioKzJ4pQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB84EC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767552233;
	bh=OP493kq2yhCMBAQuIuBagsxs6d9VPw8TXRfF6upDs8c=;
	h=To:Subject:From:Date:From;
	b=ioKzJ4pQQJprN9J1AeJZtOwB5JUFWZUmMeE1kRq6JWBScSOAh+k1vyHDcrFEMLWVB
	 CH2eoc1RWPGnJBq2xxPoluUNin299EHw/vSn0jrUwaMP4T3WocR6s54eXnyXMyBAhG
	 SVxNUGUJllUBxCjJpFH5fd/cxGy8kvCxA2B4qyyekYMBWflvOG1YSjx635vDVfzj/v
	 M03pbaC0oh1LjtE+1TUQvVpqnWJnJ6DBBANmdPH0PFuN2wijWxHoLq2hck0CG8CWL0
	 UofCkYtqcWiHKv2DvX4M+qZLGf8GbIZbMS46IQUz6gh5IOjrsG2MKzRiXGUQVqU9gh
	 l5zmOtQwq54iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B73FC2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176755223358.3871.15595538831456665312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94b59bb4b2da30b6390fefc4254c5817f2b18a41b2126aa6d8c792d5db1cdc7d
Date: Sun, 04 Jan 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767552233
