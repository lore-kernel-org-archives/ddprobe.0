Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABCD222581
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750762194; cv=none; b=Xl3IibbiGXySo6MvDpKFhhrcXtUFqmqBSogxqyqD0O4R4XaCMcy1aG9fqPaMZGemCHYu7Tu4CTEtfuUIN5YIgAwxNTSl/u/C5E4+dseZueSvKtf0JmQoojh1sPFPN65DTskaeV03FjsDLzoWzni5NlfJAJk7kQUeR6S/h9MVpdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750762194; c=relaxed/simple;
	bh=Z5t7PBtyXDdoM5Mb5tOQk2MPp5Blq5QvTpsolrbTZnI=;
	h=To:Subject:From:Message-Id:Date; b=Ino2Rh7ys93zUR5SAl6XFmhwvYcyCPv9mib+m9uh1da1Z3ptFZS7IlWQ7cKQOqk6bZneR93CbHaYmEg6TEw5kL2g7dorgtO688XPQU7aRPHDkGKqwazMDaC6HA1bbuc7yXMp9NHDkSWGzw6UzSC0i1X/+r/+sOd6brIbnPSIOCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H820ogWq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H820ogWq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1145C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750762193;
	bh=Z5t7PBtyXDdoM5Mb5tOQk2MPp5Blq5QvTpsolrbTZnI=;
	h=To:Subject:From:Date:From;
	b=H820ogWqm9SGRXEzJuN3KhVKmnQs1vspTCxC5VSyob7qYs17OTAvGPELGjGbgqErc
	 Ur+M9sQtK7NWMs4rq9QsBH0qykupiOcqRre7BMLZtVZk3Y4ZBU8tNMJ6D4xOa2FonL
	 SU7vtGkwTjFmbK5sakK5mtGUWBrEoQtVuLxJfjMPd8fJF8bQc48BLUGhHSk2qQzV4i
	 1MU5zDGRszS1Hcr9i2MyGMihGbLGvUOoR4UZKM1I5a3JjyGjWJf3cTHVnX8Lp9F5e6
	 rfpj7Pi+uVtg0BJH9AJ6XjXKNYgQXeDwJl0mlHg3BfpJ2ggBvdvOXjbsLi8RIymI+d
	 9h4PuGUycVv2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E229C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175076219357.741.10678241020552726957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fdb2ed254a2339141b43d070d099a09b38ba9c958479f982493396f4c102cd7
Date: Tue, 24 Jun 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750762193
