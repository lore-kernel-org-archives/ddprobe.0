Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E715A395D80
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767807234; cv=none; b=D7QzvvK7zDkimWDekC8dhilAcierGat6OcQ7+iDGTBIZg+8M+BbUz+3SLlg8eNbQRm8x99EJEkvz6U3nglCmA0mbKEPtTVrDf7ciMENQypfcVXY0l0iff7tt4EC/xL+uftrsxnVEFEKoSke+5IPnY8okx9IDKIgt8cG/LRxri+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767807234; c=relaxed/simple;
	bh=4TmkcIJXt8tiUKMXr8lRLLQTuTEPJGZemCrZNUJa3Aw=;
	h=To:Subject:From:Message-Id:Date; b=R0P0lInE8uBsvgmBAHHqIATPJE0/EC8yv+9pgQOPIYGthy9rfpe/PR24G1IeukkKqhu90yTsMUTvZ/t7CWUQN2q+F4AgcqNiby6+wUKoNSPLuGZQwW/hvg8UGhoObQYfsoL+p11SlHMCAPis9jt5DQZPK4GsAg4lBCssOyGTMvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cyiyc8pm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cyiyc8pm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C976C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767807233;
	bh=4TmkcIJXt8tiUKMXr8lRLLQTuTEPJGZemCrZNUJa3Aw=;
	h=To:Subject:From:Date:From;
	b=cyiyc8pmxoKHA5y6VLK12WcG3riU3/jwpqCXBdgOc4g6yPZ71CSaeXcqCteFEaK+C
	 kcTb/r8/jJA1hFSygThc1S7bhnh3f+yYN1tqPj/KAiTWwEGyln1DoRmQeSlzbQQMjz
	 jpD8QmCdQtjLkE+8f0UJyugMtzHOdCuJT/hEB3XxC4F9JmhbscFvwoJD24Wcme/dgP
	 wQWTSYxLd97kxJhWjkQLGBmzXzL1EsDrsDQ6GdefukVib8EiFmotApdhz/KJ4PodXc
	 VfveUHJaU/w6bfPEutc8E3g9EdSL5eGP/AHTRY7r772TqYzm0KYCW0ddHUsJKJ51s2
	 TOYAov5XtlPpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F22BD0D14B
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176780723357.32749.6963560241919135406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb59c1b3a9f0ff30fdc7e514f67c3635e9547067b8a334bb84ee4ca6d476e3a3
Date: Wed, 07 Jan 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767807233
