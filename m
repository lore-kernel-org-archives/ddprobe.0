Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D627A29
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705888697; cv=none; b=C0Qc1pyfKvdcBoICmtbgz/uO84eIWExee4rAexyax2mdtv7UDj1os8TCLnQqpZ2jXmvUzYuDR9T+dowGpsGfvQpiHLx0I9UxgUyqi8iEFUwXvhR/TfC1BNyWDKUGIXjh+fL3hwKjYvqyk/VvLmkJ8uRQ1ZK+v/wUJF2w5CK8+rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705888697; c=relaxed/simple;
	bh=xJYWFzoUxRXp+r/DYUPaA6E4K6d+Ufn2EAIGVcPywpw=;
	h=To:Subject:From:Message-Id:Date; b=XfgLAX52ZUIxGbe11qmTKAjg9dzZNDHXVNdP/O1p4BivgAlOhv9tFYk+5L3VN/SmHNt7U+E1V260GmzNpSSsBmsNJr9OpW4fQ9Z0RoDmIsjBue9+G8U91wLk5Ttty2aj9Owv33kuL1Tp84xrc9XzgmZebcDfQvWwR5QWg86DXqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUXamOPM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUXamOPM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75B3DC433C7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705888696;
	bh=xJYWFzoUxRXp+r/DYUPaA6E4K6d+Ufn2EAIGVcPywpw=;
	h=To:Subject:From:Date:From;
	b=UUXamOPMyiiig6oiNIuQMY45LdM9F506dgTkywGTXJO28t+6QZXrVVIVCIk4ZMizK
	 osBQ1MzfIQiaQKxBPhJJ468ZNmjD9nhtaF2AszyMJsTcA1THRbwXfmRutR2WCesNsU
	 fuxypFpZOQPli/G0UUsGftFswLye0wOleO0P/6kdlu5mQPJMoPjX5HifxAt63dYuLS
	 RIPSVgDyfJOO8Fg/wCmJv8KNVBL4XsAbqF3INEnUvnu16r34o6Ie8WryhwaI0H/SLM
	 ML4fPsrmFbN/wKwe+aUO8a0e+oVsXqgUrSwmSnP1AXL3iwFxukDBdlrX6ehXepMXX5
	 CW+s5TXgkfQlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FF1BC47422
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170588869636.32053.9515401349465327559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86431d6070fd9cab3c7ed458743a4512e233db2171df7aad748dd5a0e34ce7f9
Date: Mon, 22 Jan 2024 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705888696
