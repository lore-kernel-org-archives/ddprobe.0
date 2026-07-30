Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 681183D6CA4
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785447034; cv=none; b=kaiWsihp2CswQS/tI6MZP1aSodoiwvOKorbpQAKDMSxv7IJLfAH4wZNTHF03HzBB20Er0Qf/7Xy8x2AjKgBnOwK4A/UUGynHUZ2qE313EcNdmddA8JprvNIDmZzoetc+/iuVdcheVytIEkSsRluGpfi8CZE/B/BaSsI5PDi7AFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785447034; c=relaxed/simple;
	bh=Rt3b+RK9fJmeDMhL/2/atLBlaP/S3ttKHtC/5IcrcRg=;
	h=To:Subject:From:Message-Id:Date; b=JYddZH/5W7m2x/St6SAgmCHoYHiWtdtnQOBz5nt4rL3akudecmsPBLVGBjtCgYP4EBff3BRMG4+GbnuJOmzErgwWBjx6c7vrjk/4OfWGLSUONc6UbqbAHF+kdz/Bd3r0lBq8xQpyzSNZTwLToHx7h30M/s3dnRCRhU5+ldJ4jJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JnZJFxLx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JnZJFxLx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5898C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785447033;
	bh=Rt3b+RK9fJmeDMhL/2/atLBlaP/S3ttKHtC/5IcrcRg=;
	h=To:Subject:From:Date:From;
	b=JnZJFxLx6h+5ejv0bXCK4yOo1wr9DPmLJ3xmnFyjTb4bUvEpMtaLn471HOQ4DlP8Q
	 ns+n8eJS6nSPrE64Jj0H0KyVREawFOaTs6vgHsBCRjcP2bghBLdtuvmBozBzPb7ZUZ
	 1WVk+PC7gaD4k43r2yjom7WiRbUEufmM5saI3YyH8waxI18yBL7rxAbNg1jWsG3xrX
	 GvtxcQBmKZDIes4RYOE5h2GaLdz3cU6qkzxhlrCa3RpfZ9yVr2/F2L9n/kdleadpU4
	 RlaXc+6Qg3YwqVNM/5X01MvKdnwdty7BGBRytEZRC4SDNUO32uJ00O5sKzf01r8Kdl
	 bawsWoom5CXwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91E8C55167
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178544703368.3185.6865020650726239917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e18171b56b544b190c301b5aa6b9ba1cf394b26bf86354aa424cee8667c85fc2
Date: Thu, 30 Jul 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785447033
