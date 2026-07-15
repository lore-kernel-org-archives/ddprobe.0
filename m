Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0433AD52A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 05:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784093314; cv=none; b=surq7mK5QOINOlx6Ik5V4RGX7TiEfTO301X8filcXTARWaVlRh+JS3lC4sm1udZre59X0nVVHTBW2EhBQCqRrRNIdO29QLUB0AyP4uwHEqBodrbo9X9jiBrZ6DE0Ibgf39j2tNSg2WrLgpt40G1gjoHUF0JdEzAlLUomn7K9xtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784093314; c=relaxed/simple;
	bh=Aq5zoUvYb9BEDpWlUXZzw6M4PCrIPjTgPTU7V0cXdMc=;
	h=To:Subject:From:Message-Id:Date; b=oAdDylpdeNNQn/LC3yRABdGWOuZZkg8yXXYC0xeY0EVK2A31mz0mDcA8NgvBczzTXrXIi3/RYyT6ezkFUyhcWiGAWnoAoNbeOI5D7Tk0vquXZsqvDdk5LoTHiqoUEQjOl6Zi3kc6U1dKWA8sZNtV2A9Mp/6f2+AG/TpfMd+fh30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GrdynD/2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GrdynD/2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8FFC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 05:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784093313;
	bh=Aq5zoUvYb9BEDpWlUXZzw6M4PCrIPjTgPTU7V0cXdMc=;
	h=To:Subject:From:Date:From;
	b=GrdynD/2IeHctYltNW0gSueB5bFcyZTChzVrA6SvOZWM4SUC/Zp1RTVw3CF9wy8UG
	 EIf2BhjinMsAKeWrqJc61jKWXrq5n3AGPTvpdUQLbWA8gVHa8X5Z3qR2FmS9GocVuN
	 I3ol2NjYzHakNR4mKwrqNsbJOcgFW9XWrrvfOLTMq6PkbV6Snu5CbnkGl5SNYF2LKd
	 7bA/Ufh83Dwivz7XmQdfCaNBYBPnyM7J20qLvrTE/UVsqfgxaG6oCOhWG5pFUlQmuy
	 +shwIDtNjN3M7AoHYSu9lhWuR6RB76oNs+n0KRiLjYbxtoDx8eof7tAruHiZ5jmn/J
	 0oj1CtzO4cvEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB453C44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 05:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178409331368.32023.18211658458547304723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ac75b3fa26eacf326c13837f9eac86da77b303831a4f63ddf1347b5d0e14c2c
Date: Wed, 15 Jul 2026 05:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784093313
