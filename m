Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143AE2C0F7E
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762255194; cv=none; b=G9BccBNVgpPFHPP0cRV1qvzrUoteS+YprYyznBue0i0rkcIb/maSkWJlDig5cCHTgpY8F3pYyRK/Hhi4fv5uJRaEMlecBKKLrrAUjQ8DACjAc5GWHkZhhGQzmvD7MwQihF3Hn85XKtyOg7n4Y6ASJLSsC0cuH9UMABe90gph2bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762255194; c=relaxed/simple;
	bh=0ERdO3A9lcVGi45m2OuLLhe08kwBISf8WHAfwWdpNHs=;
	h=To:Subject:From:Message-Id:Date; b=KRL3PT08N9ySMcWZdH1pl77j4mclCUFofLPgeu+Y03YGLs1KaOFgcI5HC2uNPICqFkV5h3uQU17nkxvmNso5zU3FJKQ+47yY8wTApHlWYgJ7NY6ZK+iKkDay43g74912A8AZqYVrJb0JFR2JVqwpjpG+l411E+VZu1xneXoMQ/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qxcWl+lk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qxcWl+lk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D983C116B1
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762255193;
	bh=0ERdO3A9lcVGi45m2OuLLhe08kwBISf8WHAfwWdpNHs=;
	h=To:Subject:From:Date:From;
	b=qxcWl+lkbQlmd74jL6amj5aE0IsRbsA73QWNjx9F/1vTJq3x2h1GJK15gbfFShA6n
	 Q9Cy/mDI6pqs91SE6CYUQyKrsaKkDArGgOgSaDfbGt9dYp/zmUj447HwaO3dIUEfkJ
	 WcFkanqVJiwU+cpy644DvQBw+op+qGwv0uWIjbGxvGE71fIFlL3kxd+Do7UmY0iUPV
	 Aw+PDbP+5fMHta8vLRw+TcjEIBYQXvlGZ9YCbM0dT77Sw45a4jyo4bqw0qADlFuOtJ
	 OHkxMcE5XsVwNU9XHj0d5qvSWVX3MEySmmhzKqDMuBUX/Ix3VNDWcDHKTXqkCuxwzD
	 V+wve5sqakabg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB23CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176225519357.6243.2754264984291357002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a858a84ff1eb9b3d14cb6f9059c11bb8c892663ec16f0be608d7748b36de4ed1
Date: Tue, 04 Nov 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762255193
