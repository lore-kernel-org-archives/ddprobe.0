Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04EE732861F
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776871654; cv=none; b=UfiIB5ch1+mSoNCOajLrFT96UNfdNOaQX/QZnGzZ28IpWhbH724qgGf+ymQyLynC4mzh89cLA9AgTZ20Dd2RTDzYoXdtqZUXtRvG4wPztn23Bkm4wFPJydXCB0CGpkb6rODiHJVFhwOMsTX/YU60KQSNmuvOk1S1mGadNKOLgI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776871654; c=relaxed/simple;
	bh=UWUiCMgwi7KWnd1hjXeXJZkAUwJ8upfx6VmiypTTbhs=;
	h=To:Subject:From:Message-Id:Date; b=h5rxWedRBPWiD4w9/z8KRCXu9RyLcx2cskkOTMVyR6q18OyXw4f+cWV434dIXhFaRjQKtLzp+Pd4oJVwnkYChsn262fmIF4q8J84ylxgUrfIjlFbOKYH0VchsmPQMkTFxXa6JFzxYrnyxpPsRn0/CSUSuuPLrDdRS9kmeyXzfx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YrI0Lpmw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YrI0Lpmw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC3E1C2BCAF
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776871653;
	bh=UWUiCMgwi7KWnd1hjXeXJZkAUwJ8upfx6VmiypTTbhs=;
	h=To:Subject:From:Date:From;
	b=YrI0LpmwtMuKGmSeEjrNeCK2bmK9xG1hUkDNAPDstHX6T1NUKqGBZDyZB+xEwIiHo
	 ybHeWkNQnNc4k/rRLiPowEfVthSPEn5JVNYfysPPVmm1+fiy05/OQBWCFO3MugCd7A
	 gjAKzN8id1oIxfx00ivSST4dyFMvsXfj5HsKY3BB9QD3ZK8tq6JGaxkQrv76iZN3BA
	 yNQ1KnTq3gS7GK0vsTBucmeZ/OiRY/UDG4F459scriZnHLZBMgRi48flnsw1w+e9un
	 WFPfpR71OiWFyvGrgeddeZq6hXwvtkYxyz3/SWt9YkSNIHAKwuzM9ceF2Edt5fHZG2
	 hZy9+5Uz6F9Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB316F9EDF9
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177687165369.22210.16737933100651462254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77d47249e21f0e850eda99c340c5850d04903da74ecc4ac78856666ffc56beed
Date: Wed, 22 Apr 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776871653
