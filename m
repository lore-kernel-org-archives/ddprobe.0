Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3891B23909C
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 07:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779606154; cv=none; b=EmB/Ja99gwMRCEAKcXEl+FfAN7/lLXj8Xw8Zk97Tmf67+jZ2HFvUN2KVD3NLIdUrHLZxRdBPIcCZ4Aim7IO2H+ct3K7wJugoH1P4Yi3A0s2ZPHLQ8tWVNb7lBHt/rVYzy9damevXHjxUt+V5K1AGRrtXCJW41rC6liqLfjPEJXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779606154; c=relaxed/simple;
	bh=n5tLjriESihJKp1PSyXoDTaQIB1nOu86Ueas0viH060=;
	h=To:Subject:From:Message-Id:Date; b=F2kSv71LdhqkOcCxj/R007Yg3ssPhDI5z5JggAv57tIuYNcckcH6O2OfeJ3ZLvEi0s3WvBYucuQ3KRy0RHLvdAQf1WPcJrnk0NUVLBFFz4HbYBeA96OsIVwtxL6TZd7F3/7JJOEsstXL+99AxHkjhkzzreuDsPhDZ3Rl4VjyCs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZq5Xogp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZq5Xogp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8847C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 07:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779606153;
	bh=n5tLjriESihJKp1PSyXoDTaQIB1nOu86Ueas0viH060=;
	h=To:Subject:From:Date:From;
	b=LZq5XogpHRKcJQWcHn/ru9VmI/9mTXq3VzUHM2xuDs40KmDoQPYveD6qK+stWB0TD
	 DoN4f54cyhqCd6FgIj25P37YlHfAMpO9+HKx+pK5I0ht7Tad8BLmuW/Ej+sYPgzp+v
	 rc+vIRZenfPE5+dyyfsBtqjrGKwkcY3z6d81Cv4BrgYDLuoroxYsbTmtBwzLOdTE1Q
	 tU2pLqe4J98GQSgndL0qiUS+bu5xOJKFgYjkellMhlArIX6NaE7uNG9S/xLFBJkV32
	 B3Nb+kbrFWjo99S2jGohAQQhwMaIhgIDunI4zbBI+sLy2eUQodikTRJWtM8Ey2x+ln
	 GiLe4/D+grCZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0095CD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 07:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177960615369.25102.9304921667506713531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51add53e0cc175caca7d2c73cc0a95f551d92439ae35306d9908518d0a469ffd
Date: Sun, 24 May 2026 07:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779606153
