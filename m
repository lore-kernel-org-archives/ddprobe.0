Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478C73A7848
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 13:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780320874; cv=none; b=GcVNyTV7FNrIl0ObGx4FYejzWl26zTd7ZodmAd8DPaaIbPDkKp8IbmRzI3UuPw65G24vpnBUkug50MnTasQWkq62WsMOKADThibDT4RIZ6RuSedyojTTKWQQHNhvxfSBmXt/wm45s8iPaLtmM8+do8/k32Jjg2aZfRHmlBuLQ0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780320874; c=relaxed/simple;
	bh=JoJqsp+/vv5BDPbAtk++Y2JoqGClh/BivzvXpw5oaDA=;
	h=To:Subject:From:Message-Id:Date; b=l4j/5PCLUCoDT9867g62XrMt6tlz6sjdbAwISJuSoQGVzRbToTgj/RZRXicr6Q+2JsnTF+Kfemzzxpv/fsI4cJHl+h0IB5SoTz2GD89PqOHj5foyMyNRMU0l9pRsxSFJ0FWnOl8KarNhYgcJTzF6r8IvCpkpe8cuKFz8NZmwnxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=icvJd3gK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="icvJd3gK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D397FC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 13:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780320873;
	bh=JoJqsp+/vv5BDPbAtk++Y2JoqGClh/BivzvXpw5oaDA=;
	h=To:Subject:From:Date:From;
	b=icvJd3gKCJAQdHVFxFjLU3ZeDul7GN5W5oFIRhFW2J/SmTgP9YUhys39tjs3p9ac6
	 E7/scQk34L6AVjAOpnGPW/T1mLmMWVLp++IzU8cIruGKpkP/FH2bH1ejmgfTCV9oMQ
	 t8GRBN4/n1bMoF5yrs3JIYbQdRBwrreBaeVeFRPRI6zmpHuODfC05GrFiILNvhQBvU
	 NGrICVv0B1cSUr6JvIygPBTz2L+FPGZzuLqdaDWWs9ji3iS58DTyF/S4I7jGVyncEV
	 1RWv3lag5Q0rqla31cpt22KXPBm5bpNBs9J3iBGfyYIHkJI67t1yD+6lI+kZlo2iSD
	 TRnrsVbXUYhXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F39CD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 13:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178032087374.9528.17814749311595960278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9c8644e643d8f2400c0689b2718e02f56a229e77d5a155c64a6851300a00d9e
Date: Mon, 01 Jun 2026 13:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780320873
