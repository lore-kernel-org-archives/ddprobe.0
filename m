Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C411E484
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 04:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714193543; cv=none; b=hTlRrPGBPq/naMcHEKeHVZV/lT5ad9Mf2ttUM7JJeuQvSvcilQaZPSlzTDnSPShVA/Yy1Rqbp/33Qf8E7grZ8qxuIEM8M911KbMe6UW087mcWOEoDyz9aq/GSfUmR2JOx1uX+ikJmOLx7/bysfCU4SRMyWnymIgjRc3NZD8c3hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714193543; c=relaxed/simple;
	bh=Kd1A9CReDrJqXL4kvwXmTGQpzX8ZI7/tmfGoBD5ItoE=;
	h=To:Subject:From:Message-Id:Date; b=mWDndM8Tw1ilP53V3NlrNSqN8y+MIMfonLviBrinKGoor0Jq95s80osNQr+xcaeKXHiMCe3LPKExJgFfN2Ei3uYNYLxK/1WggvBwjLjnV7A+bdRe/cJ5bI0yR3YHsjxy5NY4AJWx6qeWOkFrjxzoYe+vr+D+cdtovaDPVCw4hO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNEQG0Pd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNEQG0Pd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF11C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 04:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714193542;
	bh=Kd1A9CReDrJqXL4kvwXmTGQpzX8ZI7/tmfGoBD5ItoE=;
	h=To:Subject:From:Date:From;
	b=GNEQG0PdiEZFEBe28Eafsrz8Xn9J1xNlFp6jP+qGYLcrrsyLbodC1cPlzgQ+DdP0D
	 p0oYKvShNFfnppCPONQzW9eNSkpOG/FjiCZkd55XSKYeWFn0ekbQLDlViKpIsths5q
	 YefJlQvVjHoLWra0tz8z88GY8UtLTRXenUCKulIrsSOKcyJ3DW/cukDxuSknluvAFU
	 is0A2jx1m4OQYqKhHgf9W70TpqiuK98dM6O8CPDt+16M9TYUKOskaHzrGM8M2aptBG
	 lZLE/tegwha3Ep/Z2Fvq51f12CtsFConoijTEvl03rp5Kj/PXnJB3q3f1AkZ5+z57z
	 zGdzsEjWucOJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC04CC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 04:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171419354276.4378.10897438934603917623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e35145c17297121fc91b523572434f4ac84a1df5d77700f2b7e7c0e853cca3ed
Date: Sat, 27 Apr 2024 04:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714193542
