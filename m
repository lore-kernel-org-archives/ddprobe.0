Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAAAC2C9
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748045994; cv=none; b=DIJCllbA+Yqo8Yp8WgP7ejh/D8poItnxJvKMc1g1M+jeAZhH0/bMN+T7rZY5GvYsCNiSd+pb0q7BTZSQ4rU2jtGAIUIkoamkiDeOsed6dWOJcHo9chIu5jSsck5JUf0pcJ7rK51XmBfHTHXyaWC+T3Jp6Y4K7+1lgxArRmQ5ELk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748045994; c=relaxed/simple;
	bh=bFAk+sGfxJHOxUG5yTvC+MtrvoHHEkWQNJzLcxgt6CA=;
	h=To:Subject:From:Message-Id:Date; b=p/C/Nlkow5vSQYhnI6YjyZuBEhicUa9AKYLF17WNHS4thFZpmAeS50rFN24/n1MX8tl04WjcmZcHzxyEjEwu8aOrR9Vi81i9g1cLb1e2jPO24LSElkzNmiwTnXCEQVDFgMmjjXnRzRiLc3etUPg1QARz6jkQClxI6t3qpdD8YZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=moAK3xo4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="moAK3xo4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BA8C4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748045993;
	bh=bFAk+sGfxJHOxUG5yTvC+MtrvoHHEkWQNJzLcxgt6CA=;
	h=To:Subject:From:Date:From;
	b=moAK3xo4gy/m1FS8YVUZ1ndsZm+JziTGGuh0nQN1CONvxUcFQZwucv6badrwilIyp
	 bpfIyK+q9XNGl0BiyJx2Rj0HCgBvzaICUvCnCEqcbxYCsl04nfaQfXeEwFSXoUwe61
	 ldwtH3aE+0FCcJb+ux/gsjX9so+L4qlra1+8puCC+e0teAYmndJwcgVkWG1V+DUj34
	 O9xLfKykgAZ9jFN1Ql3sYXRLq951plJvxT1WReGm9ucYFK5wV2wiHQc/R7ix+oTjtw
	 jS0z7MgfLi7pOuOC1id6vJNlcz3hWmnyvnRFRZHVf5PkA6/gtYaJILWpiX1AJT1HWJ
	 WhpkoMtGHB5WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9A7C54ED0
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174804599357.32077.7669848851006842236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d40b43f52c174dc61b02b7d86ed8b653685ba2dd855f4fba92e47bc3149166c
Date: Sat, 24 May 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748045993
