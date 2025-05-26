Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D7C23AD
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748230794; cv=none; b=AggPnO6hFKJlLFdpSI02xvOp2hFe3szfrSdbYEI+QTkeraEJzqfExjL+AEIiQjsSg5RfBw8z6fSf3WZZwCVcKDUbm5VIuCK/EE8g0/uM0A4MXYgRcZFwXS92fmJLYEpUHC37O0q0U4fhKXHrT0k/ZVOk+detBl3UJoQH7/8BkB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748230794; c=relaxed/simple;
	bh=pNafen84spzBjwf0Fi2Srm8eR9mgKp7IBm2JiXPZFjc=;
	h=To:Subject:From:Message-Id:Date; b=hyqt4F+3mCsbn20tQ614NmB/ry01+y4KokIy17AzYWSk+IeYkxRVz5chXu0beSHyMxkob1aMtRt7bgHsO1nChX6UexAm2Xx/0hPI6DRskToasrqmP89yXyf5A3qtsdbp7b2S1OMgpw/mWCf6G7BlXbVMB8PMS6U39anrHpstUhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYNUiF13; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYNUiF13"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A092CC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748230793;
	bh=pNafen84spzBjwf0Fi2Srm8eR9mgKp7IBm2JiXPZFjc=;
	h=To:Subject:From:Date:From;
	b=GYNUiF13lgvzNqPD2Q5zylugntD3M8P6LTcnRo7Gdxq+LagSiRJhy5Vbuxln8i/NW
	 HhvdL3k05xidrEh6Cfx389y2UpaDDUZDnM+xyUnd7LM7m/XPc8AP6qxMR1jTI9POmt
	 uWfHXqPmQULSRL/aI0VrvZ/evg13rlpoNzczz8CkBSZ5K1iOeoOZ6lg/wZwj8M8ewm
	 E0rzWspHvtc0zDUc1tPt3WfEljkQ2DSWxxiKyOIcqe0dBk0sm4Rn04zjDOY4WPkz8c
	 w8QmsEMIGuXcOdWEM+w+nEFv+1ivTFj1+6ULsSzHSqZhmtDlTlHCLbKQC40g24aL2Y
	 fBLLN1tetT2Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA53C54FC6
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174823079357.31119.15792997174289097055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49cb2ce708e348a7b43dba34c4753371c72198ae147533ce3e5f1bdf8fd6a785
Date: Mon, 26 May 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748230793
