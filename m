Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC971F03CD
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733343954; cv=none; b=szIt5Ur3PeDm4L+pAS859T7/La0nlS0uhWA+0hBlyi+culp9P70cmWjabv0dk1ryfsONl+9TAtUyPsaX423BX5iIwv1Iqk1qZAANhrdknmeh55EVobJQHYaAwR4YJ/SCxWKaH61YbXfxT01Wie/lt44Mf+XWR7Ar9W/maPhj2eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733343954; c=relaxed/simple;
	bh=QbkrxPdcJ90RFDO1YKM34U+xGDA46bMjLTDj9ddHdSM=;
	h=To:Subject:From:Message-Id:Date; b=Srk8ScHVqDiycJxR0anariUPauMXxZ7MgNqqNkGa8sv13NO2aES3GKvQOdtytuDJWC34IueWmY5s3q+IPHdC+mj3AM02qc02T8S1ArVCNPwqOy91518FKIU6eiXgxViAuZVuxaeHaOAnKU4ni4otdHlp4D1SSuFIeM6LwWuvmKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dSknbFS9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dSknbFS9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85B9C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733343953;
	bh=QbkrxPdcJ90RFDO1YKM34U+xGDA46bMjLTDj9ddHdSM=;
	h=To:Subject:From:Date:From;
	b=dSknbFS9gx7vopJIXFpg2uMBUZbW0cR7a0PKVvW9+9Dxo1gefH2ZmQtGtjFToyran
	 JFcpSp6b50lI7fZhZdw8nFinsbbNwYc11TTDsMXxS7BD4cKem6R0qApvLEH3xX1yJN
	 ocF25bGu2Q3Kyy8wepqhX6izYYqlCW+1n/D5xkXVJOqtJrgexVJPSQ2ib2LgczMUO8
	 8UelErFM9nEHMTqXXl0UJnMcWgsdpZXW0VuXfLmqYM54c8bjJSYMfJBZjvQT6TxcIL
	 up4SSAqGF7ejY5WaaZy/+hRPU+gg9plVVRGYcDdTE5TDinSaWPUWIwdev95tAWf1Oh
	 hZq0njQwP9liw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A112AE7716D
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173334395363.31984.4167919969997230441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaf64541f57644d99ad2227e8ae4fb711f00730d26ed0cd166438a37189bdf76
Date: Wed, 04 Dec 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733343953
