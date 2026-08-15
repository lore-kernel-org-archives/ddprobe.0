Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EF417745
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 09:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786784434; cv=none; b=JBhL+Of6JViNOUMgA0Z1jyldBO2xs9h6B8STb/mEnhePrQ4nuq8w+gA8c4Yq+WS/sWsAbM2SsDfg76c7/R+pUMhH0wtIH/WBVDXijTJRIv0G1s78wY1kQMEvvyBXiX5v2513//HABYU7EjuvvbJjSpbdtFVbA+ME3pEk/kCp18g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786784434; c=relaxed/simple;
	bh=suB6gS1y3IArG9wBy8hX08dr6Kb9+nbq1AbLKfID7oI=;
	h=To:Subject:From:Message-Id:Date; b=I2khQsmP+orCQELhw9+wupbIvMBQXOdV9C4uNfnf8v2wfEK952LlycpvakPNC+tL0YEW4+9YO8n9RI+IorBpNQ/l70+gSZ14wN5B3Bjk7pAcBlfq5Tx8p60Ol13angRqaw3eEaB46rK+jMoug+D3jHkuJM7WkwqbxOCR04zZdwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLaBG4FO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLaBG4FO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C36EBC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786784433;
	bh=suB6gS1y3IArG9wBy8hX08dr6Kb9+nbq1AbLKfID7oI=;
	h=To:Subject:From:Date:From;
	b=HLaBG4FOmn5OcHF7yRXQLbDs/hzGdrjEZ/kMgUfmC+Gp2ZfafuH4kUiAG5zRDy/ui
	 2wVUqL5U7Pv7OQPnEM9OBrgCqVy7GG9DaKyBdzdJq7u2SM04DYsVmjVafz7Rl9lQWU
	 G3bN4oCn1lCBNvz2tDxtrOvzfzIo+DYQAgldaFxBNRtlzF+h2SyTEpzU0TRYJRj/ac
	 8pi98WKUSq0jAfDRJv3GFAE5snEqCMPRvyxGG2u8zg0edTPaW1xFBAbzDSgTHcuyiU
	 T8mg83U7D2qoNEoMt5RjYMKHFayN7Sjh1pFlq0IVXeFWGK5GOH8wp/o1JOJ4yemJ4x
	 HoHw7VrIIqcRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C0AC5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178678443368.18463.5224506836114192678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2221d7460f33fb6318aa517c94fb6ad95ebf40931a01ad27b4858b1b40c14f27
Date: Sat, 15 Aug 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786784433
