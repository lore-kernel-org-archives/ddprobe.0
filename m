Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47142346FD2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 17:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781802994; cv=none; b=nnYLS/UFhh98bS2DnpMhl9N4H11tM8tCMkdJL8IiJxmeo1u45gMEzIG1CCBHgFqbnINpl37MZSAYC5uT2BeeK3wKj3JW1qWmzi9arUwb8+410aKlM86+a9wf1bokSazxkrnhulaonzdhBDIUI6nbzQRk1KbCnCLS2SfjCe0YdU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781802994; c=relaxed/simple;
	bh=MKBrqZc6xg2R/vBs9Axh/4zQvXFd3iLOiQY4oVbTpoQ=;
	h=To:Subject:From:Message-Id:Date; b=AQBUZeurV82eSiAwIb2kfsuF+bRm9xrrJz6rTWdO6xhAkdfowKyChN61BhDM7EBRqbkyn8y1erPBCqlgDS4O8mNhaROjo68KgVj5N5pmqDHE6R8wdr7AKzZJyVp/Tr+tfCg/B1Ew6guN3lEnAm9aQ4lI9+ZPu1s3vU49tb6lqXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lo9d/IEJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lo9d/IEJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3313C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 17:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781802993;
	bh=MKBrqZc6xg2R/vBs9Axh/4zQvXFd3iLOiQY4oVbTpoQ=;
	h=To:Subject:From:Date:From;
	b=lo9d/IEJ7d6/+2nFsP36/maBU/VDm1uB0k/fDmc64esMxKzMij20L1LQ1T917oZAV
	 53CPPr+j79FMYbqOEZ68R5neBlPgQyW8ySHxCg9mzjpbx+6hJXnPp8JEpaK/kVXrxB
	 9nOH4Lo3NW5Kmzlwjrm7cZgcI8NIjUbz+hnAlerCH6imx0VF+8A/l9zZ45neJsjUrh
	 LsO3wbaJWB+dUwdmRUA3HuZqoXDQgRjQOSpRgeKwnXtahLMmGHdhdPJXaawDQGh8+i
	 Fxk69RIP8mtzzE4R7hL7oXHFt4FWdLLwVd5W+fMcTmpkzpmPbOPUNtQS7E/ucsPfCr
	 uVqk+f1rH9ZbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4818CD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 17:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178180299370.1734.11421129809366423561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1be5cbc30cadc689d0410617cc322b36b77ef9a5955b93f6e294ceace6513ea8
Date: Thu, 18 Jun 2026 17:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781802993
