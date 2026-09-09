Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7BBE4AB1D5
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788994834; cv=none; b=ELrTFwfYMAMReCG1cLxVA5zcET0oKqnzwj88iWCOKoaVZXizYoNlJPG/8zsy5UGNzARje86MhwkiPuwLIkHTNlyKONXzepwtAbuGvquJl4PLGGbLodGENHCMUCoG5XCSsOfOTk/msYOr1lzMO9NpvTO/+IDpagEbqCb1GeAKUdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788994834; c=relaxed/simple;
	bh=GMh95+nXPSc+sMMvJx3TuC2gwJeaOSa1eK3AS40YBHQ=;
	h=To:Subject:From:Message-Id:Date; b=tzxaOP/EP/ZA0b2gvUkXC+aGhboOY+12n3gm9nVTyKaMHmTXZHI/r3s3smPFciubFUtM9tY8pvHvmwU1gWx/F0kI709vo2ddKfBNkkdoHPjsCBoed+99gfPyFVKlU9AELpABDgRKvKAZcqc3RSAU2XQlZuHpg61oXKQYhVZ+U3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8F1YAPu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8F1YAPu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53AFC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788994833;
	bh=GMh95+nXPSc+sMMvJx3TuC2gwJeaOSa1eK3AS40YBHQ=;
	h=To:Subject:From:Date:From;
	b=M8F1YAPuiR8htsBxlNq1VU0RB3PtBrqFWS6970QHVU2ZC+tfB8tMPBFYJY26HEv75
	 sLckhCHM6Hia3vwO4JIk8plCirIuPfBAppBL4WGHocgCcytFcKfbYRQTS6SFaaV8uY
	 vYIggtfcp1mAIWtrc9uGIHYlCbtf8e1Q7u2VqhJZiwEVd4CcpayVEA1qBwXK6GoqSH
	 g7xFOjm6+KnjTbcS0AwBBBCXJCettdxw0WCqVYyUqrrzJcTUFTQqSdqizTd8VKMg7w
	 My1kXe2OC3tujmnaMKr/lzSGvY1/R7dnAyWShjwrKZ/uDtvs+fSazNzauob3IoLEXn
	 rgSsWNYgI8b3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC066C79FB7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178899483369.4559.15051549103024152764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9efaff2dc5b445d77fe996d7226ff50fcb2b8218f91d6d32ef380abc054ef230
Date: Wed, 09 Sep 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788994833
