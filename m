Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C96C1D6BB
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 01:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783041514; cv=none; b=PdbPKuj69P/SRsGpx3CWMUUgimbSh8LntOJhn3cLq9GNDew1l2ZXTtV8m7HH/9CQPon23Ual9erAsHPDIMJDsVXvYXmwe2RvbobNNTX0QO1hxW83KDxqiBsbGGhwrIYT8L4pPmjw4Lc3BtgdWohu6OwU9PTTwN+lk+3Dh0d1ypI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783041514; c=relaxed/simple;
	bh=NDMlZcYDE70ml5jFl0HLn5kpXuwRJA2RZmF34nt1KPk=;
	h=To:Subject:From:Message-Id:Date; b=hC3jm0O6T2feUe+rJ2UxPs+8ZA4nS6CGgBJcAHp04zDXPP3RwuINVGOyRDgR5J7MxxPU0PPvafGRrfDAz5mSNHEvMw8jeuXNEoPKordgo1XPpjuy/t+yl0Qu2B/+jsAuIjeQ/9jLfMgiZ/zJ9DnBgQAVLS/IJbqxhDQEWGUmTJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wmn4tusR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wmn4tusR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D59A6C19425
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 01:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783041513;
	bh=NDMlZcYDE70ml5jFl0HLn5kpXuwRJA2RZmF34nt1KPk=;
	h=To:Subject:From:Date:From;
	b=Wmn4tusRKXvLdQf8xYkohqT81FOswlwcNBzE4u/cgBlpuPRtqbf8U9I3vd559u5bn
	 KeJdwBR2OBflUc/mWELRAvTW2vlUZJknCi55AQ11nWgly5EWJQj4KaGW29gY+LxmgZ
	 xoVasvtXOQb+oCkCQ+EQ+RvJZ3wSkrhbYv04SG2HomtIMI8j5FDqNzBGwClIdwFUry
	 lamGc2Alh4jTGMACHq6WNn1HroU+1bd/C/fWA1g4IvIJtCHiN+bVjrGycBSw/HkpHc
	 WPNiIjbJVqhO44+lPAKWm8+j6SRye6ErjA9Gli9/0q7VxHDZh6SeKIUg992BvnEWT/
	 0zKx/2mMRni9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7CFC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 01:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178304151368.15408.14649284938275806266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d055ab6a2fca3a3e257e883f04f245fa5d5476eedc285de2366e233a404a242c
Date: Fri, 03 Jul 2026 01:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783041513
