Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44230819
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 00:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720224923; cv=none; b=An4jgPGFlBiGnm8zsQV1U8rAkkjQXrOeAhR3kdVksEeS7sKRPc+J1iPOCRlxsbpdZTtx3hmOTbfY+Ux4D2WL94dviu76hg5v9fRHWZ5eaHgvn3ZrpW7AImx/Cd2OiACkuAKhy5mU/FuYietEK3KkdO47sbq2v+xvblARcOtlP2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720224923; c=relaxed/simple;
	bh=FzVSujkv0wDEkO0iMCKtV2WD9B4c5PpDo9NNd5YDMg8=;
	h=To:Subject:From:Message-Id:Date; b=tLNr5Fi9GbDegWGb0boQ8gYBA55Gq1u6Z5bdJ4TzHUxsUD8Zvr/ECBVSqKtAQJS81icBCdZ0A2EkgrZT3eQzIbggMgYREE8b1bFcI0/QosgFsvIB+BzSXEx7c0oMT/W465b+WZFkieJmXQcpLvWaTl/TJRrd+hfahUQXgZ+ga/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNBxTkgM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNBxTkgM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B58C116B1
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 00:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720224922;
	bh=FzVSujkv0wDEkO0iMCKtV2WD9B4c5PpDo9NNd5YDMg8=;
	h=To:Subject:From:Date:From;
	b=SNBxTkgM2V8hXFd23NXVAwPk9MFftmbFBIedlodq1BQ7ATl97FGH9TGB9/UhhRfWZ
	 TEdNTVfA3dHC2+yDAhDDUw69crsUbpLMq0TpIG+K/HRtPLHPRpARdoJVmvQBIgUoLt
	 FbmzfIsdpYQMWiitCQAkvFu1Hry2G32UIE29dp/BtW40ZfvSdNMz9khWLWgRi1iSKC
	 luD/zHzMHS6WjbWFEqBj5gISVWug9BKnnZOvI7Pk+A37q0TwWJDd+lRR+dT7R7qK1U
	 e8oOBmA62NeDc+XCRCzivbr2Dit2YKWJCKTVPd3hlSzIpXfmX+XLXXRfEWETwOLIkt
	 hExtiafY2eMrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D08C3271E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 00:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172022492276.1336.4985764653153747116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dd159f43bdc40717f91f501ff50b80a3a9f792ef85154def8d807626cda4575
Date: Sat, 06 Jul 2024 00:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720224922
