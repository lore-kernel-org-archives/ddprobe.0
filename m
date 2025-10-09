Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5462D1907
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760011794; cv=none; b=bOeUBCt6sbGdV20hbfT3s8MZjvy17pLaC0P3DYfjPFzH9OhtInp1qwn02jUE02IW20HCdsto9HUxSuLeb2pi7k8wdmNPCVAgUZgWgVjUnUEJ01B4kY+UrZzJj5iPN5J955WUaREFUnXU+MXLk+pioJgTJsN4Vd9ynJcjAqSbyKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760011794; c=relaxed/simple;
	bh=ax8Hb+uKAMXRrGj2Jb8Tq0WyWSyFRWjOsSC+2fJD27E=;
	h=To:Subject:From:Message-Id:Date; b=aFT/LUBJDchn6ztzSR2S5UoJ4T3nUZ4YbIDRSJHdyhoIFKXZxR6RMAHOqAKva3pgTlzIV9wg4UL4AtyDRVf3FDC3YLQDIxxwDa544yizHQcj0Y1cr/3CGGs6+hwmSbqwC2gsgHKD3GEKTGJoU27lW/RknMiiTtKoFSw1k5p+Bpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sghguL6g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sghguL6g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AD5C4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760011793;
	bh=ax8Hb+uKAMXRrGj2Jb8Tq0WyWSyFRWjOsSC+2fJD27E=;
	h=To:Subject:From:Date:From;
	b=sghguL6g+ZECF/ugBw8Y/HygAK9D/OQmcgqwpsG/fGccGG3IAmtqjiyKUpL6TqO/w
	 YSIpQi7dOccUjDRfL87aPnDB2S6RygrCJFx2zMPJ3SU0D5u89LdtZD5IDvdFOtXeR9
	 4TNWOvmGwXzjYRV+RNt1GCY5Jb8JcUQlbODwoLP39Yl9MpREwUBPjubhrKgZQ8rJt4
	 2e0KmT0+mgvw8dCzopcavlXCqgqFXEP8pijWl2VXEYgvT5X/w017V5RMdxjCAJUps4
	 y4Hd2ZPBU1Js4DY4c5zzSkoqVLiEW/YQZrWWw+rWIHR2G1SPcvVrbABuDpN9nb9JB1
	 WQ58pru0C5dog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954F1CCD184
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176001179358.14194.6211814794036935054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79290edf4540aa81c22397f5d98bd6ccc82011d29230fc4c4380c7101656c45d
Date: Thu, 09 Oct 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760011793
