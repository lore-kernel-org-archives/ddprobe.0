Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCC39225AD
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705512496; cv=none; b=CKFZ53+IQf5cse8tC5czWiOehlUKepukYs1nON1TDr7GgFXAPwIpr/Df8L+rrf4H9b0CVK9CtGhxi/SXFlI1Mk4yjvju/gWAp8F3c7Du3dLuef++jpEPTlb4kQ9bSex4VvZPT+I4Xe0FRvhnC/99V227Q5qGPpiSkRutSAKkjrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705512496; c=relaxed/simple;
	bh=g6tWw3zPeYy2V/6nhDj1CxZtzYJ5gwgHdCRrxdTbZuU=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=e6/ydUNdfn/OHAmJF7QJqtF7OXv35eeKCqLq4iyUi0vPugEmb1WYc5rEqqZTpkXUHfAFk56qg5nT7RtdQWB5Pim4OjMIpBtRgyTrxe/K47QZ+HMuhtt83Rt9ev4htXEU1c8aHgKjkxo9LYC9vy0Ho7+MxHqsI6/N47cM5ZEGlw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MujpAdT8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MujpAdT8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7408FC433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705512496;
	bh=g6tWw3zPeYy2V/6nhDj1CxZtzYJ5gwgHdCRrxdTbZuU=;
	h=To:Subject:From:Date:From;
	b=MujpAdT8khLe9slMqOV1l1r9a+prPKGCk/FWgFL080lOefqi32zYVsxcjvN+3l2J4
	 d3ew4T/ii0Wjs8Gos9WJf0tnePGNqy3fp3ZOq2+YVAXYuFyKyFvtzlZtBOizIA1rrD
	 sBG/md8AQNmlNPZhvmNvO7cjWe2j8AyOq3Bd4vr+ShgXKUPzJ0qyUP/43JvU0OVqSe
	 F5lKGTCwRQ5vJGAsrqMyFjdmNYg7Go5dGZznG6omWzaP5RXyccjIW/yC6ZEamz5Y9D
	 wHNyDRzEZI6A1la6RsK00WOa3isbam6Y1NcAGckFNYNN74Ytey7u1XmdAd3q3xRysZ
	 j5Qq9ZUVxktig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C979C47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170551249637.2287.15282241651387761655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42ffbbe0fb758b356a5c924eea33ad19ccf7d2a41674f38f38c81073662dfb87
Date: Wed, 17 Jan 2024 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705512496
