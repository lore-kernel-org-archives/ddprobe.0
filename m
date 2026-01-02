Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFD852C0F65
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767389033; cv=none; b=tA/7CHOZ23cGko0yRCESg9q/JRnHWqhLES3dlmmVUICwZDkxDq4fakyxhNVEsS5efM19gX8c2uX1WrHeXTiTMS1mJVGyCWbTMWf64OKRXHoCyMV4IcnhgyKNXTasPeYSR/6xQufbvjWXue8xLD1wWqicPXLiGxArUccSLloIR+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767389033; c=relaxed/simple;
	bh=QF6DoZMSr1PJaIGSLygxWmUDPfmui6D8K71tbX4cqlA=;
	h=To:Subject:From:Message-Id:Date; b=vBTLn6IOemtxSFznYe2OmqU3cO0f+LYW5xXXGNfQn2JRKxsOXPQboMZiHBxuYoMh9QtRcoegK5A55l5/Ba6rk5DN+QUFSvKbkRdBlNsDMYB3WXcY7I6CD7MBa++vBqXLl1P0oaZeS+hfDQ7VDEeFBo7Zai/7SiKTd24icKZRDgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EzKB2thM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EzKB2thM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58DCC116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767389033;
	bh=QF6DoZMSr1PJaIGSLygxWmUDPfmui6D8K71tbX4cqlA=;
	h=To:Subject:From:Date:From;
	b=EzKB2thMu9PiKT/Edj0EACAfUDfk4tp9zCo7ufWH+dzMoULWemQnyytVihL0i20DF
	 kdsgH2pNs4xK9O2YETWVjkFFUNF1r8OOw2KW1rSYaVp3eLgpZu8YMUdBIgK7XnBseU
	 8/Kr1fJXs+F0thqScI5zS6nlvMEjw7e/1KQ4W6c489GSjLeg6D78tKSDDs9LGp1qBA
	 689nQlu8XHeHNNo+T3Eail0ej6jcuCtVmZ6y2xNA1VgsuShZIiLAin2pkEL9eCdZlB
	 198rC93cc3JN3yNUPbKCxNSWH3WjuqMJmENsU7/75PlcfRTd5C4YPpSRKqqchcpZKm
	 M17Uzkr9c/vbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9620BFA3750
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176738903358.28989.3913586799497081228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f75279e098869fbf461ae4e88187acf194f6daae38574037c8f85861df130fb4
Date: Fri, 02 Jan 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767389033
