Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1293D496D56
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 15:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789399234; cv=none; b=Id5kDc1AjlgGn1VdDNCbcrTa7+hDylcTctI7Rz/LepayzI1V3RV7Ii0Ta2cI34fe9zcm7woNeQYdGGun5IpEqmPiROhcVha1RXmRKoOVYfNLDIY+zkcLQhvkh8uuNFWQaEBZG8QQC8Y0aP+sC3TXbXvcCU/ex2drJun2vH3xn0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789399234; c=relaxed/simple;
	bh=h180YmmahFb0fCIDceRY8M4kerTZcj9/vc+M6sAch6E=;
	h=To:Subject:From:Message-Id:Date; b=TPTsWNFglVt5gSADYlyiYCOqhq+MuqpYTyv0s2YuHDihyu8uk+ko93AoKg9W6dUc3qJm9hE0ThbmG8dq3l+/QQxMp0HaGHORY3UtxMCEs16TvOQ8a8e8LkO00ZDtD/g0laaJgfL4Ux2xPm3p5czAA5wc6bKIhj0RDjYy1WF0kLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIPujY33; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIPujY33"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D56C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789399233;
	bh=h180YmmahFb0fCIDceRY8M4kerTZcj9/vc+M6sAch6E=;
	h=To:Subject:From:Date:From;
	b=bIPujY33zHR4/bozZcwdTEqTSLprapCOm5KGb6B9e0D7scuPfrzV2GuI1sLv2Gugn
	 Tf2crMgpaNgAOtEacBXTC1Zaa1/NNwi2rd9zc9jY5DV8Cugrt73AvzBD/prI7Z6Di9
	 1cxq9kHSAryS6XxOerY11IVIihgpmKMA1rkt4WftMoLBxv4QbO+fD2ry4yeW0Z4lMC
	 K3GlVyLDRF78cl3xHGh46Y5df5xFLQfKZUEawUsIl0hXCVYStWbKpMKkpLpaOol26K
	 Ua4O/KL5aS0JNGH0IXC7BTKQ/x666iu01Fze9sla47mAaupewm3OooNqr6lpgAfxMT
	 KzHWx5VS4C+qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D70C88E75
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178939923368.28943.11254998578300085435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2261fb5ff267ad89731faa39ccae46ea3cef36eb28d6c4699c847ba3ed77e65
Date: Mon, 14 Sep 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789399233
