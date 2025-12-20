Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B321EB195
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766216034; cv=none; b=PpXifiJfUVxGiVeba3NSO8MUXJBLJppWyC5AEbTZIK8VkreQw3JthUw9sUVORAmYUePVQPGPVuHlmZXE26RKNZ2X/7GupT/1oXoMI1EU+TreQmUmkeEQDtNED1RHoB0dSibGrVTXLDZ9NeD0YxYAYrYY2V97y4uqZ68OAZ9/XSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766216034; c=relaxed/simple;
	bh=8UnHdArZhikyZJkkBGe+wAUOc2RW+cNkwz6q7PgejJc=;
	h=To:Subject:From:Message-Id:Date; b=VAvqH3s/o78dUFSceslCUiEdZP02T9d/w4fpy/67NJKjut/U3bQe0rnfKCbvCR1/z7rwmQ/NYeQzUmHVTRRkSEy9VKPnpmclPdpPh3BxKxbOODEBi2yS9ldfgZCOOaDVX/ixBOiN4koU80mTz49lBHNEISVXHQENy3i5agqHCQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YbiZmjvo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YbiZmjvo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2772C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766216033;
	bh=8UnHdArZhikyZJkkBGe+wAUOc2RW+cNkwz6q7PgejJc=;
	h=To:Subject:From:Date:From;
	b=YbiZmjvoyD3+bJKBFZ7W5c0ZifuFA+5bXN9BNn95ZzhWVzwECOS+uNTFuKzxPZg3v
	 eeI3dCOvmdQfSFledBA9TGPhXVOorV3iM6hiPlz+ykF1v6PAF5XTMllUk1BGKZJdEV
	 Blag8v/OzTP6f9IHq8p9VYfckQpWAIlE4Nf2G6tPEXfl+yrgOVe5m1D/RI8kFvzCnj
	 vARsbVeMK4MSzXpDJ9xPL/345tj2qMCdMyfvKWs+WgBeg3VBgvfccsAClSq9wrEAVR
	 qj20gNDSQTk6RkwQirSJJAv9Ov6o+F/E0tIrkVbUyUia8t0wSDG4JMAtafCUTiQSRN
	 XYfsyJhTT4KHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D86E668AF
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176621603358.13570.11316822653284120075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c806f7bd5133ae9b42a80e3e523d34bdd094debe92e96193b0a5a4c9676c77d
Date: Sat, 20 Dec 2025 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766216033
