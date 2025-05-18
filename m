Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5311217E
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747526994; cv=none; b=bnFy/EGdDDPRKp6DiR2b21bkBU85GC59ydHznwIcUO8qbO9eDcPfc+jRH8kUTeV17xkRj7PoxQleILykWRQysYWUIRkQxLYklQfs69ffq/QWbTD+wb0TIFlcMuEzPuS2y70StzHZI0DHiQUAMVn1IELUDScMIHFo3BqNtGIdhdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747526994; c=relaxed/simple;
	bh=KxurrgeCO+LZekDG9ZuXKMECCkvLmVytMU322YTCelg=;
	h=To:Subject:From:Message-Id:Date; b=kIK49He4WI7TY/Wzbkt3lfzCo0hNP4Yt0ZTE23HivINRpzmGVAzUhnnhjUfq8hApy4ixYRaSkph98q9MUUZ5KJdyJmt98ItWrZo3YCE1VrEokFZzRmCvjgIw6AoxKLKnPYTGGgnRzJEY57RA+mCw/n4SjwQtQMNIrgea4YeJ8Vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xu0wp8PN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xu0wp8PN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68E9C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747526993;
	bh=KxurrgeCO+LZekDG9ZuXKMECCkvLmVytMU322YTCelg=;
	h=To:Subject:From:Date:From;
	b=Xu0wp8PNN9tBKj4FMoFjNheLozHSdLLN8B3bvZsmLb7Ib2h1W8Nu93hkvTnmRmfjn
	 4Wu5/0F3BicvcH9sVlinJwBPIggA0+ihGAnuOPF4jULfYhKmrqWT758eWERMz/9bCa
	 e+0CAm7N9btBhBcL4Nsufw08OzhykR6ZFRaJcHapW+g5/C6CRA0PY7pnglIOjhqSNO
	 dJoCLkfnZQj7bhY8UI7v5iQ+qjt9PoG9Fl3DyYoL2xx6eC0bYKxLKgOl4QDXMGgIE+
	 KI2d0icQBPIKZs06zNX4mhjaQK5AQBbV8Qm9ZK8cCYvfIFQ1cWPtOdOaeJv+t7Jm0a
	 WL5EAO/hOnirQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942CFC2D0CD
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174752699357.9912.4091741171504998304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b77008fc8058810dfadf418d5eb2bab1f8c3ec79f5c6736c04a445ab1e3bfa76
Date: Sun, 18 May 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747526993
