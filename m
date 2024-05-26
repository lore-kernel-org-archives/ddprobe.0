Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5081FA5
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 05:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716699863; cv=none; b=U5ZKnBaa9G1tV0SYtZY9Cn9rcJCRPngXlcb6xn8ABX9H243G2tgHAM2pBh3JfWR3OsHtyRikcH5iL9yo0OO6RtNQAlT46J5CCRle54Nwb3hgBkmQqMz8HoTbITUCafdT6ARVsDiVxKNdb2PaPA0dNQZVT8F6NTkfHgyzNRNthYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716699863; c=relaxed/simple;
	bh=M6MbpjDPLubz66OEK2052hnJ9PdgPSNjUbr1ATRV5qw=;
	h=To:Subject:From:Message-Id:Date; b=VXcbN41oBnBkQuEw0a68Ea0n6sEabPPlKfIVAB5ULPCOy/YvmcuZcSMWiqitEYJNYvtCPmURSpWarCNj172W5+0ETHScYbkzPbOMolR34lA29WAxAIQ6feMe4u5D1NLptY01Z5XQ8QKB5Ap8+ZzMJgelsJIvrS6gAQ46mRzh5SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r8i8luTS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r8i8luTS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7405C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 05:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716699862;
	bh=M6MbpjDPLubz66OEK2052hnJ9PdgPSNjUbr1ATRV5qw=;
	h=To:Subject:From:Date:From;
	b=r8i8luTSHdyLcwDOgDRRUf3FBRoGbFfWVzQ5CqeAspmkQAM0k4SP4IOLOj3ZUX5t+
	 G4K2chokX2gM5vtO+4DDBtkEWcm5YqMQNAhLR3p1URUcAeOz9H4gbrlmOBD8xdgp3b
	 sJthOn54z8MioZuJtu5hgngLjQfXU3ilcEJrdjm5nRtovRiLFZtv+3VgCt84pAEtG7
	 SgetDaRLcOKu6n/VjWLCqNfBO4x9lKoHLL8Er+LYLfo9yZXNSGnXTRxF1qI4mEI50X
	 kXKzlsmIP8DhPiyGk7svXXOetOTGztM3MgCD4HxpXlDXTpkXk0resW9VSNWm9sHltR
	 iUKEJPDaO7unw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5B39C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 05:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171669986277.19078.14739227081800720089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5506aa1985ef713c305b17bc00c80eab2b69d92222a5fd558b0d88ad8eb5e93
Date: Sun, 26 May 2024 05:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716699862
