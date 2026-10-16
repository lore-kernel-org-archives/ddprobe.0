Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE092D9ECA
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792115434; cv=none; b=XgHeBxGXgKSZmc73RfbVjeOySCINlpEzHUJV4YyFrJ7xgwDwGzzYmhk3RWlhWCl6quY0CTPdN/CxJdHKOlah7CLNmupXEUAJvkGm9KXBppdiyzpl+lkHGoEGm0zOsekSdI8dyuCL6ORNHfKBsMTU1tFXswHtnizMPjx35xTmiQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792115434; c=relaxed/simple;
	bh=/mRtCmJfnL4K2WZXC18nsjkKkHoV19Iv+pjBDq4KgA8=;
	h=To:Subject:From:Message-Id:Date; b=YSjpCcow1iDhdJL5BXNpQoF/kKC5uS2IseSrP8B90VD/UciRUGyvBXAYmc2QWdwXRChXGVtz6N17xKUJiPIj9K+lINsbTO+EYER+quSaNSZ+IyvSrUU9frl0N10sCDzRjQN6FJ/9CK+hb0lTMoxPPrOfzLgFD/OZkTgpt/oX2Vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hffoJiYa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hffoJiYa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB1CAC2BCFB
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792115433;
	bh=/mRtCmJfnL4K2WZXC18nsjkKkHoV19Iv+pjBDq4KgA8=;
	h=To:Subject:From:Date:From;
	b=hffoJiYalzUsQw2NvSD/ujZ6H9Y06oibXfm1T4uwW5tpX5iQ61rEbP96q3Z/WJbJY
	 TYJ+aoZ/sFGqm1xenG7dHbO4CY9rOm1mXBxw1f8IyjZkCk4Xz4h2jTCl50xwQ9yPO7
	 R6y2jRwOHY/uh6sMjPOfKrTywXeBnKWvxcr4yTh44UBgCkzRmQ50dEXrY3DEYRaIHv
	 upTPj4ZhxN+o84mzCMdr+YSMLnXg/BS26gjn1qrYbGx6mzR72i7WA/hbtj9nzNbkn5
	 WpfkZIxT3GXVshPN+m7f/2ZdFWIsoOif1cVQC/LvtThewPMlu5PEju3X/jftQ3J5ls
	 cmLv/sP1iMlbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97A4CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179211543368.18604.10724074961907040877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6511942deaa71357d344ff00a57ee6a5c93aed507bcb89c4ef19f45009ebe750
Date: Fri, 16 Oct 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792115433
