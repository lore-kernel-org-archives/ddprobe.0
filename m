Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A00627FB05
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774070094; cv=none; b=K1ZNGcBy4wKhm03dxAjjuHbq7kgguzSYI7UvYTD04RSwaexgZpb7UASnwnQy6dIm3ujoLyZaW/kb65boPi2aabGX2ZHp9uF3H9YaOybjdJwuWZKh5ubyvlH6sffbFas7wgiGfpqBzyICASdg5ViCOvAC+7nSJb4MEFuUceE4xtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774070094; c=relaxed/simple;
	bh=fjBWs8tWCAwhQ2lTniWSwkcXJxm4KCLk2d8Ke/hOyNs=;
	h=To:Subject:From:Message-Id:Date; b=G9CC4rKf6Vd7ns7M88zWqwxBPO5BL7HyacQJKrlCjw4EDzpT16CsgPLhOUfOQGTP0MzIxyfVPZkZoj8ievyQKaD1vV7R/HJSc8sTGEBJtsoON2KLD4zDf/C4JqBzkJXsxBAzzl8kGcfhnW1aJy8rqLCPde7Qb26Uyv5pZsv5fAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUYAOdF7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUYAOdF7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A854CC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774070093;
	bh=fjBWs8tWCAwhQ2lTniWSwkcXJxm4KCLk2d8Ke/hOyNs=;
	h=To:Subject:From:Date:From;
	b=EUYAOdF7Sl7SV7Nq/44+ShZ8OsvedyEAeENhx0p/kWslHtWn5ru6eLv7TQzC8yYjz
	 MTRuOcGnUf6lbBX98kRLa2wxQFXtZ/gaVEXn9mRcs43vdptgxiG7/IOfjH8nweuqbW
	 TgWLv8y1+mTWMA+0l9DOCrGz5niA724Zaq35sHI+UJGYSQmCTg5XBhouTcawpxTu1C
	 kWFuoEDVI8j/foVJcwyHeXAiOmj9N+9Q/TOCmpzjthPuOYHh9wJzTFbiJoFhEhM176
	 50nvLWmObcjU88A/87HHi1dXQtBHSmCraQmOM+gYWoL7frImzPTIvST3TOLH/w8OoE
	 FjA4YDraHuaRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFC6108B8FF
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177407009357.18593.285954859936802687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1d709636376d5eb1f0418fa197c883e785514737d018391fced32ef7b79e284
Date: Sat, 21 Mar 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774070093
