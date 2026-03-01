Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19ED526A1CF
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772393094; cv=none; b=USYIxh1dz/iQ1sbZjN8ZAUM7LPVO6t0USkLhVq43DkcY2OqDTFlFyqwGLzlYcNL2PZCBySbcKrlyb7+iDf93OfNvSXGc9GRNuhNQH1e600fE3oqZwJ8NnPwttreKwn7gy+kC5X8868Td1rAvmrpq3wOhS6kD7otydYKahp2xM5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772393094; c=relaxed/simple;
	bh=wwasFsQMh4GKlPFNZHc0cnVg6s2ZyxBVVypa1kBlDBw=;
	h=To:Subject:From:Message-Id:Date; b=hiCcJRGCZexO0vh74aDNYzPiZOeZXLCr8gUj5dN01dIxlibpdh6/PaEk2Lx3vKjXivT0rcMkNg0MVsc228UgueYasFWQ88BU9oDfGYn/b8yDPT8fBvo7+izfWiR0nWnN+tXoJz38da0H1K6NyQQLIrvE1Y6P/KgGJWlzrY8ZObk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hyEJ9pwW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hyEJ9pwW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC85BC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772393093;
	bh=wwasFsQMh4GKlPFNZHc0cnVg6s2ZyxBVVypa1kBlDBw=;
	h=To:Subject:From:Date:From;
	b=hyEJ9pwWC67p11JuJlQi7NwDcZTN1bq0794yrLYUsxlox3t05XfWzs4unXKgxIwwE
	 9BR/unvjKs6Kg3rRvcsmIs5O7JE3hj96wekGtuggkp2wb/KabQdJmginhoQQ77uFMn
	 okaWw2zxpBWrylt/wDpntjCb4Pdl5PfirVAnGI+nWUWwhAHv51bSZo+KGduj9jBWah
	 4GJDzUkva52xtIFNGD0Sc25y08qzS5qDM2zsMB3YakyTh28qgkdfy7IpbnjQEQbWdf
	 WiO/k2y+Etz000KYtPSZOcL2zEyClWAnDDGl6xIIEPkf8FkgARdQhqzWygjx+qXk/2
	 Ct3J+y7aw9zSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D40FD0047
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177239309359.19955.8281660822994873947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ccb8354f4078751b3caf2b96f0d7203755b13350b07dcc42a34b08e3c4b78ab
Date: Sun, 01 Mar 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772393093
