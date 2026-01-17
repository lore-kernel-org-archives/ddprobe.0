Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121762C21F4
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768636434; cv=none; b=jQ2nQZheSiwP5mJncH2LHFYizdFPGQNCRajgVdqL3EuWZUSDM7UuAyrAUeX9Pc4FxMgXGidaCYSUZxhFa4QPs8wb36TROh7IlUlA7D7N+C3ct/9LZX8OoTu53+6QCZWBY5ieAHqX40QZQ89llh2rvovCf+sjC4cWZ1tZuH0RCcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768636434; c=relaxed/simple;
	bh=fnYkYW5DKbP1t4m5IAU0ZsoE097gim4W/aET4uP1Opo=;
	h=To:Subject:From:Message-Id:Date; b=APh8XMLnbTj4+ZdX53GTsDb1EXHE28daszUUId4FF9Ce1PKPb6co3OLkDz1qGteTmMPEJ8+BzeMgLa0FaIfkjs3ZsOhWoq3r3HzMwqu/TsOEt7N+ZSuqLhwzqBQ6x39e2nMcTBVS2hK0nLb6U8oi6PdK7YHsdU6V3zW2dJ6J++8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQFYCKPP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQFYCKPP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A864BC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768636433;
	bh=fnYkYW5DKbP1t4m5IAU0ZsoE097gim4W/aET4uP1Opo=;
	h=To:Subject:From:Date:From;
	b=WQFYCKPPvlUeFp7da2obJQKsW2AZzbAq1pIXkKCrwE9aYdK6iqTCReCW/FotEz44R
	 xorEOJJpG3bGbl6hCemWYkgBJyIKNLYU3Jrnr6jzKT/VgNPA1MM2f7hbteS1JHGvEC
	 +7Ke+GLf6RmWv8AViJ3BdLOa5M6kt8/Ps385pF627nLygrPZEx+1MVrAeu1MBVFeAV
	 //NimcK3zit9xwEn8lvK1lUyn1u8AC14dJceCQI2LJqCrdz8HcgbXOgLeI5+Yk1DC2
	 WeeFsJfI7PzBHcRfd54Xda87dGOcIVgbmxJob/JOd1jWiQLETrtTGaOxLWQNRjUpy9
	 MgRvjVMQnoRjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F75C98313
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176863643358.3412.3580898623237245836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 483df88d45a8595a46ad924a446c0a8e52950a589f53a4954a806907e47d4303
Date: Sat, 17 Jan 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768636433
