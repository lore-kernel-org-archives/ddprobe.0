Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FB92367BA
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744381194; cv=none; b=MADRq5maRi1gbrTFLY4oyVTd2XuqRhpqy7JuTCTcLsVOOcOZUpekLCn6g/XP3Pg3vlQxNBIhby1zHe5jhVFYfst0yDOegENOCQV9gVFyLT0zGhE+H5VBGjVkLkzS7yMc23RPWlOpNhoAY/E2N/YEg6+YlhBLIIxTcIHAOcX7ggQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744381194; c=relaxed/simple;
	bh=wLmS0SdHDy1vkh/qZdiBMD7z9lBBVSa0KmkO3/BvLRY=;
	h=To:Subject:From:Message-Id:Date; b=Ct8m5gTuV2Vt8DnOrFJ/VUwD9Pq+d3anxIeH6r9E6x6u5GpJ6B/1+K/2ZpJCHw/Q4viViJ0suxxLIeUBzPL3LiIdfXT0Qp1RVffEIxew51QHRkFToAJ3AaGVNsQ3eVDNkUzuh4LPr4+tCsDa+cQdaVG3xMUX1riRvWHVfbzzQCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dtQf0Fhl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dtQf0Fhl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC84BC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744381193;
	bh=wLmS0SdHDy1vkh/qZdiBMD7z9lBBVSa0KmkO3/BvLRY=;
	h=To:Subject:From:Date:From;
	b=dtQf0Fhlzr697YlmssDl/8uvhfGyaRR7H/r2/5GLEplcyHzSgzVRvRZa5/t53JcNe
	 8g32dBn0nZlnWvfl81pVqhdFf7VJsP/VsQtW7rLds1HCjRyCRFib7UfN+w5uNy+xZv
	 2P2gQjBYAJDDOOFWSgCXVvrQaP01/3hwkY2BBNP43klYB5sA8Kd/4l4aE67RotZC+J
	 UiolYbnIiCZtUwV3Wrk8RehEOYRqpWqxmjsR7Jt5TkXY71DeB0l6EoUjTcMLcFPnY/
	 N+PMQSg+IGwaIgUFBQYEqpZBm7U136ZbE38fmZXFS7nB8kPhUYWo0mp+7Iw6GEWUlJ
	 qYxOC0+NHKzqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CD5C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174438119361.6276.15548541277769919747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dc14e3c959aeba8b5101c10d1456e934c0fa49674b36012f6ce202bcd5b1e0f
Date: Fri, 11 Apr 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744381193
