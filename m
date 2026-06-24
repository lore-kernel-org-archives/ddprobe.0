Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2A3242D67
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 18:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782327454; cv=none; b=UK1mLHOe50wJBjMvkzpLz1Kh+5z4tcsuTRzxsddEWNE23GOwN/ngcrIOmTDskocpX0e2uN8EeUMk7NadMWR5lD1CgTIc9/Gqegq9eK2QGHCWB6IAmqoLHeiEyNIgPpB3wwhEvyLVAAHJDqVFIOuDcNtGNWtw1L97o06oZmLpL2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782327454; c=relaxed/simple;
	bh=XYah7hC2AB4K55ugfZZCXY5gvKJ09A7mg+ovSA0wvYg=;
	h=To:Subject:From:Message-Id:Date; b=gKqdb6J9DXDwPkcEf7hAD/re8kEuh5T2CUPbKWmX+eedbTH+4Iktw9994DPkVG6CzDf79Tv2tlGryhxrFXmA5KWgdhiFS9wl/QJ9LkvWvsQAkrnGInJD0JKO9dcOBva7WepJonUgzmfUvhw8TBXfk8PmHR6C+aGTzjlvUsN/pL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uhke53DL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uhke53DL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9CE8C19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782327453;
	bh=XYah7hC2AB4K55ugfZZCXY5gvKJ09A7mg+ovSA0wvYg=;
	h=To:Subject:From:Date:From;
	b=Uhke53DLUsEqlvMPCGu+Yt4NcLKYm/UE3in98HR0QDtyGxNyM/KfHKQdoDg2IP2Uo
	 uBbU77eBYnuYqXUqv9Q4dyPl3vn3GINJRxdIuzM3fTPYjMONvSvBLecvVqIYzpR1xF
	 jtRzduICHF3Bjs7pp9doqCmNE86JUZ7qggnjgn8eAhdmUdszRNKZOqETwEgRM0NRay
	 /cPA3rPMyk6j3SKXgFfELSFBv0zrsX6B8mizMErG6STIL/czETtmMU9AOkbRBlgZnz
	 tUme+FxhzwaoaFDs981toXa0pwIdGSndYQVrq6hLwrKlqvASwO11vi4vmeR2Sf8EhT
	 eUL81nYRdchgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5EC6CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178232745373.14746.15661994864903928584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 950a7ae0641bd6e36cd236f250d5048e57a02826a4be1b03dc886bf872dcf086
Date: Wed, 24 Jun 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782327453
