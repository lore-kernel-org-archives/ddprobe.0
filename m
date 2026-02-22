Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A7B1FB1
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771785894; cv=none; b=ozA9jLeD7XDqkXAwrJ3Q8QPgufd1+stL0yI/7ntm1s8QhpFzEpKa6TvPPfM3d1gCuy31JAL7XzKQXAUZlI2WDPQi/S7yaWfWtCkGpB92Kmu0U6LmSAgPN0JG8Yl/XO244bwuZmZ4x5DvEZb7daO9LbYbxXWBkt8JObbJx2hsxnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771785894; c=relaxed/simple;
	bh=k1MP4roDk6eTou4qI/5rVO+bxycy4DsQ1bn9ibsRiCA=;
	h=To:Subject:From:Message-Id:Date; b=jtMxa/bcQ3vEggpRlnFRu6Eq7tkMb1k7oDWY4g3ko4fDpG3x5qm2jozVMbhwOO7Hyw4rXnkswRJ4xsc1RTiiTu0N359XY6VfWVSXucx34QHMuMzDET2Bvcsywv+bBad0VTMwPpvBeikrSz1TCfLGVVz41bqH6AslqQiNLqxuOLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFzmJCBA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFzmJCBA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB832C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771785893;
	bh=k1MP4roDk6eTou4qI/5rVO+bxycy4DsQ1bn9ibsRiCA=;
	h=To:Subject:From:Date:From;
	b=OFzmJCBAVnObAWFQYKwnO4pdStWOgdK9wWVEdgYeAOG4/dNTNOtXVfzQg9VbhRQJu
	 g4ImQ7GMPDX5f6+H9qFN0RdR7hk3d+udEI60RdjgntV9g7zEZcMKzPRjWIH508qQjv
	 w7OC+4EiUordVOOzA1sSFqemRut5ZpZa0NbhtdWVYTF2jymmZIKTRQDV/HpPwdl73p
	 sCgFkha7iGTmpe1lXqb3ZWxfgMqkWc/GVkRhekak2RLLcXM8nKFbw5XF80jgak8pAv
	 SO8jd6foIqCdny1jQHRhK8yzDjSvyjZ/DpSmLHEqf3M/fQfvEX7vuXsWLQzPRHmUlN
	 Xkcj7cZf3N5kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EACC636A0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177178589358.32032.16231338313274594059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce584bbd1b5d7ebb7f78ff51b24862b4d818b1d880b862d98790f650fc23fc26
Date: Sun, 22 Feb 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771785893
