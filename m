Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D4113DDB5
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729667154; cv=none; b=SRkSsvZT1+WHSRcYHGaKZEyA+ne+u/pn5OurfCxQR7CgPI3CZW+bRkTIIOd8bQ25v5E0N2wB6uUPhlPQm3IftX0jezcfIBphPpGQXPCEgyhyUQbem8MDVPmmuhZz70UjqlmxkCVwXygw0PcBDK3FzxAzJf5U2xwLQhq+fgQbIu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729667154; c=relaxed/simple;
	bh=i41tCqrUKBSHCf3P8d2bA4yIK+VP9d0osDmLBzudEXY=;
	h=To:Subject:From:Message-Id:Date; b=FBQlBRFw3akwC425GixjvyOfu4zXUVGQ6gKZ6pVB5JXX+C12STvw9ID2sRzockkrGM4nrzHTNjmjSIUx3bu/p0z2EQ5l1xnkbfY8gG3ASZBbgyiCyJ60hco368n4gqgG3WnvcbBmENvuihIIYzk9R02LcpOfA9LU7tTeFMYYs5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FgcWP1Au; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FgcWP1Au"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD5A3C4CEC7
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729667153;
	bh=i41tCqrUKBSHCf3P8d2bA4yIK+VP9d0osDmLBzudEXY=;
	h=To:Subject:From:Date:From;
	b=FgcWP1AurqmM/mCWFsWV3ItwyKIbKd3peSmvrbYJUYOp9ZmM0XisypetQTMQn/I0A
	 gl/1vGarWMASuJ5ydfHblfaHBwuSngzvMjFaKJD5cT/R9M84SjV61Xm6YU7nlW9k1L
	 7RVAJ8/XdLKqAhtW9UvCgxijLxSvVJEc2iVggrixub50V/95YEg0wOzVnphwHOkmmV
	 e8e+D5jhE/AweUIoO5dxi5ACMdFYlwEvnDPB9Ab+Nv9gks1EYAsGhB426WhpLjcyEh
	 eBtL8iSk6Ioyv+LnT2J1C4tI8JrlauBWUphi74ITh3orxcdfY9NvhEXrDw4h3mS6OY
	 34Iy88DOfMPNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5759D2E01C
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172966715364.15802.5110167599430291843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31d7482debf10117565087581ba304afb634f618e4127a9729d53df374b14779
Date: Wed, 23 Oct 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729667153
