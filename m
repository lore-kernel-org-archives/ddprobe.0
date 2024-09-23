Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39068F9D4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727075154; cv=none; b=LYxYrLjIuE7ukf0sAnY4rbICSanaQRvJ/LobDWZOxgRhAlZpqsiH7OAyIZGk6lJUfmxXTJNL1VUsgQqyTJNAt45JsNX4Uqeg7Lh7k/wSNI+/r49Krd//mE3LQph8YFeL1JWf6QTYC3YqsSDAcz/oWRFMbg5f6otrwTDXIfMIZes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727075154; c=relaxed/simple;
	bh=z+GVUYvsHF+zDDULXXsUyD1qypdAy4MVBMleUOv7a4Y=;
	h=To:Subject:From:Message-Id:Date; b=Tp+U2qmHpgkYjGm44iPEOwN/tIOMMjtDRCCTNafD+/R8dhVygTRL6VoOWnpMvBzGHFXA0QaCmVtvgg3RgWV70FEa521iGWrIStbp8rkI7euiP8XJI1adVpSkd4ykjSDFdGNTunxVZaiKUV/ao/bVi61UJZDyrS2hPIIDMJ+/LJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNu05iO2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNu05iO2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD20DC4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727075153;
	bh=z+GVUYvsHF+zDDULXXsUyD1qypdAy4MVBMleUOv7a4Y=;
	h=To:Subject:From:Date:From;
	b=UNu05iO2Onau4UxXYnCer1qIXa30mU9/XWJkTGcRyQ+aDO4ZAQEaQniBMzB8E29Mo
	 ZVbx8sLEfUM1aF1NaUF5DwlYNsNjy2kQvo4RYsg2oYI5QM/09G+Y6+brZYpPV750Ph
	 s3PjcGchtoXXG55StYUnZIsaXLSLMrJpkvpEccKZm5KPckrJT1h1EyAjlvf4Hf57jc
	 Cs/dMWAu3GU3AabPXmvy5HDl2BXByKTtnv3/gO4CI1dX36RNbbq0jZkh73356c7jGO
	 TgpzUaB8WaNi6SjnNUcOjSbfPAbCpjorLIRsVTObBBYC+iCBJtqxwRNjY1NwLyMeUd
	 pgS6RurkqNQwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB18CF9C5B
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172707515368.32477.12722719982168261110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c778b8d32dfc63770f326141f9232dd8bface0df6f606a60c4e1f2167732ffb2
Date: Mon, 23 Sep 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727075153
