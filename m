Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DC324A7C4
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736956554; cv=none; b=q+9ZMmxM8Zy4RrjpEF5wFywfYLw/I19VGxda9Sonhr7rgxEp+YlAU+YvnKIGE0TdltE5Px7xwoLw5FH+hYp0Tyj423OhadU9GW2r6W0+2sWC/k1jxcJuVhpyakZYbb93tFjOwC98DAIgXxThfl8AcMWQqn1Or6rwOWpKuEVBQXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736956554; c=relaxed/simple;
	bh=xvqfUyD/K133DR1FL1IaYgHVWLX92tnZnowk0hwWv9A=;
	h=To:Subject:From:Message-Id:Date; b=ChEwePSDQuxI0K3mcIEHyaIanLT1M+QIkEn0V7W1O7o1W+L7y2o3D+5x+3HRxQjuRk+VZoqtnYuRFRGD7W9JoaXB15UOwVIMb+kXa8EFgNLv7J7Yq5zB97rnsstf6GCfhmJqTDWJ1geu/j9vzjmCfarh3Kz68AtpYipD8wwNLC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYEYC9cC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYEYC9cC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5406C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736956553;
	bh=xvqfUyD/K133DR1FL1IaYgHVWLX92tnZnowk0hwWv9A=;
	h=To:Subject:From:Date:From;
	b=hYEYC9cCiQoGbkAE/DfOm1R2AzvGZvl79XthkL6tJvaYR/UR4Aj41ty40uqTKoZdd
	 2eu9y5F/u4X+Ef4G/KFjyNOmr1TOHcehDhCtLCG6cPXLyCFQrr6HJhhphrAEWTkgEk
	 +tIwwuhl9gyYceVsiwHvn18vOA2lK2eeyWGW4u62OANekE1/zzQXM7l0RmAdn2YG9J
	 7liVkqjCvmwRcxrrolAi53Bo/HI+YFDGSJMGVtKoovc5NyfFkgzBkYW53f5sruGBsn
	 IiZhCaJhgCbC+lM2XBih5mh2CLlMj/Qx84TTYBN0nsgxfEYgKZLvSsbJuU822hQhOz
	 bqE63F3XW90bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964ABC02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173695655360.16491.17638378851886210506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d28348afbcaf676334f093cd9e1c3f79eaf6097dcf742c4f5951a0e659eeec5
Date: Wed, 15 Jan 2025 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736956553
