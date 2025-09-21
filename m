Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CF534BA2E
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758484794; cv=none; b=j8voxj0BybiwK8gXWSAPzfIHnBmvRZEsrwZvGkp+VhDW7R7uxWvzcBovvosvtAC/3qcm3l77qT6I0B+c4gHXVxv5Xmpxa0N7A8aGn+8SA95RpGkmjI5/UBlEo5SUr4b84u54Ed1rNKEnBC524i0Bu4pxa/Xlz9cfsuYzfcZRad4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758484794; c=relaxed/simple;
	bh=DUDab6Vzr1PO25+VdwRB91nl/D3u2okvZYL1Kd7TpAA=;
	h=To:Subject:From:Message-Id:Date; b=GEuMx1OjE2SjcdXlp9U7duOfzOgMC7uwAZxwx6Mmzmk2MrZaOuSCvSiEPhNpxyIRdLTOIWvIWIiD0Ckm7ouijOWqrggsQBtnxQOOELF8u4vxhCrEFRhpVTRekUzy3eV0r6BqoxD7tXGizCNYCn+IplZ+EOPrVM2PLe3yNGuHnqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kZ0fRQem; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZ0fRQem"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD2EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758484793;
	bh=DUDab6Vzr1PO25+VdwRB91nl/D3u2okvZYL1Kd7TpAA=;
	h=To:Subject:From:Date:From;
	b=kZ0fRQemeLT3wr6VsqrHckeQKiJNJqG3hBmUONsWWXzPMbRWc6Sbe740IQimIuvfO
	 y1GyWZRmYbUSecQ3W6VS5zEOmlKnk/ZOuVCpM10p2kePWe6rgyZr4uzKrIh6BIAWSX
	 KntcYVQ5oVRCBJ33xMZP3TloyaXF58wcgY/MlGMgeTng7RnTM3foh/XE/FaApg7LuD
	 raegveQYxI0ZuX7ODtY4Na8cndcoslib5cUrQbbiirRCu1zFEx0TaNXrNb3YI1dn6T
	 labHf/N9UR/LHWOAMAOI7LF+XQm7n+NoXCUyWpFS+KoB1mapp8vPV/S0GXaLYgaNiI
	 yLHcZcK3iWkkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91219CAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175848479358.5233.6142552246871203858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e422e5c88b8758f8bf3447f8ec84132a71668935a42318edf991a38284e312f
Date: Sun, 21 Sep 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758484793
