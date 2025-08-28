Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E0C153598
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756342794; cv=none; b=LtbTDOD09vDUzTZJNBYSOcwSmaNkYbmE9FOdHPbkQsgRu9AX2XC+njlW7Bxl4d3r3u9hXi9TtgCpA5HKDAjSQZwKEtZkFHDteIDKRG7SMnB++cJ4PFTijNB7MepWadPS3fEd62aNnxgOfEmc070E5PS6ZW7e6GtV3PPHKn4lQT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756342794; c=relaxed/simple;
	bh=IHnKGuc7DnxW0EwuCI86ToUVl6Dipv3Q6XLgR3bPFIA=;
	h=To:Subject:From:Message-Id:Date; b=nZEX4yWwZodSO4/F4jUjbe/zfYEBZMvejDgzZ6DkgsjH+OS3lBLmohPNKXHxTdrRy6OiwEhQq3yC83aO1HYf4Q7XldlFBdYavSwlgnETNW1XeQcB4Mpc2Pu4YJXWeH6oZfhWknL+Hs8MRNTk882nSyo/AaJc0XoV3tkel9vmX9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVhUswOZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVhUswOZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A098DC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756342793;
	bh=IHnKGuc7DnxW0EwuCI86ToUVl6Dipv3Q6XLgR3bPFIA=;
	h=To:Subject:From:Date:From;
	b=IVhUswOZ7fN5KMszNcnytrIhokyqJ4wYVcAA6xvO9zh6cX2tQ72qBXXvKhucR788B
	 Rh8C3F481YCNBPvPHKu+oq5+8ANlxNtWUf/LvTUf25XF9aOK8k73aCcXatvzVmiLvN
	 TuSPnL2Cl/rs40BWam7hxDmIRfohS8AbGN6J/IakcA6MEVNJ7EZ4mU4Uq2whV2Z+Fb
	 eMJEdnOqJCz8ACPIzBuUCcA29JwpgbOsY2meFMnUbmu0dnRxQdPX1OaltCqAkh/VcW
	 ZoF0SSmPCExu9N3rdl7MZY1iJY43kkG8Y3dmOg9ITyFdPP5KDfEnuzn8T4OiU8UWOT
	 0PVkWK7BHBAIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E076CA0EFF
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175634279357.15086.7435250415199968039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72613d2b8fae16b9ea2e40974a4fbf73db4486c0faf463b7f02c564154bd0ec5
Date: Thu, 28 Aug 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756342793
