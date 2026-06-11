Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B6C40D56B
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 03:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781147194; cv=none; b=CKwmLR/tuRC0slpzLk53W8SjV+g5Wkpwyp9ONQGhNcRvzL0mJlAbV6Ud8pDKht0vKAAbw+3K2wCGF2Fbo6WUOW7VCHhfwO0WPWmvcPA+BmD39riZ9AdhO0P2lXvDbf/TV0/EUY/n+/AXCMppJEyQv7teWQgP38+rJBqbtNK3SB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781147194; c=relaxed/simple;
	bh=4yBoZk9Pk6fJL6MC+VnZg4D3A+TM8/xFIXJAP9SFSkA=;
	h=To:Subject:From:Message-Id:Date; b=g0UBb6UfOJbU8TjLpu9MmsRrRRRZ4YKdWP6ZwgqSlF5pWtuOESNsi2veykxnXnZQS5snaUExo+J8SAD6RR8kfTGgzglcklqPJypVVJv6OJygsYA4JY2AAuSYAKsH9+cKE6g8KfHGOdqwoBtuXSCMWv94UOVJBdzKjIitQ62nHA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HtMyiOby; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HtMyiOby"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBB6C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 03:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781147193;
	bh=4yBoZk9Pk6fJL6MC+VnZg4D3A+TM8/xFIXJAP9SFSkA=;
	h=To:Subject:From:Date:From;
	b=HtMyiObytnnjUk8JRP0Oz72oY6WXnJQpPyFpD3cHnUUzueXruVrEirWAp2qhzj75/
	 uSFbxKD/iNpbHC72ZfuaqkJJohGqFiqKRM2PzYmPgpAFmhxGKyMpKmFYEsQkjSVH0E
	 5jFUW/pzVPyfxsQDiAkMpmwrM761EELLvyBN9gSwP1Ica00mR/8cT/ZpxJZA1qn+Av
	 EVkzEdlmcAZguzC71J+Npg+RgI8uF3Wgu5RYihQFqkWQqj1Dd1gumZ1oL+CbjapDg+
	 mjXc+LUZfa4XDWdBy8DnCHdAjGl+ZcasvZVPJ2FW62aQLIZ7ieSdWSPTVgjKJ1iO8C
	 MbMj1sxvi+hvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8E9CD98C6
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 03:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178114719370.25529.11627818175162548538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ba674b046259495cf8d246a224a588238dc862728330e175d0ebfd38ca38ad3
Date: Thu, 11 Jun 2026 03:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781147193
