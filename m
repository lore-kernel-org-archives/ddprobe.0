Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AEB18DB1D
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743104994; cv=none; b=LYMjrUTMZnnJXdsxZV8zWciFb+RuprDPIz1XbpCITuiw8lhhEWpfsfPE2pPN70EMJhy17kOGD0BapGn0Iu1760i2dI8wyPTQEMAczG3mVPudQnqb9ElkKmFoiwBasWFSeEewwFrVRufjVTGMglBp2Lyv6ErYHio0w9aDZp/xzoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743104994; c=relaxed/simple;
	bh=MUJoi9s4au/4WV9bpSfeZTdIZYN9XBEYpeM7/b+6Sq0=;
	h=To:Subject:From:Message-Id:Date; b=Sse2gb1lcguRGf1iGmjRru+DdYLDPgn5pknJhjh0Gtn1NRRPmQM4yDAf9OXqRBXwZiLGG1GXAcMXK/h34hxdCTrA70SsXuWupqfOyw/t2ShgLkIe/CNUGpMnvWcPzUsTXXNqGr/Sew2eDzxXlcpqd8lorXKgiQb376xQZTtaxDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/MyRNf6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/MyRNf6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8525C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743104993;
	bh=MUJoi9s4au/4WV9bpSfeZTdIZYN9XBEYpeM7/b+6Sq0=;
	h=To:Subject:From:Date:From;
	b=S/MyRNf6HA9ujFACbT1NkEIYoUKuCtXY0kvfQtLjhNxwQf7yHe2RJKeMWndDFpg4L
	 XHnbRK9pLCWKEh9agn1IfXlMydfIAE/snBte2rL5fBQg48DRsJbmmg+d41ERgvBnTJ
	 aYY8HYANVMk9sNfd3hK+cFaOcwWYc4uKTZbeCw1j5W6Y4qniCjmVsoUmmV+OibgY6l
	 0egUdxigsAtChBdd66Ptw5KlSZhKFPik3jelZ0Phk0m6NeQe35c9hKlDhVRvZ8IN4w
	 95u3HdigsecoaLemkKT1cVtwcuY3MCPzGFA2KAIDaI/UPk5GzTV6cvF7wsJyEg05l4
	 kr2N/NSeLlCNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954D7C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174310499360.30888.10537642997561516866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0137bfddfd44f5d42057bfd0172490f257051bd30235c99fb3a8719f8635187b
Date: Thu, 27 Mar 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743104993
