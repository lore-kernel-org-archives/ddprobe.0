Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B01542049
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 06:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714200143; cv=none; b=sOv9FuuE0qGU/Cu9ZoUGhY/fRkCcRCuEzxoOG4M2rVEVNrSxgRk1mJSp6vYIGudsVyR+3IZhtAvcmVW3kFS1mjrxQ27tg3jUiZaLyY6wH9z524l8wuZLcX+305nR5s7o/aXwh2ltzf/dTqPzhbXuTkazv+UWFSQe3TDzwm0bqjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714200143; c=relaxed/simple;
	bh=2C+8GrTqxQRphLSSnmglYNNrKUfEe8GlT1oz3t6MIOk=;
	h=To:Subject:From:Message-Id:Date; b=ttMsFng5ynUrgqfGlCAqD5eCVA8+11A90d+8xBQgCbTb9a6BujLyt9fFud8giPPDd0ZjpkAnc7pfo2t8jL1/pSW9LUlPFG/UfjWLsSoR1iQeNmtvpodvnGCrQ8TuYA9a2IJjlILdK8BtaHUheMn6iuYTFtP0f4R18fdeP6lBfI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUlhMGi0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUlhMGi0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1532C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 06:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714200142;
	bh=2C+8GrTqxQRphLSSnmglYNNrKUfEe8GlT1oz3t6MIOk=;
	h=To:Subject:From:Date:From;
	b=fUlhMGi0mlTz89oMXnWhdrOxkvvk0giZRQsx5M3nts1KmJfdihUbVrcAxT7kyini9
	 cjPX4hJ6dt052Npnb2EiOQ75HJtxmMzWMlnnK88IMJ+U78TdGXiS9OvIb8wEOpp7E9
	 b+UXupjQ0p4bgN+7D57vlnMLjm3UuSxSCGzQCsZZwwC2Ar/Hp08qfKufcsst4VRwuC
	 Wm7ZUnTY9/lBjksk/xo5OsLVeOdCdrXfX7TbyaRlw0lfsWJDBH+Zty9RjxgJynEDjG
	 ARcDOSuc5NTtedyjevxZPlmo43sQUGPSeLwtkWNBrUhDRvS0ANJlFRfAwg3SYfh8QG
	 o95whxf61FS1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1985C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 06:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171420014276.11085.10160291871654103802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a3613b5dfbe05ef569fc347a2d47c5e23861dbce1e197c929888f90f0ed53f2
Date: Sat, 27 Apr 2024 06:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714200142
