Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4048718CC15
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738769754; cv=none; b=mUyRMBHN/PDsZaIjB+IOMDboI+jXpu8oRQgprc4NYuvhiZlgPadFldVISlIYx7Uaqz4SY4GHZ7QJ7ocKqr6U5WSDRZEfKRrr0Q16h02u7IbfOMAC7Aerg6CMnr28Ng/Q0DmXaY83FI3/JCSxYaEAn/RWlT2ltHFfsTw63ETghJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738769754; c=relaxed/simple;
	bh=hVSx8gqCqpw2ep0Rtqf/MDT6Q1Tn8vN0/fwHxfWxiFI=;
	h=To:Subject:From:Message-Id:Date; b=Mf0L5zQeho7h4cLzTa3vxKpCXyO56HVCx6ICKr9RxzKZcpMD+vED0w2UIkTAJ5+UDMQeLkWcYYEUgx6OQGoOCLhifzJrVMr9tSF4yzm4pA5bA1EiTBuabkRs0/zYtnRZ0nhoBY85VX4hIk3xhTGrNfu1IN0FnP8dEMdGqmDStxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d/VsPRNL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/VsPRNL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1BA1C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738769753;
	bh=hVSx8gqCqpw2ep0Rtqf/MDT6Q1Tn8vN0/fwHxfWxiFI=;
	h=To:Subject:From:Date:From;
	b=d/VsPRNL7mzyuY1QjPzQIdAFJ9FTqg7ntg4UYtGBmxOj222v6rHO2a1uNpafZJoBZ
	 eJD2KGCmFB2Ph++5akv4PsT1Jv/SPRGDbcVSWlp989Sjm0QZ0rAZDhX+1OXy2qfgNw
	 m275JqfJhm1R9OvLBS4TbY3N1rfsWpZIt9wTPV4Avnio8rup+G7bCRl7JoStuHEb0v
	 du+yfbuGF79T6n9OMG635Jys8wipp8caQr2DCv40p9ky6Yumoc7A+4It72MiXvS9qs
	 xLqdMdgUnqu61phvQPwY2E28N7hcOwzUscE3sQdIc2eu+0ya7C/tgWVNYyYFXEFjiz
	 BHK1XRzqXmRfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3E1C02194
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173876975363.31136.13682393800610140275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74fce5c9af229a12c17c28c4428b01d62e766aaf6918983457cf3068b6fb8c54
Date: Wed, 05 Feb 2025 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738769753
