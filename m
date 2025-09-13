Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD9E2EA47D
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757761194; cv=none; b=ZElDh8A1AjskuqliCLooi0KEJ4B/gY2BN+OLdQbRfWa0NwQEnhARVUZ/RuuxYrhp4MhosnAKPOXz8pXR0n+Q0I6PBcK65nP+J2HXA1ItSXdT1j8xuhYBnb12lqJLihAYZ1T/gA7BHJotRqb7D0KZLhat86bxH/gVriEb8htdb8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757761194; c=relaxed/simple;
	bh=aCxeR2WsGRE07oymyMW6B0R1VD5SDM3M4lhE6VIpllw=;
	h=To:Subject:From:Message-Id:Date; b=RkXL9RjAKom9xaNYiegdG7AwdgppKpoCSZY97FdHW2R8aADlLi6KMy3xDgTLSpm+o2eNLj+Y6QXlQwJWiFdpzBGLHJkjjPHF4++0aoU/FiabDmggZq6kyftlrBAc1AYFFTor4qwzYZngWZO21NiS4sWJHlxBY1VLMeVbGhXo62Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWTnNwsr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWTnNwsr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56B8C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757761193;
	bh=aCxeR2WsGRE07oymyMW6B0R1VD5SDM3M4lhE6VIpllw=;
	h=To:Subject:From:Date:From;
	b=fWTnNwsrWgMDaAraa2klrk8rbGnKR86BtYcr6cBzV+mzKg0wwJmQmMSt3Z1DjRYqR
	 c7LFOlGsLe/gg2PUBRes0zv1e0tu+0wca7u3j52gyox1xLc8SnjtaCZ6m86HJpASO4
	 dtqDeaQsnbRJsoZaHGi345ah2QsoNBsVgVfoDMEpsl9lR7FgxyPFKVcavnPRHoNZ33
	 YAKNhvUilWcUqBjSWrowvXKywsJMkwE80IA3gFNmBz3fLuG4B4xqnqo8OyUd3vxjiC
	 xzq+229+8xUZAznsRsLBM/RDiGLMRnmCLO5xEfJZl0oEozaAGaK0Une34SNt6XtQfj
	 PQNidcS5RWKGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CF0CAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175776119357.24774.15591236894381940277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bf3e42fea12d432fc34a5f04c00546857b4ba451794c44673091002d3e20abc
Date: Sat, 13 Sep 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757761193
