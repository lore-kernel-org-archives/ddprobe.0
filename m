Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198447462
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735803954; cv=none; b=g/yQSIBnyQqcP9r6C8ZH8jWd/aIz6qiZvoYuVm75RUgOjo2EDQHETVHaUS/TfjNOykH2AXfe70TKY2xbGTswwZkFen8No+vg2v00R710Fs5k3uT5P+uT/9vu5mNHwPISNkN1J9aXYCxEQMZPgO90oUF4ZdkevKx3M5MmIjTAnME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735803954; c=relaxed/simple;
	bh=7w5R/rVX4cnCcgSGkgCrgAU3a8nhA43raVdQUVUog5k=;
	h=To:Subject:From:Message-Id:Date; b=IrFLrWv99xrIl7vQjEpo/EoKBo2t7vOsEOc+qgQIINCw7ELzO0HTOAe9/K3DEkChLO5YRSRE+0q2WdxWQW0OTv0wKN7SABpvAft1vCYxmqvmbM8XADKQiTxB+0w6kXip8eqHn7GNMErPd3/3PhrTRAN8ylZwU834lHRamoPlGYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VsgAnFpW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VsgAnFpW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E67C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735803953;
	bh=7w5R/rVX4cnCcgSGkgCrgAU3a8nhA43raVdQUVUog5k=;
	h=To:Subject:From:Date:From;
	b=VsgAnFpWfp6UQDuDzcNRwKOeaZCLUSFrh07Zvu09Q7ntGX+9OhiW2m414v0TKtIFJ
	 D48CYnqGQq/iB9xKIN5JM9cyj4e+ZAMFa4N/jT3A9hIb962J8t9gWw4/QFv/eaqnau
	 e8V97Qfz0tOxA+Odoa7sWR3Pdm8lC325gK4jtwpBSvXnwb0H57FiYSqjkjGFoRL3e6
	 uPXosand9+aVSq1VdsVU+h3C5/1WRtzOzZeyJe0s3E9sEUeJmJqONqBbhBZ37BTSrm
	 dmuTRe7k303xBzUahiUZc5pr214hpIW3hD4HOjxcisljONEg6SNNIAs8eC3JEbqCdp
	 IT96ZkkvSttcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B00E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173580395358.19437.8017332586969643530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62630b9845f4843ba44df09f77c42c6905486618711f58e7a2f34638e17a44d4
Date: Thu, 02 Jan 2025 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735803953
