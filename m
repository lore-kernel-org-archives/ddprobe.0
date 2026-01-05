Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153CD1EE033
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767621234; cv=none; b=kwWw6Ht08ydAGT4CPhAxQz0Mujc2EI0MZw3CbGllrJsCUyPcwZ5ndajj1H1ucSvzh8/WskX/jWEfRj3+SECwUOl4IJ7pPTV0onx96HX4pLNgbeHpE/53i3pNQmibd7cHFbLkWGWtR2uQblzo8g8OCbJzlnUhcoycxVMTuq/Dqjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767621234; c=relaxed/simple;
	bh=tVRevcmYDM0PtE6nbcTkLgTWim94ayY6zM4mcz13ezE=;
	h=To:Subject:From:Message-Id:Date; b=VHoihNG+BEUBKm/D9x+Y+mpeZgKayaJQSnw6VjAWKG3hS9ORDF2R6whPJC+GFPvCYHrVHxUrM9E0J6FK7city9/KI7VAFLdAgRcd7m9gDepkSUhwrL2rRkzj0Y52tgGpUnbPOSb0dOaIQelaemvB4DKeBHJkhxvHOx8aDE+8SyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pmxcaap4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pmxcaap4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCD5C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767621233;
	bh=tVRevcmYDM0PtE6nbcTkLgTWim94ayY6zM4mcz13ezE=;
	h=To:Subject:From:Date:From;
	b=Pmxcaap4J6i8YBZAeu1kG0UfkpJ+MmvYhaOzC2P3YsYqLPGnJORzjiUEHLIHa7e4T
	 vwWXhQ538YE0BZ6dFR9JWvsKO6lDrfU7WVKlkWdTecgU627Tkoijht4Lt9YMtPgmOr
	 wnn6fRyFcgpnaPj6X5Tfs7XDyxlWjHbN4MkhVPhNilPpqcANwKFv6QOEVtIRNQzJrR
	 HxMPzwZ09jpzXqYyI3LHtxBbh35UGI8LobufIR7Y9H6fLuVSxAK4RYQVXZVL2+F+0D
	 OLqITrHkn27O6BLKj6VN+PaVsPSDlQatYrTk8GCCQIFV1orqeKeRD0riNdBBeXD8S7
	 pO5BjvzfhWAnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E97EC79F95
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176762123357.4615.14651105769119288096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b681c0acc2e4c2929fc049c33516df79245b30f53fb194f3e67fc2fed243be39
Date: Mon, 05 Jan 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767621233
