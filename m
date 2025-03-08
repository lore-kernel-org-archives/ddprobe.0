Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A0B1AA1E4
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 23:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741478334; cv=none; b=t3aCqhPQChPJe2xFHYO+8nHhbR8j8F+Stluol229Y1Ng9XzGvKowE1CXmsAeY5B2iX1ielsFP/D+0nZJQbM/LSlEM/GjOh9y7Xs96T+F8inv3IHqp01rSJHIjJB67eXqV8WpXtWyr2ABbJyl1aUxLyDOS7hHHKZX1obUkVq45Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741478334; c=relaxed/simple;
	bh=xGpw271MiSpt2sKiVzXfrFWwYUq8INuBREbcXXqmQw0=;
	h=To:Subject:From:Message-Id:Date; b=SylgvNrrCbtFR6XSrQxmYKyxMOxBHnDCQ60M7hwM3EPDxnZuC5+r6wImXFxdhRcKrpiOtRI8vpq30rELeQYjI3X2e6R16IRjHiqWZ0fZOA8SpxT3vmjj9Sh5A81PfbM5CdfY/eD4JRCJvJcwBLbgppCO7alutQiSQeMuIrM3ZvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b1kap8j8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1kap8j8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B13D0C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 23:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741478333;
	bh=xGpw271MiSpt2sKiVzXfrFWwYUq8INuBREbcXXqmQw0=;
	h=To:Subject:From:Date:From;
	b=b1kap8j8r6DkPCJanOayisb4WiPwuTxUaVRegwee7IO8ypdbxjSl5UnMoAKM0B4H/
	 D4JxeAapPf0Q6ElskZ550A31/svZJu8Xf3r/1ZGHWFb1hmzhFsBzeqtLbfQdkhXbEw
	 FIsHAUBaBKSjAZxODk9c9UoMiFMI8pZh35Gw3qV6O49lpV6vG62LE8Y27K+5hXlxjM
	 up+kVKuLZvpGMlTjjd5CTiOXB86uaL0TbFtqrzPfd6zbeza7WkWYZHcxXvmj9kinXp
	 lKBayVI9nTkzYRFsHBi6mMJNMCqgSweG1vvmb+9Lcd+qiDJwNA6h3au+dlMHfCT8Gs
	 yRIAwe9fpP1+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F92FC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 23:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174147833361.29118.5657484859843328133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb243704e65888d9e95c2c0f8b82123eeb4b187d749fabce0beddf17d5121ab8
Date: Sat, 08 Mar 2025 23:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741478333
