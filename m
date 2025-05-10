Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E93E71A841A
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746858594; cv=none; b=BqBU91EIpEWY95wp9fDom66v51OQwHrhfxA0wqfUlFEnxvty2kiWqVX6+mjt6cBWa4dYpHTqbult8dghDzvpjXdez9VmXLjGRZEUSs4lA5pc07Yb6Zmxo2pqNYY+B/YGSwBLCgrngqL2MO/6097S5/j9TQdqTQnw+B2zt4FfA2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746858594; c=relaxed/simple;
	bh=9YFzrFa1KtWJCUcO2QaZbgb5cdaJ+Y7OJBWhkQDIT+Y=;
	h=To:Subject:From:Message-Id:Date; b=m7aB6jwIkq2WFtfqb7JmltdRlX/vGcM9EDzvPpUuM4tHscnNfAPWadnge7DJhNYu3cl3azYt/EBPGXiUuz9z9TxPGbBcR4XA2/JH9x+XoAezLoJJpNMDbnl79N3nAXz9erG+E3lsa0c6QhSpzQf3+63aHBk+upxIIOuD+IvcW0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NtM786F/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NtM786F/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DE7C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746858593;
	bh=9YFzrFa1KtWJCUcO2QaZbgb5cdaJ+Y7OJBWhkQDIT+Y=;
	h=To:Subject:From:Date:From;
	b=NtM786F//yeVZ3kW9AeVmUsbErK9CIiIUhA7HgE/vabcobi9aDmTRXH5HEm6mjPzf
	 hI4LCrr6V6Qc5S1b3P7FCmgkq+o75KCIrYwI9bK6G1ZifRT/TjQdt9gh8FP+cO1iqM
	 nndt0wbqgiw18tULgmVsp8FK2bGqDeIkjcE/oUBROQp/Zi8pJoL4DDkB2jQzdMCqHf
	 Yx458SAbBnjZwBxZ/AjMRshkkSfCCCW8b9gu9osiQm+2IcLW9lNrdsqUtzc67VKHU6
	 MQiJHwdmXtueABIuM1hp11CmrjBqfUVTod0Qgw4dMY8k7gc5HP/ObM8YJIqU2Ta2Eu
	 JBZXFwMnf5UNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96765C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174685859358.3747.9056822149107007293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 351b6387954abc6d90f7226774c53e4d8cb0fe043cd13aae51107f56e96d0ed6
Date: Sat, 10 May 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746858593
