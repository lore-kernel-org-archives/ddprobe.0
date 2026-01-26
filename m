Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AB52EC090
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769414034; cv=none; b=c9yPvXpbZx09pi04H3x1Ken+02c9ZKr7Tv17JdMYf/DCoMfTBN1he0zpWWVaPpg/6btTBS4ydqVXQ4Kduwjlu3g8qbFCZQeYtFiT6cFLoAMOaTD/8A/b5u+zggXXmj0SezGsMXbID67CZ9Mo4pcp1KDbTf8XyyMO7OpzO+i5hfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769414034; c=relaxed/simple;
	bh=fWdhOPkoFUHbIv7NrphDKNNQ1LaMXqXydZ27bKu8k+U=;
	h=To:Subject:From:Message-Id:Date; b=uKYwqOxnDo3FuvXjkT2402+aXNoSmlibhhK20yUO0T0bgpzg5xOH+Fanvl8hPS/jdF+Culwux3/9avg7oTkaDoZRXh8m3F0SuvAYABBRiK9MObzIWZf7hMKtnzD2pIS0pYhaMwVzh2tjZE8HUKfa//I62QPaxL1vxa6aSpkuWJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCNzI9ai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCNzI9ai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEC8C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769414033;
	bh=fWdhOPkoFUHbIv7NrphDKNNQ1LaMXqXydZ27bKu8k+U=;
	h=To:Subject:From:Date:From;
	b=NCNzI9aiZ90aCRBee/KPD06PrW1ru2PPM/r45qCprk42guYme0v8W9uGyRqXN3LX4
	 tLF4ntSq/WzLWCwGDi9/FAN1acPR8sCvBQPvuPTH9EX1nMW9Le8a3GwXN/C6YWthLu
	 uLqt7mZZqGmp8mcePHlaoPphMp1Md3MR7rMkczoceniQp+r6Tufl8kmsorRD2hGQVu
	 85+mf1TVkUnnmw4MhWpi4gQiwJ0ljd/4UkLg7zC/DdNjiDRJ+JiTuY4v60UOF+um1F
	 0Wof7dIlB/iKcgKR7fcXbprIspZvFTpVqp6c++PUeIg3Y/JyTG+9l+JsnwlD+kG6Qx
	 hBSurGV3fBcKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AAAC88E64
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176941403358.29334.12995433334369118562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9888aeb67d657498a0781cd203ba68daa4fcb57938626608bb8b09ede7325415
Date: Mon, 26 Jan 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769414033
