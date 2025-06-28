Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3703AEEAA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751077194; cv=none; b=i7N5yQ/bPeuMYgrOT8hSTc5IARFUV627JZeF11/WoJ+as58flL1IMTLogxX/5sTS+6Xw6Ov0j7pNBEzl1izW8tf/6SXy9UfzaChSiuVyAwfrs3r4beqne7YpKHo49R/DNGD0HmxLaEFn3+mxHEEewE2DWAdzotjqkkqaNGqQxWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751077194; c=relaxed/simple;
	bh=Krsde0XDmZMwQyZePTGKJvfZbrRZ5YQ9itR6AeYR/6U=;
	h=To:Subject:From:Message-Id:Date; b=KQo+UQiBDR2Uk3OWjs1tR3Gq9CiYj1WA34addhOSl3wtGZ/KJnGg6p19l8Qfh4qqVmQFWA1YjvDtBSctUmYH88+bZax/rrJJen9/HhXOtSXNr8lqpNwX8Ta1Aem50qiQVKjJHiwa4T1EmIL2Hu1e+j55tBL244gVOPLyKavLtWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fp1pbGga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fp1pbGga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D67C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751077193;
	bh=Krsde0XDmZMwQyZePTGKJvfZbrRZ5YQ9itR6AeYR/6U=;
	h=To:Subject:From:Date:From;
	b=fp1pbGgaBcsTdtzTgK/xjHR7qWMYvoMBAPPjB5Hkt+Zs9AZT9waWp0kbC6g/hxtVO
	 Xlmrlc1nJHTxYRI+X3CsioE0cUcLMpDczY1G8Btgc7/gI+OrpL+CQrSdexfL6gpWYN
	 ykrL0SHqiQcfhiKyO5bK5WPVMWNHoRBsfpUrWxZUfRcpnMwQtQmkD+d+CFzKxzUWxx
	 mxGwXIb26CpqTSQEPLVSf1IHvfQiCb9uhYx3yz9RXZWxexOmiyJzJJzBpBTuR5K/ZA
	 mOA2xwKbo9ux5PZC5xvzA0UvfeAly7Xtf67rIyrfXBsOllip1RIyiuqrrCqXib9Nl6
	 K61XNCLI6tihA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9631BC77B7F
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175107719358.10384.1171541363069843583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 595f5dc1f338bbc8ff50de2ca181c4062c66ba8bf8c0bb6617beb7267ae71041
Date: Sat, 28 Jun 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751077193
