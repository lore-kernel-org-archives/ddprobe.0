Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1E6031BCAE
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761593394; cv=none; b=XV0V70gyeZQtzG0D8l3mD8YLzsLr8lyTfu+hweGnntdUMSK7jRm5AvAZIsVQgikmm0+tiVFiRWpS9Um2hIoaXpVvMAVfUsCGqHV0ogtUBldZvPneo5XhAvm2iRVpY0GD/8VcfaUHjX2S9rMLADUBtmHQBsRT46Si91lMsq9EVpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761593394; c=relaxed/simple;
	bh=+RJlesH0kM5O4ryKeTlmj7XLI6F/22eVidG3pWwX8gg=;
	h=To:Subject:From:Message-Id:Date; b=ObojvyDsL+qY2vCF+X7Fnd7nRURUh6825u9njfQP1dOH3ZlXBfo0b/LT0Bakbgh3MIU0hwcQTlfCy/v1nueWk5Tl2twoaC+eb2LN28Jxl+QmcJUHzdmnlnJ2eaTmdc8bTbTLQaDc2GnsCuUhLzGZo3KwvEHt1ye5XMn1z7wEBIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5bWh/44; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5bWh/44"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A841CC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761593393;
	bh=+RJlesH0kM5O4ryKeTlmj7XLI6F/22eVidG3pWwX8gg=;
	h=To:Subject:From:Date:From;
	b=e5bWh/448+mJxxKwZmyUcq7Ot6/ML5hrQ0Jx+qXyMX1WLxdZPs8MkBO1e8xRIk8NH
	 cqjFlCmT36X7hXzklY2kyzP8H8qJ4gucbsuqrYN8ZGYQjQZoTaSb1AEVCFBlk+7bu+
	 qlUk3hKp+6+6wYXMauGoPCpLqYI10rqBhFEK8GoQ01fGwMey06iBTgKAcNHu/nSS3c
	 HKiLULxyG1MByYIN5Toc71FXUgvsWLy/JrgfLzeL5c6WXhREI/YDInpRzPMy1ODzf/
	 ulK+N5WBHne7GdTITdj/pc2L+O2MYDUkZUdK0uZmntRo03pg2gH85LYbdhL1OhcKcj
	 5iOtfdE8viODQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ED8CCF9EB
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176159339359.20909.11289068620198636533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f046b78c64e4fad9bd4661eb8662067f6d00b60e0916646cd0f62ec97e14ae48
Date: Mon, 27 Oct 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761593393
