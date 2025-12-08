Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8DDEAC7
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 17:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765213374; cv=none; b=C1AV8R1RQNHAUlnl4TrRuOrS4MnfUFW9l2ET4Vn5xUW4BpH+iOb4+PQQeGKU4zCU6CyhG4NRM16YvYduJUYF7gnMii6Ek8rQBOlmGIqj3yZOeIwKcnYOKTbKSx2mUKD7lT+rojWwCciL6kDj9Nq5SW165qsFuKfk6ZOixxkJC24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765213374; c=relaxed/simple;
	bh=DN6D2omON3/qysLCzbrAY3z+8JfHca+rUgacGOL11IM=;
	h=To:Subject:From:Message-Id:Date; b=AsJieEhz3iDPKBTvs5kBSsamLSAtBUWdj708OqW7KI7Na7etTz9F9aZR2j6IUUSxtBs4owmHoUKNjEnEyY3ZdLH3mmqhx5yPX2hz1zmEfk3QbZ1Zk7jzk+gM+W74QQ8lLO+ydhY8rrFBjudn9xe040SzcQGN2XbNBbrrioX1Zkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MkL45vIA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MkL45vIA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6DE9C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 17:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765213373;
	bh=DN6D2omON3/qysLCzbrAY3z+8JfHca+rUgacGOL11IM=;
	h=To:Subject:From:Date:From;
	b=MkL45vIAjUhoA4wQZ31/eynHTeGDfDIQOFq7r8rLXfh0VEBXMsHCQrTI8NJvnWhvX
	 1V/s8aREF/fbi1fSQUIhA0FFO93JINFMG3UCejjrd8hOBqzV5cYGLKpH3lAnC3TsGL
	 /50XV9jC1or4r5Nm9hJOhYr0apQrZYKMron6NIBrSks0srK1jhZUAOeBJV20jQKaCr
	 0rsbjp9xE4SL5zWob6KZTX8UAIwiUlnqDKLVvahsi3PaEIj8g9qiaETuV1cM3NQfMY
	 xNBNjrlokn2uNHz1QbcyxypMLHQHYdiQGBnB6YX9Xq/BwFgJPybTGlxdsEZEy+t2Xa
	 lDtvV5rU4aJ9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1961D3B7E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 17:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176521337363.26518.7439341159821632211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66db2581f227af1cbf811ba05decd2ec64ae635bc31723f713fccb1baf267009
Date: Mon, 08 Dec 2025 17:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765213373
