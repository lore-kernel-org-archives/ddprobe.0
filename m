Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D40D226CFE
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 21:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776460655; cv=none; b=nErDWQNE4plhbXmY8e7l7L82Ywu6RIR2dfXakTXQ9EM0efFx61CMBfrNLTxS7nlLEa5UJYVIBaKQ8mI9ZsQwKLy2NN0mVtXZazR4xKjLu9JtRd29w1kDD6NgiSXYqFzab0GLUM+4VSZSGhwJZRjmMod+m2GJW68UoP6GyXJtf6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776460655; c=relaxed/simple;
	bh=UqrhjOyR9HEyms+hb/ILjdcJc1li5eFP7aiQLoyQK9w=;
	h=To:Subject:From:Message-Id:Date; b=LrodRlpugQtPmAWvltISBFaGQYEicIWAHsztx4U0BljKcQBjfZx5BiDoQSkbOtVbzQF8/WL8ZJbsoeWy9vhj9qzvn6gTC2tRo/9adJo9+/9HBCys4RSi95muY7S0LWs6SYLxSm0z4mOYzWwiqRZ7Krq6HJxfnEB24FulXWS5XHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F/duwtC8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F/duwtC8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF292C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 21:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776460654;
	bh=UqrhjOyR9HEyms+hb/ILjdcJc1li5eFP7aiQLoyQK9w=;
	h=To:Subject:From:Date:From;
	b=F/duwtC8ILWW8Wd6f0uE8Q96Vi2BwDsH0zkw2TFA0PW++zaX/L38wPNgOx0ajAe7E
	 SGYthgnRTjTlQqw/3bNFcNWHyY6estQJ+hPvsBnEjFOudbKUf03r44id0ZgoaD6rCb
	 MBX8DX0gyzImYm6jUiX2uOXEZqfYYPUJLPn72tojR6za4KNhexFSF5nop4ADUZyPie
	 H3H8fxUjIYghxmktZ7ge826glPkzUc6+pUyrxpd5lJbVceuOw3tX03H2E+bFj5Cllq
	 lId7+itpCCYrUBujDCx11H2H1nuMCUq4ZYEoin+u6Ldxsb46hEGyWqaSB7/QJnS86p
	 UFM1KJRNH08sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCCFF99C67
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 21:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177646065368.10822.7568861261025560423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7201678663337d5932941a62ae4c46c1582eb543e2a0fdba6cd3376302b469d
Date: Fri, 17 Apr 2026 21:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776460653
