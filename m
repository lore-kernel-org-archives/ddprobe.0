Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75EBD1CA92
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 12:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720355183; cv=none; b=fpIRS0L6tSFRWt2xRNpt4NItZJjzzykqYApyY5LgY8sNPf+o5BHKABWyz2MTX9XO0QuJ5ag1QNfCFUOR8dMAnVqX7/1VizWhdYY7Wpcgreukl/ErRH+TR/P6qcnFlCdVZusUCwUWJcqK8CablZnUtwga0hDbOq9DZs/Ew9w6qWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720355183; c=relaxed/simple;
	bh=fx71zIbCeYeF0gKdFIZ76EiBWkL/TJAjLW+KJIau2ao=;
	h=To:Subject:From:Message-Id:Date; b=A3/kiR2l0Q3rYAPhLuT6ybgdECB6tJqRKM056OSifjQGz/cH/5bsokSgpLtFy4BXNxL5COnKxZ4EQv3cYyirWg+tzG9lHwKTnBxG6OMhy8wA8cDd+R45LBgzX71FEqpDwB4Jx03tBVd5bmKgIyx2wzVuo4p31UXZLh8PdPuzttQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ouYvbHMd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouYvbHMd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA95CC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 12:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720355182;
	bh=fx71zIbCeYeF0gKdFIZ76EiBWkL/TJAjLW+KJIau2ao=;
	h=To:Subject:From:Date:From;
	b=ouYvbHMdGMNb9/t7FeFV2B4u0E6Jzos9yLGHjzpCv4u+o3ufVCzfwdTSBjuQZ0NvZ
	 p0kwaOmvchM6zdFlDz+SzWit2R4C0S2B6u7H3Y4gWdHDs5eePu/2xI/gXI83zhxELZ
	 stWyr59cheRV1JhQVbkCJKyOOD4PrqxGkiA3/7rzU0C2OG27HCSr8ZpEKYXAjkMPwD
	 gwZL++ci5hx+eOVxk1JOs4AxJLpW0ZjU1LOMpXpLfbnMjHF8FwQnMVWrS8phKgdvR/
	 A8DXVaJ4UP0SiXXE5W3zN2n/AfDEXEbc0YmjxRl4aMCUu3smrHujmFm9q8q2yGzTU1
	 TQUC8GOPq9UyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C05BCC30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 12:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172035518275.5128.10686785939896873036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5f26704275795c1a94d314748657a5aa3fe1a982f1490c0dfd7c09122c6169a
Date: Sun, 07 Jul 2024 12:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720355182
