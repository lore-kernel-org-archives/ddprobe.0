Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8984128488F
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788128434; cv=none; b=RT4kOg0LVMg0x6cBvQ67CrysIBPBLkKkvyDW6SQehDKOXk22IfmdVswwhSCOm+kQKEepyEZMEFe8C7QjnDeovm7moXNPPeAES04PxrzfWnEFafPbsX2uOgjxb2Pwtql0HW3T9qpP6jPowBu3ezoNY9la2iucTYwvZfTGytdO1ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788128434; c=relaxed/simple;
	bh=T8O9Y/RikywyFSQJbcGvjXRkwiQzAij/8bMpIT3WITs=;
	h=To:Subject:From:Message-Id:Date; b=hA4zRBIUIGGyFqDw96b6yLufJjqvNeA169dVHo9L/yJ2tJtVkvntXI5AYTdw9MlTQFVKk0nYrH7AQGUaeJZWNqZ0zDHYlW1opFOlDrPGpOg4nvR4h+eE6BGtLMyQF7BlX+s+C3eRnHQivWOfcArqfflcsPUPWKktysR3FBfHIyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KeJdmA8U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KeJdmA8U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAEA9C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788128433;
	bh=T8O9Y/RikywyFSQJbcGvjXRkwiQzAij/8bMpIT3WITs=;
	h=To:Subject:From:Date:From;
	b=KeJdmA8UPBvgMo+n3jyzzcSa4RtEtKojaF5pd/XqrGeuv5FFcdMCfFk5ZNWkdXZiB
	 KzWCOCLoMaGm/DzCPS+qgqKaIkmbX8iJg/NWmndj6Fh/0Fs9nsbKw3kem9Z9eArvSu
	 qspRSFnx7t7n+bHgxfgrhAmp0T5GSFIOcEUf2vYoXj/44JByid7H/X8lKf2oIo4Zes
	 xotmbsB2UQem8zi/+Kl7/HLXymOlGHsVYVvfNqapdJGNhtfrbljXa7jot+TVjvGUQX
	 QbPjryUImVo2C81lZkz2RbrEoHdR35uCX0A3qbuZO3gvpsvGp/K0D4bJn6ROkwMwM3
	 WDnGO7fVoQuXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EB0C61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178812843368.5072.12965942783639068087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34470a304c446e1857b23991469d3c5af3bc1f331f1b014694c590668f716dbe
Date: Sun, 30 Aug 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788128433
