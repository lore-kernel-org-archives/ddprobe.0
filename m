Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2312F24
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753748994; cv=none; b=Y0RIwci1vWzOEJi0rt7K8kOInVdyeSutikRqPcAB3c3QhF2k28hiDb5X3okXg39UXVZ6Fgjw/7urGMhbORpJ866uNIwGnbbOxr+OYgSQ0JTVc2I+tcbqEVU6oy+FXiWS4tMBWVOgqCnr3cTwhEGh8lC9Kq5eOCfoc0wcLHr/ltY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753748994; c=relaxed/simple;
	bh=HZv3VtX0t7+EkwLjf0NAhFwURBEoJ2Cr+twoLyxm/Es=;
	h=To:Subject:From:Message-Id:Date; b=gvWkBJcQLRc4nVPflh/maAqenRiDWBhN0zKNyBbTMrgMWlFAWCuQQkxqCmV/DjyY2zA3x63ESh74vgmRjU6v1SqQQu6ZBRpmD1kfLNPm4Rtc0LO7u9eAjeGb383CkGsTTkvhN55NLxXfKUMxMRmt/fXFYFbw9c1qSMWquikL4rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PVeTVfnR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PVeTVfnR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78CFC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753748993;
	bh=HZv3VtX0t7+EkwLjf0NAhFwURBEoJ2Cr+twoLyxm/Es=;
	h=To:Subject:From:Date:From;
	b=PVeTVfnRzs4ZN7+LrVLtsIaYsuk5rbUQkDzw9+8NHLgE6J4joGmjF918aJ3Flf4o2
	 5Quu2+ZYKpQ73MTEKPTRxXmZ+7m0sP167KdC/jOL5lIiFcrwB5plFJiJDmDMz3AgJw
	 BRiymtUKRn6MCW6pNycuA4AR/aY/29XJKZtY+QfjAW01IKtxOO49CNPdiN35T2kr6r
	 T0zjxolF+t844jYFOGb9yEzmXjXynMk7HrlDmGKaGDtiEb+u2xq67UwMBJXgXddvKe
	 4misHf6iNBYimF91CFXXE9HqQV+cWA8Z1aRfEaEOHGocAESyT6aKp4MBTBqpsdO+3o
	 b8jaLsMtOc5WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92638C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175374899357.10474.2028003055238957637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0223966e5ab4da0f998ceda0b1aba3f9a6b7aa0409828010cd82be85bb380f1
Date: Tue, 29 Jul 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753748993
