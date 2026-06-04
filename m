Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214A740627B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 10:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780570474; cv=none; b=EDCCFYrBJ1I6TzIRUgHQ6OxScgjwUcYYRZTF91rzbzluk0WkBDkJrSnY2dBgVA2qGn2oqtPFSPzgODJyR0ABfbIvqXRvarEKhRv4O/E0PBGRlGO/yCoC8tFSMFQryIkLNW8KHPIKIHpExzd6LLW1jgldxULyQ8oM4XWgLHSIoco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780570474; c=relaxed/simple;
	bh=M7qyjvrouWcPpvZy6r4Q4OI+j4KmoUyKh66Jhz35Su8=;
	h=To:Subject:From:Message-Id:Date; b=jbcUAUWNUzZ0SjbsgFy7xTGRFubYRmHRy1FrFGzUskkjpR8765Qbdhy8hXuLMA+ySRWZk0wNoxEsrOyb8ARNf7qMM+KurVoeypzD9VymdXwhiu1C8+lgokqZq7nHQgFVsrv4H5Lfm2bislKbe0MyZmsNAyqPrTZodx85S/tDpyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=two9xqkX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="two9xqkX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF9F5C2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 10:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780570473;
	bh=M7qyjvrouWcPpvZy6r4Q4OI+j4KmoUyKh66Jhz35Su8=;
	h=To:Subject:From:Date:From;
	b=two9xqkX2CBDx0u90V7atlmmxNHq7tR2sfm85+DjGTMyOtMaD3/XmFrcI+1KbwmTV
	 HWWHhzygR3Z6TxD2Hp6OKvvNYsSswjMB9YjhVQ+NXClwdTM/ci7FybPh0MglOqWxIu
	 dA9s8YAErYEAimw5m3G/fyZj0RF08OzdUGFXp0E8Aua8Bw8ZgTV2oJ/aszdGhYiNsy
	 NizHCWSZb7Q4Q42rLPj7GIS5yCdqxIhfktLA7/5I6TkROOCEnd4XsU004GHgxOtHt+
	 6+kc1FaxMCTbl4qGyXJR3vAbjsUpy6C3UIYNsD8LC26zmtsa1mITgN6ow6mMPyd3HI
	 ieUolkTH9LYYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B40CD6E6B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 10:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178057047368.29660.18431489686038829427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d331b0ca90e28af8a5b6c23f13dfdfe87acaff04996ca1b0ec2664560da1064
Date: Thu, 04 Jun 2026 10:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780570473
