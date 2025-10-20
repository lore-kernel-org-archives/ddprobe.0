Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F142ECEAE
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760996994; cv=none; b=E2dza2oMg4kVJ/vFTqu6fzEOAN8/RteoCy5F/S17ZMdgCkHIHzs4ZWkniBE2z8ES4lxmKDv6e/0rRX87+SZLysGlFpZsIeqd2Y6lXzipVQBWJK1tTKj1fcuDd3c36YFor3Z8+fqD/GJeGRs7HvgYUtvO5JMpuxDtsIJzL6vx/VI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760996994; c=relaxed/simple;
	bh=YCBA/noxX9Z43kR6khJ4wNfDca7TCxh6eXC1JF9qNcE=;
	h=To:Subject:From:Message-Id:Date; b=ASSOkgT82z51fuPetEVYkUhl79jwlIem4wME+pcRfrAENyEcNeFzcPmYksfiOWzhmaqkXjBDqzbphjW7SCQFEbiks+BOAlp3G3oBzicNT3oK0eFWv4AsjUJoI9z8Uy5XhHY4femq8gIpoiLga/igbHpUeNX0jnyr6tPxvy8ck+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0qATNvX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0qATNvX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1673C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760996993;
	bh=YCBA/noxX9Z43kR6khJ4wNfDca7TCxh6eXC1JF9qNcE=;
	h=To:Subject:From:Date:From;
	b=i0qATNvXO1X4kVCG/RfIc0jVEptBr9EmyFSCzmQvfIrmRNMjeXPgT8eq5f9lCfnig
	 5zzK+KJUlQZ/fQvJMs3X32EtnQSvKQmea5urSwk5AsyJD203TuN5VSjUidsR0kl9ev
	 LqArs1+f6U/fqa5rIGZCkzbXvHoj+E8+pTxg02H8HuvMy4ILXG4FCgMcEjooaoKbeO
	 d9teOmFjC0Ah/UOopBoiEubp9H0yzFRii2C2hVDcLij9qq8ybK2vBngwEUnoZt8RbY
	 YlQNJIxhOVmCy6EqPMXdZWoYWbypFuDIrS8vITRy243vlMH7glf0Ng0vp4i131f38i
	 NW74MV5fc7vXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F0FFCCD1A2
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176099699364.14747.8490528771572598864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a350e8eaa35e3084e539c0e539e0617d4cc8550d835750ac074d92cabb7f392c
Date: Mon, 20 Oct 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760996993
