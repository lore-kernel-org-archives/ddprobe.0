Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D0128315A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753085394; cv=none; b=WVL/S0B4mSMdp/CmrhSIgQFYksJ0KLvkP5EfTep9NPJEGiix3/fb0soTBGmsgBV7OTehLfyhNmukoQiR5pW4OkFb0PSZOcsRQzNbR5pjED6VcgOXkjlb1Ai+ZorXW416dUnpp4M0eAhF5GJjg2gVV81QQVrAmWrwyZUk2L/Ltp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753085394; c=relaxed/simple;
	bh=w5OOwlSRBQroYvKrZmA7zfsFjrok5IT8oC2ritZ2elk=;
	h=To:Subject:From:Message-Id:Date; b=q+EWYDOh9csBr16+tBjRXpVvPKA7yUBev3LF4R+L00zShAoMUcBtzJ2xfhvq1fwYI+/maTRUg/Atc5zp8GRAPONwo3pkbDR6czlMfsptjNFU1ZVBEgUYQ7UR03JI6vJ2XfPTjInjrhWDCJIUIPTF7gn7N9IhZXb4LSZRbfUjQls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KZznH68x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KZznH68x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A096BC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753085393;
	bh=w5OOwlSRBQroYvKrZmA7zfsFjrok5IT8oC2ritZ2elk=;
	h=To:Subject:From:Date:From;
	b=KZznH68x+d3ituH7ezJwznJ+UbaGDZOWO2X+Xh2q7LGMcZEi7y8k+u3DijCs+ixD6
	 xCNc7OOngTF2YtdoCIjTsoknS/jFDJORU7TqgwG6dfQXvLf0PvL/SnLXiLXcpuu6B0
	 IRY2DWOaY8J+UdHmSrw3Bez/XVkvRpHFZ/aj4No5+ColRbpGANla/48oKfdY0UVaWb
	 8kfDn7uMG0SWI5P5TXXn44KJ8EhrQSghSGUAMgXLXpEKs1fjlBEJ0OsMjh/9Y0ipC3
	 rNFwvuqeqH4s/soUzh+RV1GtFCufswoXpHH8023FPsY35aKlvhJnYCuJFOOV4tBZTB
	 pqzqxcb3B97dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7C3C87FC5
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175308539358.25457.7473515379872106402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15b0523aaac60d624cdd3d5b25e167b757ed8d1fc9996a89914be6439e204421
Date: Mon, 21 Jul 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753085393
