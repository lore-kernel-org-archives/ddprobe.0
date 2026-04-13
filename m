Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC3E732863D
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 16:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776099454; cv=none; b=cE2eLsgrZIcH6kWTRnFMpjY50k2GjNcKuAYszZgrSOahCJgAwgBLki5/fatXD+wvwr02zsxAYogUfNUGCj8BTJ4428iarR0HylvbX3zNgE8UD4QiFDwtVuamGoaTA1y5u4kEommyhEUmFgyyX7p2q9njYZTuo0po86/zN/R4WV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776099454; c=relaxed/simple;
	bh=6FTrzHxDylQT6Ea1iXiVgv2G0Je774tNbsWv0L31Fkk=;
	h=To:Subject:From:Message-Id:Date; b=hOlNMAQ6Jh8AP8i/qpokyvflbxyQgmuZVJwOMO0ZMFEq3fToqVU4j0mrbvpRk4RJ4FChHe+MdlDQnlQFxk2kIrITP9s1xhGvt8UhqeEtVKo4RGIY7WqJ9hzMIys9ldn+baLV1GJSYt6frcXXJXLN87IZTvoT/wlNBISLX1jo5UM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJUqwHv5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJUqwHv5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB829C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776099453;
	bh=6FTrzHxDylQT6Ea1iXiVgv2G0Je774tNbsWv0L31Fkk=;
	h=To:Subject:From:Date:From;
	b=qJUqwHv5XGExUXI6rlwU8UlY86jyHHoQWFz/7ytjLj+c0p9uOc8uDiM8Ezl5fdOXS
	 qvSy5ZtZoSOxei61zCrXTAYLGhtv5w13ligSHfiNcDCtbBUCIkLqPAhoYL51kEZKOW
	 AtscKz5bYmvDrNXwe0NyJoltPvMaQ3bKF31FsxyO9zifV7oVNMCDDlPjVfPnoGZewr
	 64P19/G/owPzD6cskA1zTMOE8Ke3DYS8X8ibESc3lwszUxNR49a4zugf0B0h9KUxNm
	 WPL7gJNtRVoboIODAyjsjsyj0KEpIvtisDXWZ2Gopf0lGECZlcm1nb5DWnMOHLDw03
	 nwh/GpxA5tArQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC32EF34C63
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177609945369.24271.17274338899079547592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 152b874ab861e8f68b9d5620128505eb1b608b7972d2d161ea6bbfda8dd706a0
Date: Mon, 13 Apr 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776099453
