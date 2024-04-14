Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB5528E8
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 04:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713068363; cv=none; b=dDWxjZ8jVDuVxD+otzoiOAJ55A9qI8o2gRG06ZICWxSOfVPB30A7QTXKTOyYAHOPnKfOlZP8l3JArhY8RIahUHJ7d1LsdiiEj3AYtECxEus4iWvv2UYGPLJ3bEUViQtoRBYQTT89xfjCmFvsXedn2zqF7Ng/vhdPvsGPiNkpcNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713068363; c=relaxed/simple;
	bh=OyatN7CyuJbw6dzysAMCz53xiSTt24WFr1P+B4PobTs=;
	h=To:Subject:From:Message-Id:Date; b=J2SOZG/w+LYX5DF/C5Du7YJkQ22S6x89VONhwni9lUR6nc+zyEkWO9J69iyY9Vw+xsuwCcVSYkRHKUdOqwrFCtw9TJDXcMhml0baRP7UoPWZlmM2jhci3cu+PMPC2XjJ+lM1V1JytQAvracwNRyl5NRZWhKGSgxwgFmwjV+fCUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uvup2zk+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uvup2zk+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3665C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 04:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713068362;
	bh=OyatN7CyuJbw6dzysAMCz53xiSTt24WFr1P+B4PobTs=;
	h=To:Subject:From:Date:From;
	b=Uvup2zk+UxnHV+aVGBVdPe35e7AhXwPqPnmqKGmieVT4IwO8VrnRKq56PGnx4yQKD
	 xD4UmQ2gGWwf/SqUkcRSidCCbe3ZgiTpPiF+s1tSwwDJIxGDGDw8tEq9NlbL+df+Wr
	 QSvjIClMrTe3rjSOOOHYA36BHZDdbxfBOKcPZ2/MC0kfN29CJxB2J52kDD1E8vuzsf
	 8TYxI3DmiFT8VCgpMeu2vMcfHT33jKN0NO2bC1/mzxgE6NzgLZdYSV07NysfdoHfcU
	 70YexfG4sTEQGnaUOZ9tZv8rF3fTbukQtkORtS2jlTm2XqQ7pfRrRIzO87Xv1NeGFp
	 U3LkrTcO2XJ7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE137C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 04:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171306836275.9994.12583936289489675183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5278b7ae111039b72c491d9820e3d3e4bba6e86b30dfae6679af3008bb4ccb0
Date: Sun, 14 Apr 2024 04:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713068362
