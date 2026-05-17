Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CB145BE3
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 05:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778995234; cv=none; b=tdZDrbKFOImMWrKGnOxlfFC8yUTJc5cZUmolfbQCmkW4DHy6D2Doeg/ZvKuiTvOakfrreHA23iQzuCtNJUP91axsT83qMMop4ZEJaQV4p99brpYJiDWFLohBurcYSJ0ZVyNpAgymGjp0umio1/sRNvXZUutT7BBXC+2oJV0HRc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778995234; c=relaxed/simple;
	bh=fwoMrOellk3YeEoMxR2mA0JpARI3bS8/vwqEcAfwIiI=;
	h=To:Subject:From:Message-Id:Date; b=Nhzje+jM5HXXFvqs6djAzMsDNpDv5yL3O5tYv4VU5gbOo8N8mhqlCnzCLxssAjX4YdPrSacs1rd4K8InD/oR0ZPYht6C8G/7V8ki7XNtjKztVduI2S2IoYHF9lpR02jnUA907euVt5qbJeZw/e+aGQQCmeFtw6zlUpJW9hSsCIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=on7GE9jg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="on7GE9jg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3A0EC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778995233;
	bh=fwoMrOellk3YeEoMxR2mA0JpARI3bS8/vwqEcAfwIiI=;
	h=To:Subject:From:Date:From;
	b=on7GE9jgd5CWJ2kBq3RSK24WBx4t4Pj4n/a9u/WcbQuOZ4qjuySP8uV80AJv/AviS
	 lAj//nF7bNIhlwWKauw0g7QtISru7RdRkn2bgnaH7jRw0mVv83SVdHUsaXaVHEw5eK
	 TtKWY/16u1rMAdFIw/JEts40wZxNcUlbUhR6PGMk4Ut8bEJmw43c+jUVKDBwZWO656
	 G/NkLUcPOCAGuvYithDkvL8hHlGOErwO7gvy3tr7ENr1awrCZCz7B9v5ioVBLH5rTV
	 OVoVNwiofU1caECDvnNy4yzNYfXfPbFmYOnHB+BZgaIIlMVxdBQD+gSzgxqlFPbsuy
	 ivHX0xWItVOeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0673CD37AC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177899523368.3822.3612240071825787843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af1e6e7f4903bdf08a34f6d567af87fe4b0fae03c7f71acc356332951c8e96b8
Date: Sun, 17 May 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778995233
