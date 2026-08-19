Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE343B28D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787156434; cv=none; b=s0P2QYSw7EzBb9+qMxsm5o1WRktIgBGOJytLC6m1fWGZ9YfbdNX2wDdglTpUXJCcYtzRCccb+FW4/norODJ9Wyjl2ccdYxmWnERSFtTGTGJEXf3Tfdhm89jGDuY7R2mmLMZlppm9E4Qt65m+o5rhwdHC7e6nlNQ/Yz6txSw7dEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787156434; c=relaxed/simple;
	bh=7ZM4yPTuuSmd9BiZPB2zlNH7fjzcR+hBEqyfeOSr/2g=;
	h=To:Subject:From:Message-Id:Date; b=jKRJnxfZE4u25jjONTRd/BWV97N7dtSGYtAcCWqd0LprggK7Z0oEksqNyYnhBidu5FYxF3uU5bfOqm/Mkjh6zsz9Mqo2hkoFzKkS1D9HxpT+cWq3wtFR+WBz4/r7mVBWB9YBe7EnuY7O8LKJan11rWH/RQ5pw0is71ZVJF+wMCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T426GyE8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T426GyE8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A51C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787156433;
	bh=7ZM4yPTuuSmd9BiZPB2zlNH7fjzcR+hBEqyfeOSr/2g=;
	h=To:Subject:From:Date:From;
	b=T426GyE8z0qBMdTFdrBmjE3pw+KmX5sg/Q6Yf6gUMR/f+/gX4f47NdVJ49vweA3fw
	 MMLLGHS+g1Jy2X8z4Kz1CL17BkrGqOVGfqqEkh/4eqmLJN9IFvhekJJCrOT/mOnTN0
	 6r6wLdPw4LXShxLyUxZEkD3o4PmH1K8FTvWqs6xL2egp7SqYvbYeRFhLqemS0KkKiT
	 g+2E0z96sEIJh+6IVfqRBV+tTucLnBzNqJGTi1B2If0eo/1eXp8lJKK00ihGwBJ0sx
	 5FIyPGMPUEqZvIEvoGKaOU0YV8IdKLSXaxW6n2PBQ8AHooVA04JNoowi8885DmFU5T
	 a2S5g9DSYAjjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04ECC5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178715643371.20704.15419578133985510563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1d4ef090e2af2af69a94f6433db5fc698d4690bf2e1973f88d06c5bf0dae9ec
Date: Wed, 19 Aug 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787156433
