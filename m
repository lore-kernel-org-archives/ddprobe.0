Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5E71D9A49
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746877194; cv=none; b=HpWP4vs5n6e5AaJNLhZWZEw4MXqcKoaTB59c8vQEtvdjN5pBI6ycVF1EuIsXAWtDmMhx2V4z1iAk9xzpiFCuceTdRIm0yaK0IrGm+nu+Sv8noyQ0Iann9Xm4Ttm1PrJ0sxRfEKHzH7S0qWj6c0GwA7DQyYFFO/w1LK3wW+NFldA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746877194; c=relaxed/simple;
	bh=5zkNV9poyzys3Y1mCsVswyO14q47YOh2U7G76D2OGjk=;
	h=To:Subject:From:Message-Id:Date; b=eX0vhwGA43i63aah92a7o/RY5nvPfBSJNVitzQRb3yuryv/4IvP7PH+R4zYnZJX91n1mPLte7dwFSqFpbP89PH8Y5rYtnq0E5wq/b1Ee/O+SUy+OVgiaJt0xj1KocWt+iD/fW4T5IldmlDbHJPVuO8jiJGEOc2x1IgII/uLeZco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rs/Reahl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rs/Reahl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7F0C4CEEE
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746877193;
	bh=5zkNV9poyzys3Y1mCsVswyO14q47YOh2U7G76D2OGjk=;
	h=To:Subject:From:Date:From;
	b=Rs/ReahlTeySKazmUBOoHkfgznEFhy4ZRPnEuZum5S/RFwSGiz1cUHf419/sEJckx
	 rNmFTD8OEVPp2+ZZRwymr11DWb7yVgtTB5B8k5aCNrrji1qnbyW+gwB7B946uF+bSh
	 WI4W3/FdUHfmNVCcBv8L+6UUI5bD655F8nQpibRPovi3LYxjOY3t5sEEDpfLC7nC85
	 7qLGptXaRmAbXcOmtTUkKshiqAVPUr285gjvR0UQMFh2h2bSOfl7VeIXTT0Gk/GXVS
	 8FzkeWNR1IUiTrZvI+6hM5ooJCOY/OSu/jtAlxkqHoYwFDA7chv2P4ADBRzr9UQl8i
	 8uizReo423FKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD19C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174687719358.9118.8907189705130720600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0a4e51cbfae66cb82a6ec09b2d5fc1480335b867ce56f7d266b825de8f494dd
Date: Sat, 10 May 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746877193
