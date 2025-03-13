Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324AD26A0A4
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 16:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741882134; cv=none; b=NAPthc3uOud0LM3vZ0d30kJZbhz8TZypFyxc2OecZuVGSRXVa4vvSQJc8JwzrIrLbG4k+5phY8tslVDV+40gTiNAlFKWa8C9EsFTLLzoOTtZT4XH+2IlqS20ZKwaBOljAKyt6PzXC0OnsI2r5XwCQ0ulD6493w9CaGFz24ig+3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741882134; c=relaxed/simple;
	bh=oxjSidlmCzjkUfHYRY2aV4YWNTzrfVCvZSc1VAwOFZI=;
	h=To:Subject:From:Message-Id:Date; b=pLFSd7bM19plphrB91C2+640uKpJ41lq1tsorIiN544U/6GuNaQ2ykgiRWTTYwdQ/iR1aHuuzyRr5o7bvc3gaNP//SJoQLQnAZphkAqoe5KW4Wq25PotLopBiNaT+cGHHLKJ1NnRynCnpM6vwlj69Vda5Dr14AD7u2yMabcvTeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DRDUjpNn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRDUjpNn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37FBC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 16:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741882133;
	bh=oxjSidlmCzjkUfHYRY2aV4YWNTzrfVCvZSc1VAwOFZI=;
	h=To:Subject:From:Date:From;
	b=DRDUjpNn2tI+8PKcHj8iL66b92K798mQ50ZGtII+LHogqefks5y6+V00i0r+2Ykb2
	 BWFaSRkuGO+gbXmegI/9LQOEqxOYbuQkpMV8irkWh0VIHd6XB/vdvu5DvXx5m5rxiB
	 R+VRAejj5NFfKznXXLN0L5DIPe/rwWpnfyNz+HYZlHs4JQv+431efigq5N/gM7NZVD
	 /iTJBYLP1aUt0UFb6V0YAgoLDZRL9b8nT1cJ2HItQSiMTuNYaibgnZZw9Ir9Dvck3t
	 +w/G5N4PgvKGOdiFLH6Gl17JR8YPDYJ7JLcmhmVDQzkVkRvcacPmUxNeSNE2Ob8v7t
	 1X8oVrWQx0RDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9129AC282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 16:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174188213358.24521.7635244981780969530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53e08ecd1329b000513fd5434a800cb81af56aaaf38830496a4ab7c07161b275
Date: Thu, 13 Mar 2025 16:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741882133
