Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5843E1C01
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 16:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779035434; cv=none; b=Bryl2NYVJrTBEfiEfPIDhItQiNYFX8qcyEMWZqW2tWL770V2HKW8Rs631Vx0hFHoCduY7HRg+w/uBOSKr8frGHh0m76dvys80mhuZxYzeAxPVhkox/hOw/+AHt3QGYbf8dmua0ZaEackZd5dEEQHUb/29pSRcSvdWZaflcQUgDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779035434; c=relaxed/simple;
	bh=Nos2klcQxUp6QsbMpShciukjtneUkLsM+tEbzvRjyWU=;
	h=To:Subject:From:Message-Id:Date; b=qiWt0d/4zI9PTC6CAxrdsGumiCY66yMewZuzRsVniMuPDa0IZrBsBuXLdfH/CHvsZ0ifbPdloRfG2CgWWoS635lOBDPAqj+fctxRiEUWNzNNG61kj2uqIU42GnlXTESYhUaux8Do2ji3pFD5+HNgIaSu5PjvUGvX4tmQ1aHTOi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OqMU1uXz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OqMU1uXz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C2DC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779035433;
	bh=Nos2klcQxUp6QsbMpShciukjtneUkLsM+tEbzvRjyWU=;
	h=To:Subject:From:Date:From;
	b=OqMU1uXzEJWCx5/CT2bphwSrbAhcyYab9478s2HiuQVP2bY5MNd2gd58WlQrtnznq
	 0m2AN68JXUBNxWVxs5G58gPlY9UE2J0gPjDlr4n/4cAWrZmc7MYhbsGhPiHRWzjtFl
	 8kKA9JvhbuMP8Nc+YGj1bBEqY/hH+BxgFRbcEv1iEGH1aidh37ndsZ+UN9mvsd5Caf
	 +s6uVFRLm742+sXWW+YEiYQTI/FTsOkyc9FiLST+/NYbwIDAoWlmJFyKgCygYoS7IJ
	 p+sVeZ9l8ipVByFg9wWEm6/354omPgPI/nccEQ+hNwuOyBPfno0/SUsELRmufvC80E
	 AvntJVE/wHALg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B313FCD4F4A
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177903543369.16537.18081996955747005899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e823fbf7addb36ce00d4f6220a1ae4355d0070fde378d4a7c66273afa2e7cd6c
Date: Sun, 17 May 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779035433
