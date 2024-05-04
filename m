Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C6AEEB2
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 10:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714818143; cv=none; b=X1T8Cthz8QJ1c+bV5PD+jGklKVbMk20GXVRvcGmliKodpBllcStBkARqRYpbh0KnAgvw0UNvcPkWl2KfpOeQUaRzSgVJhF3FYkXVjdXsZ/rxYMn1tcX1vZJSLHosS+0U0nzR0E5EB8zwZbugNRLQO4kTxRCiECVITjqe83+hLGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714818143; c=relaxed/simple;
	bh=WiBrbrO2b8KxvCCq7tGtKlYjxVNo9pePuKQP4/rvZMM=;
	h=To:Subject:From:Message-Id:Date; b=fH7gIDVrYvviqgelso1rr6wi86cVSr+9ho2/F+ZAcWkgdTTSIexvcl+BII356FNyUyMvMrHbYvNjr2xaqeKEk1/EWgIzDDBdjNBIgI5cb7ZnazoInHu85gZop0nSaqg3HdOq0VdQzQ99wDfjxDiqWobrcAgOLEJIUY4C1D5YjXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/zZlzXT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/zZlzXT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC8CC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 10:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714818142;
	bh=WiBrbrO2b8KxvCCq7tGtKlYjxVNo9pePuKQP4/rvZMM=;
	h=To:Subject:From:Date:From;
	b=E/zZlzXTCLYSagqSy5mjafYfyQrxdIvBgBXTkaRB9cctyFjMOESoc8lXHcV+aU/Lw
	 EdTstUowciZ3hqv5VvaM5yq4Dl00HQYHR4JhGz68hWXnJJcQ0kBbYk3R5D4F/xrdgD
	 Gliu1mhBWEJ/BB/FB3HEI2IWyNj3uYhu1Zaun+NCQLerfz9oPMYELW78OEQGJSCjSZ
	 HXeWh0SpuPWoxEgUt/TWwTO7yyWsLb8pZR9MLcDfdA6TA4lJzuOspBnSJmHZ4I9P2Z
	 lGTzWqgYvjjEKNlhiYYJF7rOgLRZo52YJV4njj64uTLgs7ncQOwRZyyj6+aMyVXBmV
	 33BBv+796C+Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C884CC4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 10:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171481814278.9571.12657230982371029965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baca8c3c7a3534acfb57eaae402fb0457f466aec8f7dccf30f0d9efb254c93dc
Date: Sat, 04 May 2024 10:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714818142
