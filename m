Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01CCD25558
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705524497; cv=none; b=i/MAgmX8IJwHMi+4J3poWf+4K4ZWt9qh4YTPNxVcPap6QHyiOT/XMpU11qtcpK7MusR+WkwfOIqNTO5ePo6nugVwn0e6x6I0y3AbIeQIdgMRERShAgXjDFxWFQu6CZEGimDBJZXsMXOA1a3kB8izu3pIec5n503oC74IuPIuWcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705524497; c=relaxed/simple;
	bh=Ndh7ygypLfu1UhwciZCHwLNwbpOIcqpVeRAGnbxPAWk=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=DgfIx0oNiwShBJ7Z7WsxTR4pF/Nt92+HxI+w0QW64JWQ0JdYuJeAfKiDNxXiOFcF0djueXmEjxVnJT0ggkRk5ThQPNDVIa9KOwHCSxgAJzUq9ghmKNAyR5SVTwCqJnrvNw17YqQ4gBoI/T4zRIrNr6wxG4HUv88LjP+HRAJ/T88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRIMUqTi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRIMUqTi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CB2AC43394
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705524496;
	bh=Ndh7ygypLfu1UhwciZCHwLNwbpOIcqpVeRAGnbxPAWk=;
	h=To:Subject:From:Date:From;
	b=iRIMUqTizUjeHdEmg7U3piQWkIraaG+4yCpoGnF67JSb+OUY8so7tKDSewZEkW7dU
	 Z/5KWi+y63Knxa5aAVgnRhj9aQIkpIvtNCVVq78a2tSH1sv/XZO6yQtaWqA/1EvCdB
	 wCTzo02/EL8YiikixNr6i4jKmIo++7TuRzHAeejDfcSf7yFtELloI71W3Mf7ThzCwJ
	 d3OmuTKOMQaST2R4XiUEXLNjO57jph/aMBC4km8JGyX63MC1IhYU26xjRooTN81xYe
	 S0SNfYNk0ofhDbh/GEiaoJVwryOue9SDkfKyE4XCcLeWO9hRPlMELz8tphD8VJiljW
	 NqDl6mBTXaDZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 620A5C47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170552449637.11373.8912724648660076587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a3d968b2606b6342882766572ed2d7f78a50310feff589f8078f1f26ed2c017
Date: Wed, 17 Jan 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705524496
