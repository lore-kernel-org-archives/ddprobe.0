Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DCCD41379E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788810034; cv=none; b=gw49kO1H/VI91F/0/hQDJov+aqcGrHJYtz3TAHwHLqvJwjitG1cYWTdn1H+2WIaYLWIdqC9pbcGGBZdsuDJUIoSacDi4TD1ImUN74R5WpfmC/Sz7SKRbW9p+9/w603LjYr9ZOn8D3gC9Kf9aPseG1fXc4oAKGAjFyTNC1xs/Omg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788810034; c=relaxed/simple;
	bh=5wVT9F5NKL6rqAwLvD+7KyOr2gUJohzhEk9yAhWLaB0=;
	h=To:Subject:From:Message-Id:Date; b=n3kpRyYC9v0EriMWWyyjqGWrIsaEam5TXvN4IZhil4s07c11mv47YgKAThKmgApeNLPVWU+chYY+dDH8Pm+Hlo/jgM2SfqTwzOws6mIbDt9+mDSz0kdlXofGNYg6/1rKM/xF1rha5ENH9M282QsFD6dTtWl7N+WKMcCCjENU13Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WuIUR3dm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WuIUR3dm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB88EC2BCF5
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788810033;
	bh=5wVT9F5NKL6rqAwLvD+7KyOr2gUJohzhEk9yAhWLaB0=;
	h=To:Subject:From:Date:From;
	b=WuIUR3dm9+G8r7QvuXgjMbX+DTkSVNcwdm9WLuRODH7TF9ym8zJYbNyDd81tfG3DI
	 uC15hG+uKGY1hLQk7/tFGB3EGgbVDcY3E6/o7jZd72p0zo6VaWhVHZCdzfYQaUAlj3
	 hWRrrx7ENVGpttqnB8i6U2LAHanUWMHZwgdxJTgUkBudhCHo40uXQJHV7RoJx2CE8p
	 dP6g4wxhRY/qjAqIUzPZpLMjoZcjU6FEDgc2bW/6/NhC9YG+fxKNY00kq5/X3toRdQ
	 bYv9Uo+EJplvw+Qve+pPXv5MrK++oALLNe78XG+TlAD/kDJEWTh8hpiVthBwGN+Bpo
	 OhSL6+xlpJuig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B31B9C79FA0
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178881003372.18189.12073400714802978084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb91ee3c6d8fa92287ff8f7989579b9ca0f30419bfab75812e35aa070e55df6b
Date: Mon, 07 Sep 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788810033
