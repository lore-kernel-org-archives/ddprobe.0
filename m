Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301E827F16A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753081794; cv=none; b=PGAShPkgAXhqdCGTG3PpC/H+/Q13qIqX1lbgXvvkoQ2zOK6V/G5URL14S4oxeO6wB4R+5nAJCHaqNzV+wKG4RDWNymd9wJ0/26rNyG/wTRe1UP3024XIySBf0/tBV8ja61Sbjlh8dEMAM4pe/BB1O8r9eo/IJndW+ZKTBXYUFcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753081794; c=relaxed/simple;
	bh=+Iepuz0KXbJtraFnosL1wSlAfu0/CGFsQO4lyFxPFbk=;
	h=To:Subject:From:Message-Id:Date; b=tiC42An0Chjs7Jb0paXQn7WakAiGAf4d54eP4Vj8MNOs28iknU/vJoSk4u7LvlwBU0ULWgJpe94YaJdRVEhXeoJit3gUY7ciYcztfpW/aESf2EGxYmaG/U8ms8UJAKwjBLLncm4pffVT5iz3wQNS0JTtx8+wmvqjY67GHRgw3rU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Epw5XKtN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Epw5XKtN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DE9C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753081793;
	bh=+Iepuz0KXbJtraFnosL1wSlAfu0/CGFsQO4lyFxPFbk=;
	h=To:Subject:From:Date:From;
	b=Epw5XKtNGON3gJtMxFiKz4KSxKBiMl93O3uJzYDdTHGtqxiTpSktHDX2saZ3Kgspm
	 6nndO/6z2GfxxPn8lCpOWYlkwpE+DbCfi8onefcRpp/WzNqDeXhxzPmMdayEqTPlb9
	 5two7tIzLWoOc1h4M2KpGdT+BjUhYPLmmrCm0azL42wOHdnG1QlQrXq/LlFaCqT4M7
	 oK4SmTRLK+CKY3aJxL7Q9AOB6lPJGnx6y1d0NrBbPBJulsOh2a1WA5AEaAKn6bzRVZ
	 hsbr/Amf3JyWp/dcqlEOe4JfkHbSbva5KFITA6AylRCwbhy80TlftHlmZkPyeZ0SBY
	 DQKkUSzcAslXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F615C87FC5
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175308179357.18139.3102510736859940009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5141bc47885c7a6b58fbc3f611572f1b25905fdcf1d61858ccef2053ade16ed0
Date: Mon, 21 Jul 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753081793
