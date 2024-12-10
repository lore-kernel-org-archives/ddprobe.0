Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3095E41C6C
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733803554; cv=none; b=FYq8kD39nQFnZHNKRjWCP8E2jGjcH0fS1j5yB8LHlNVeJYvYPa5CNSCxxNkbsdbwFzF83GFWHSx/YzHITlG2ecoHRg7jt7y7NrlB3PXMj86hQozkNsiG3hX1lEdHpilOOeiBBeJ0x6pyIHZNFUQQUf4qFT42icGvEZwb2iCbzrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733803554; c=relaxed/simple;
	bh=EqAm1Xcw2AGoNCHnN/SP45llqHYkQJDPRlIuiBfdoQI=;
	h=To:Subject:From:Message-Id:Date; b=Dn8znz+80Z+8VaoUWGhjIzmJCOCo+4g5H9jZk9iwe92BSjv1D1p9+c1B+FEb+inPnIr7gT/pxj603DSm1FC+jcYpNEgqk6/HiAjiaJgaC4JnQiGV6wygarg0eHqfUNU31+OqZKUrMfSvl6Msu4WkEVf+Tip+SEScyqqns5V/MS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHQqAWwU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHQqAWwU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7FCAC4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733803553;
	bh=EqAm1Xcw2AGoNCHnN/SP45llqHYkQJDPRlIuiBfdoQI=;
	h=To:Subject:From:Date:From;
	b=uHQqAWwUFlG1K0B51u39AMi/wRz88II98S1hX/m2i+UOpXd4C5eMFMTz6bsG+hJKd
	 nRJYQFnNayGqKuuxHPQ14Tpfwb+yL5PoOGJ69437js0hksebYWz+YtIOiAqQpcJpd0
	 UTSfR0JS+lqtZRt8ZAmkcxe32SHWtECqiraibM7iiL5gJA8ZOAa+JBnBQE+tbhzozr
	 /p4Yr3Bo4qM88dj2yHTPLHexIK4E5qqSP9Oo9bFiVzIOBKsiEHcDtnxsQeD2YYdclr
	 W5Rz3h/ob6TEGnoxyrhXH5S/DxQqLLGhZ4sNiGNdzSrmFlNVpGpPuxV1Y3ODjgn0tL
	 8GCBjMco9KwLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D1A1E7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173380355361.14093.9110367026220476681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a947256e87b91084aedbfb84a341bf0b23bc37b348f217b7d33aef174873b61
Date: Tue, 10 Dec 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733803553
