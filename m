Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB213570C5
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756304994; cv=none; b=E79bReCxUUbEgWLFw/xL33mTUiRdLvluC3oTqxoiwF5rQfwEC8hh6Xi1eR3lPnkgWWlcb2H0TDAPBxE+NhdQ81zEKP9Tk1Br2dtXjbHWPhUy17JP0JXnepIIoKMRvG4T2BsPdrSAo4w6w+buxkqwRgrqpHb3augFs0QIwCCzMLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756304994; c=relaxed/simple;
	bh=UdbViM2iBLTPdCt91D9B346leeOKbQR877papKR5Uak=;
	h=To:Subject:From:Message-Id:Date; b=TQrktGeGnTN38YT/RiKGTrLpVT+aVL8ejMDUREH1rgFkLPvqg2DmTyahuJ/EQfwB/WMqPsQxh2IoBnSYAsow96kV+lGAKPKR45srLbH2bpVX2TzagB4c7zF2YS+ZndTzHOi7Ji3xcah+y4T8QmcAEMRgy3RuC6vLXfhA/oGJeaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncVXOM3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncVXOM3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A065EC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756304993;
	bh=UdbViM2iBLTPdCt91D9B346leeOKbQR877papKR5Uak=;
	h=To:Subject:From:Date:From;
	b=ncVXOM3VOCMx3CvLtxN7FSfulNZVs2SJx4LCQt3X+L7qsn49AF82DOG2+gZieVwWs
	 LVxF41Ow3JuvBLb4hNayBHNnq43ulnwoM+AmULAI/K+VbkuJhfMV0blG2ldUA059Eb
	 YBbgyDHzw7EjK3SnunNA7v7nWbXIbRBQ5pmN6iM64TCF0YpKBHdrab6u1XcAxYd4n1
	 60uQeRaX1I59ngMCP6DMQX+ZqkMOWU/WXwN/tSmHRB9oDnY64GDHtoCE980D2jRCNR
	 DIQabNyMOWX5smoir6g/vz+cSLzaCdz196kZtEFazP7lTle69UJycKI5rk6yjcVbfJ
	 Hu41s+xhFMX8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9184CCA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175630499357.14814.6793318611689054883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2eaa52b7683d3f050bb3af97ca622631557084b8be39376d16cdfe1ad749009
Date: Wed, 27 Aug 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756304993
