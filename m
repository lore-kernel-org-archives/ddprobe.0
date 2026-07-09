Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A30D13FC5D8
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 09:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783588714; cv=none; b=gFty7ofuXUWNJmGagiPF3P/iR6tw+DcawT6gSJdLhBiZXpKcPptIsB4hN/bsozXqlLkrxUv7hSTQ4orP2NZLNaHL1oDstSlUk40retBfZ4TFrTyGijmYPbrt0c2ZLq0+JkfvwR8BtHKUBzvL1rgJ8kKowq7MaQ3IDhKl/A6c3K8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783588714; c=relaxed/simple;
	bh=Bk6+4AdabsNXNT8IywH9CNzGtvW6XoCmI3aOgY0mzLA=;
	h=To:Subject:From:Message-Id:Date; b=dleVBYayXzmu+X5/YZ5PIA/Hc1C3mj7cXOlc3LWpDb+p79IiXX3bq1OD5WJMbv8HpLH12wT4WMS4lQ3aE1qATUgrAxWbqDaFe6dBjpo6n2gWojsLeZR/b+0JeowANmSmrrlUifnb/sucv98IkuOL4Okt9RqJaok8e5YnTOTZmBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lx0BpkEX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lx0BpkEX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F59C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 09:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783588713;
	bh=Bk6+4AdabsNXNT8IywH9CNzGtvW6XoCmI3aOgY0mzLA=;
	h=To:Subject:From:Date:From;
	b=lx0BpkEXQ24vVM5Lxeja/p9OwdtfDRQI5NuoZ1Pu3A0zl0ui66qBFD08Opdfp1rhF
	 P0AcVTJWmneVj7aWs7V7XSZUBu+igxJwJZfcyuB8/OKRm3RZvx830yjR4xYVuQzA5d
	 nk04OuNpEcJ33BXq3aKLIfNbWwklEpI3tRoz6tetwDdRNlQJrO/cCu5gevxpQZQZfv
	 dRZCFkjcnqwb6z4IKrACcKX4OfwsSlIX3vQ7zXWPEeXWI82LEj9tNAkAZMNfq7Fu9V
	 Wv/OuLSn8QbMbYkb0rNK4fOx4rf/neSOWLQJ66JyiBLJgKzkztDLNlEklWGApDUh13
	 p68jX2yBTMI9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD34FC44501
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 09:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178358871370.15538.14981612366382056659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a6df04451381623f1120493f114413746dc4fe5df547df511bdee48d79f8e4c
Date: Thu, 09 Jul 2026 09:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783588713
