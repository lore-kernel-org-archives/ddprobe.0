Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2258179CD
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723497354; cv=none; b=HQdI0ZUZkdhoqTGtXEDvUEKcoPbkte4Xtl5Z07uDT58BIvSs4Ex9PDWHWM/Mw9k1oDgwGtm5ra9TSLdLFFE0mdtN23Q2Dh4v7HHEaygqcIQKuIBBkVnekRSYXclu+iXPgoWi+2oyNGJ8nNrMz2PI0UP+poYPeO46m8g3NMJYt6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723497354; c=relaxed/simple;
	bh=mBlKLLffsUs+VWdRbZ8X6/+sbzpu6Ksgwk+Z72u0BRI=;
	h=To:Subject:From:Message-Id:Date; b=OWf9NGTIUQCKizLUJ7iDjy4eQrltD/RdZUJAIZV0pz57/1/GDw82JKo0wH5yqFkfPt5GWLzU9zzoPr+vYVnfz+gkY7UBM3PaaUFKOEmtqbJmqHTBqS2NHvtlskA9HV0HuvVtzuk4cgRSBypy2b5p1JtJ0UCysqxxw6NezTEKcPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CjFNFZdY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CjFNFZdY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB031C32782
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723497353;
	bh=mBlKLLffsUs+VWdRbZ8X6/+sbzpu6Ksgwk+Z72u0BRI=;
	h=To:Subject:From:Date:From;
	b=CjFNFZdYEbBqOR015lsSrUzKRT2hiiQ2hBotebZKylNKf08j1bOUPOtya+4IWNt9H
	 ztLy3SiaQ0FVD75ENUw8LA6WfQlaVe7yhKZnaY0MFTiYU9H0D8TKXhRIXeXJoKIl5s
	 wfATmEBy7dj7z6YHnJsAR4zLJdSG4ArySSdisMfgYuyxOmLAqllEfa2J6oJKXGefME
	 QjoZ/RdFXmerMpPnpqQUoXx4h0CidhUJLFiIBx9B/16isdFnlqINkNIUMDCV8L93Cj
	 4w9TE+V6kA1nMoG0gUQD7rpmMg1vaa6ModR5ZJGkTUBOOdIYocwLB2YkfSZa6x1SXH
	 qp1l9zOF9tyZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB72C52D7C
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172349735362.21710.4124979679162992947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c964b5c3e98a83826d67162726ea39f3c271b7f95358453438e30b483805a90b
Date: Mon, 12 Aug 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723497353
