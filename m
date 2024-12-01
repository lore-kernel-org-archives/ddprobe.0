Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F76134A8
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733091954; cv=none; b=SfRw79dPbIZMzX0jz8bY2elwh0v4JYXTcYR8pNe41ZHhh44+5Qf5fdcLPovQqp7nnDZfS5elypCofwrimFy/00V8csiYfNvFij5oE4QQ93XfKykrPtnHQfHG3D2MznNx5Q/8A/ENb6yev8UtGk/1yZUIY2mkdRPY2xWsU7xxLTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733091954; c=relaxed/simple;
	bh=YoRbUq1uLt+iCcgvy461oqFIvGQBsYPFZjrkUNpbjEY=;
	h=To:Subject:From:Message-Id:Date; b=DnkZXkGP9DkWafUL00j5pc9liR6FFpKay9v1tIB7znocDGXjpTr1jh35d1s0zOv/BFMO884VoR4KQEFAbInlM/8WZoDxlniWoA1bRKq+hMJU5UXHa3rLH8DoyhGLpIVbhaX6+v9E1fNv+PszW263/43zi2VZFg3MWwYV5QOycFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MlFpLCH0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MlFpLCH0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB7CC4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733091953;
	bh=YoRbUq1uLt+iCcgvy461oqFIvGQBsYPFZjrkUNpbjEY=;
	h=To:Subject:From:Date:From;
	b=MlFpLCH0q5dOAE9B/PrI6JmT8JZOZCBxPvmvBTfxyEw/u9b0eypqvYB10SRDoLAau
	 xPEd286T/clerjUVZo/tcvIbNLKCgnwWLgjUP+/1t/n9zbbB1Z92+NlLV3iJifiIYR
	 xY0t3auln50wV/LPG9uzFTEca+yDUs5MD5OX06sk4YEf0asMPw/HA5deR5mjFe06rO
	 K6+oNrJhPi2SHRbPO0lus/kNHyAdlsQrWwMcUdUsbs3lhtqN9BvyG9oJFQQ5ARo6zD
	 uxhfXvuX7YAB2Vgn6ypWLWJkRHYwzbEuSI3K5YhbQoZV0qr80sfhk/qpWPyCQBFavV
	 wOYUyC4KtD5uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5E63D49789
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173309195360.27953.9168405540518882797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5537dcbf6e19ae907bf1737c127c871ca7defd30ba4c2d94ba9fe2e083e57d5d
Date: Sun, 01 Dec 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733091953
