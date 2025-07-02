Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 129F22820A0
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751464794; cv=none; b=u4ydKyoSBxoVtxzAYkDg9cf9DkP1ebZJQl4uTVgwaexLF4MMJdjd647+IBdIT+C6unTv3xWucWGf3fVj5wSV4PFRuS5mpYT/p90P8bGOOm490wMV4aThdIbhyyze4dc0x8QyMuMK2XAzo5PEJ6cexVGZa/TvQ5IJD+4nSRHwHwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751464794; c=relaxed/simple;
	bh=78JnsvH68yB63Xuh6LXNE8G6aLY5UQq+LfQYW1MAyi4=;
	h=To:Subject:From:Message-Id:Date; b=pUGQ94/ehu8uhMQ21SlA0PK2313HI3XTlJDofFksrjMNHusn8YlTuQHqw10dIxRUSA3wZlYZbNPVeztk2K3CaZ811kFmtByE+dg3LDCGIicf2gzABCJJWbnVBEa89KO4ET6sL2sgfgE7Xk1ltXh4wEnbFqtuk7Yv3VssRM1pMp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OKWSGICw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OKWSGICw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AF1C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751464793;
	bh=78JnsvH68yB63Xuh6LXNE8G6aLY5UQq+LfQYW1MAyi4=;
	h=To:Subject:From:Date:From;
	b=OKWSGICwANC7/AkSHd/hqkhxPEYhWBfStuYga/xF0UkY3zzTJeSUmqM5xy2MQZcl2
	 TEVotZw4tljFYLIUw1MgZnihu+Sbu+4Fi/Ik3nmxB9I0QSk/byTGEPfFAK4MfG671K
	 wIZDVibUzGFXywOJN99TEC3cdwnm1/BdysiQq1lqqRA85cYN0tnBk8/OsVoby2ebal
	 1Tsp3zWpoPvK30vURU2onODDPiaatqGZqjXd3UBpvKhLgFHwV+lvLU0KSjRtT8RjK2
	 A+tNvt82VNdaP8WuJOH+XS/0HQ+ap3hmRydrE+OCjINSF/4yxg75CmUfUK/3fxczQj
	 84M1sFYwf8YeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2F5C83F04
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175146479357.9774.16708700293231146669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fbe3a489ef39371b7fdf53b6e8f5100d6af18f00d3297b577b59c495ba12b28
Date: Wed, 02 Jul 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751464793
