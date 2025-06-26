Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B11127281D
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750935594; cv=none; b=YXNALjOrrsMWdy9KhLIfZEb11e4wUt94oDVIbrL/oEFFWvOBSk9La5YvHJfFg1ju06qh0u4M15p9IFdKdqW5o57kCWprN9FXLzD+IP3IQgVvacXi6MvLvYu5jfu5cCxudsiABOTy4v3qtYW8hK1ZQ0Jt3emQbYghT8bFrfn9IoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750935594; c=relaxed/simple;
	bh=GUNpA/oSxuQR62xDGzHdn4KtJtpqH77Z+SDnRXNN4cY=;
	h=To:Subject:From:Message-Id:Date; b=SCwh4w7w2tUfU8A+AicS2yOuNDQx8vHqwMFUJqqWkWQsSBDjaHnppb4Ycm665g+cm1/zuWudFfYAev4Ry3W8NYXRkzF+RyPgukR5YifuXesXHggO9q6/MwR8WvYSwziFue/yhZ/wxRe2Pfxdqv3NDmxqwFYNdFMznCJm1c9PLMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+w44vrr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+w44vrr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9258C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750935593;
	bh=GUNpA/oSxuQR62xDGzHdn4KtJtpqH77Z+SDnRXNN4cY=;
	h=To:Subject:From:Date:From;
	b=V+w44vrrKWP+hQ4XWI+41lizs6jKRIHTOvdLVxSFHNADYpvZOENUPzV83O4eMwyOr
	 9HqtXVTQWYW/q8v+j/edIUYkFNzdaxptnZnie5qBl5NEjrPjDEcP/QGwia9VLeEEa8
	 +h38IBBx+G8RkBwP3kjBW76d2B4LvLcneCYt+0tfB1ufP3Mb+CrwvIgW8vVdg9Lz3N
	 CYKtUUdyRuGxUpFCFPwnKDEqTqe7aYeJTIjL7CSjmSVRn16+Ig14HIih+wd2RPNefU
	 fAQtoEDMQb5RBZevKw+1ugEvXmHJ0Ds1RzFzquq7adP7a3pC1nRLZD0t1z8GA4TkyH
	 sgtqaTkUwhwVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940F1C7EE32
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175093559359.5790.8006560725260547069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26fe8928c6176f478e6b00a689337778b9c647875e9602ff5b4636dd4aea4aed
Date: Thu, 26 Jun 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750935593
