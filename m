Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2688A34AB03
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 09:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783763314; cv=none; b=K6fbsR/ghs/MW9y6hLZU3/OpGCM0MoB8LAA7A7coqLCG5wNpOdGL7Rfs2JLWrvfz547EviiEaY42UyPCWGgLWD6UYvEtsunPkD875sBuTO15hOPUrY6X76fokgxI+kzDn8CXMLhxIYnFMUY9lsJzYbgWU4RgGpiQkQuUHdzgML0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783763314; c=relaxed/simple;
	bh=xby+bzGH6LBf/gHsg77MprvcdpOAReaf0UOfzGC4MGQ=;
	h=To:Subject:From:Message-Id:Date; b=IYBvCaCZ34SghfCh1ogK1pU94ZbLMrEf54Cj38l+bTCTe97ElHIrPnytkJUIQHI2oyB8ym7yz8kY9A5ZriDzlinwD5VBpYUeXGgtp8GOPK5Wrh7/CDDfbYnYyVZRVc0nu65ME+Sv5/DXSimWu0Oje051F5WZv58U6NwMO6O6mWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJZ1LF0K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJZ1LF0K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA19CC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 09:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783763313;
	bh=xby+bzGH6LBf/gHsg77MprvcdpOAReaf0UOfzGC4MGQ=;
	h=To:Subject:From:Date:From;
	b=RJZ1LF0Kx78a1Rx+2PWNQJvK6XcRo9Nx29MZLmrR8MQt7WFJMhRKOK5Ans074w8OV
	 E2/R7vBXx9OycKkNDxfX4XuVlTn4kBO20v9NMxStWjW7pFsxZ2+shK0quPlF+zg4Cw
	 1oJ14EkxNFJf69YcGtfgZaRVuGMzuG3f71oR3xYa9kSR1piBera411dop0rfySifiA
	 WF/54NvNT5sk0s6DIS5e6/3rg/uZIh1ad6JOUB1nhJBqEBy2gZ2O2HaSBIW2bAmydg
	 585aBlu7jUHjxBXiytuAgDlKzD3I+0CM/+jSITePaI5S0w+qDhUnjA7m5kFIljDVRj
	 RBLW+yGPgt9Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8254C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 09:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178376331368.22947.2867312185562229688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e583a60a66e6852b4cd4b8b9451d4f7183da1ecaff2f6576a11f567f7eda21a
Date: Sat, 11 Jul 2026 09:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783763313
