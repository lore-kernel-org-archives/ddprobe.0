Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285582F656B
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761998994; cv=none; b=YvWf3lHi2sDSLhKmg+r34fWASea3zDLykeEhiy2edBaNbzYda5efL0hih81x/zPL92MIzk0mwwjJUYsnzhf+NetIzU4rlws+VBy3ZIOVuNlS+hQjXGVtqrafh5E/+brQVLe9EpDShcvXoUqi3TxzK8MmPW+ioK7PhvgNRIMBeQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761998994; c=relaxed/simple;
	bh=aVC/vnWN0bvrCk8iKqprcjg3/OIwoXLJz0RfMDFWPno=;
	h=To:Subject:From:Message-Id:Date; b=F7G0ONBb/slhMXWGn7E8NNW0+Wk+2cSuFfda+UpD62eTOtpLmIch8LU0rHGnF7EcyDaGOeo0XtHqqFectnTZ1Hnsi8dSFEGzHNhZ4ivu8Hp3pbMVl0qeEb9UA1mrSaNXuQMI3VqlR9NI3EHCFGlXoFsOjcDPJ5YqkCPUEVLP6GM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tRimFZqJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tRimFZqJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87DFC113D0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761998993;
	bh=aVC/vnWN0bvrCk8iKqprcjg3/OIwoXLJz0RfMDFWPno=;
	h=To:Subject:From:Date:From;
	b=tRimFZqJtURo28+4bgBtaMox8G9V/9yuL3sZEd2Z56wUsGhAi+QtZ4ZFejCe49COe
	 qixW4PT7eWl9zdXMjITT0puA/henwrQ/nuTPzBFdcD5E7Um5VzTMDkzhalAJzh+ixB
	 gT1rQ/s3pk3SyZqA+48FVCarVWxYiFspwTM68N66j8PYc5DbFuBnPHR13urJtw8N/h
	 WfxaTqzSefazfESDg/cffKthmpcxJtHk2nyfC8tvDKBfMYU6e5i1PEM//ZxfBrj6aB
	 E10Z1L1DubFpV2YkL+wAYeSMio8m/BPSDqzeI5qRAo7EFiLR/FAuZFwFEwcm2KFPfv
	 s7Y+ThejA953Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940F4CCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176199899359.13674.9563014011482300397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75da173564101aa5d5725ca209d9eee300adb6caecc23223904b7840bd2e0453
Date: Sat, 01 Nov 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761998993
