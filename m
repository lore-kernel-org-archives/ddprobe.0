Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F14272E63
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749646194; cv=none; b=Awn9znmLcmoMiJ6gT048LEbfdX7Ot1blRj5DXUgDm5SihwN/A1wL0TofUxaMauzgSVr6YWGMVX56HSIPfQV2IX4jJM/zBMaInxPEppVaC24aahItEBqJrkPQYFBWxym4oT+e7dJ3hCTeTP2Rti84NrobwFxeFTOs33jPJKGqUw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749646194; c=relaxed/simple;
	bh=gVp+8Fq/QZErAMJkYSV26fMlgpxRqh7elNe+8eraLP0=;
	h=To:Subject:From:Message-Id:Date; b=h6DXEzb+9M2bZQPpkF/DadTXaRq0+UtDU90NGcC1JF6PXJBQH2cU3HUw3PYr4cCwQRbqFGqx4orUmvfJMlVu3YGo9iMbjtEXn0VNLo9ybJEi7P4uhIUu0EUBY1uRFwSgyuLNC/DFo00nydEBXT9WCsWHEq710A/OGVywtpd/5OM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ea6CN0Ph; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ea6CN0Ph"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E39C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749646193;
	bh=gVp+8Fq/QZErAMJkYSV26fMlgpxRqh7elNe+8eraLP0=;
	h=To:Subject:From:Date:From;
	b=Ea6CN0PhX3A8sNhqcMu8ibtp71gMFY1VxPclRunSVpIX8xgFVqdMC/0NzgXJgEaGF
	 fMsVthwY0VgpkeVfXB50850coskyzWodE1I5SWsXe5wNQqw4FzdpOYu1C/BWOGSobv
	 3SV5dBTjEPyPzCuaHGXTTT1a1IvwXekCkCjNL2zj6st96u9/kQtbN6l3IKe7WzDM8a
	 /S85t/6PgRJ0it7SLOnaRj3zGgk5tVTRGj3Ia6963ZFDmkAJjEEStZGOcmRAeH7Z+b
	 6eX229FV58XNAogFZ1qS+okYAKnXczsOBpGFmVzpEQ7au4It1Q6Bx3VJeNv8/7WLEH
	 99XPMghg/q4Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91212C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174964619358.18347.10173949559521827314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a580f1e7bc26ae24e4378bb61513b0fc83a1b0e01e6d21903e5f2cf62fa8ae3
Date: Wed, 11 Jun 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749646193
