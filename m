Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2125434D90E
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761071994; cv=none; b=IlQYxtWdGcwYakYeXmClQZd4uz5Ijm6Y/qlmn4ToxyJipaoalA7/nW9iIZOEXWi3lmf1ViGhiJrVN2TGTUR3XVnyeyx9wYs1rB1ovhDZhwmTau+HBYJMbjGkR4nBcW5OvKDvJFJV+ioI/KTUd+ZORMiP/KOzdcosk/K/N96OJV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761071994; c=relaxed/simple;
	bh=PAZkJc3fPLw5o4P2o1qLJrzHujH5/7SsBvrlLFjpUxU=;
	h=To:Subject:From:Message-Id:Date; b=rJJK1UvumpgoL2xiZlOBWINXlw0gOYMKHAyhT6rrOdp8Ey1Sdpmz26/zhVG8R6fhGXROEFxl4HJl4jHW58p+kJZ4ioNctllpuCt9xrbH2FUGLU3rvwihglBhLOlzKhA3vASR8BSnUWrqijT4ide73DYyJjfkomwM/7bkFU3WI3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQ8VQjtg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQ8VQjtg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE8DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761071993;
	bh=PAZkJc3fPLw5o4P2o1qLJrzHujH5/7SsBvrlLFjpUxU=;
	h=To:Subject:From:Date:From;
	b=oQ8VQjtgtgSVfRHZMD6mYbzes/2eHLdRWQGWy7IuDgnlYWsBoRVuxMYQ2D9tcY/Pn
	 8+17oWx74hZ3kgDYogdbCJXN7R9/eHzbMrlQc8gm0kyfvfCmTZeNFW06NMvUrg4Sol
	 xCI5h94DkwZWdkjfd7/n6B5A+ehZliyn0VQWVElBzTxu/K4h5AKFUWZQxGo5o8qrZp
	 ZmcIYRV25Y5PYFJbT5ETaawRUMe7WO8yEkAaANOSmU+d7vYw1J+vLO234MpWZ0UtbM
	 DRbGbg5SaCkCL2nSLkN3Z+fADt/MIfZYrYAE60pcpNmSIQHyOu4y/SA/s1DcFbf36w
	 4VnE1T6BQNAhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90743CCD1A5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176107199358.30707.8060326104946776293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d99b0aa3bd51d2f6e666be978d811355d0c8919968a61c2e0b50691c1168e3d
Date: Tue, 21 Oct 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761071993
