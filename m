Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69CF1154425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787013034; cv=none; b=OyZD3dIYStEcYN3OO7PA9itkDS3RTUK6eS7l4vy8G9fq/CPl3KNEa0kDVYfHN6R2o2KGUnxzqcqUKxZF3NiAN4gpY9wlAbQ9SutqYjgM3UbLYKt9wCWjOix2mFzTKkJQu5OJoNwis/jCPSqr4T4Oz5dMSGcNVlE4qfwbtZQpZMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787013034; c=relaxed/simple;
	bh=Pcr9Uu3vH1p9fphY16HsWm+arDWLXK6sjLgRL+HJ8CQ=;
	h=To:Subject:From:Message-Id:Date; b=Wehadi+iYjxoK/QxgmBxn1oY7u3xWkgJ7RNLuWmwMlJ1Y/AN0T9UhA/R1/SBzncCQCa3/DzRm8XY2RIFfCtQ5+H9baLdHZDhEAqGOVNupYNgTh7CmT6ieJ9irCd2xj7Ei8llY6GeIt0z0yeObjTLKfX0JgGOGb74NNh82I7pxRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CnzpCSBg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CnzpCSBg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E36C5C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787013033;
	bh=Pcr9Uu3vH1p9fphY16HsWm+arDWLXK6sjLgRL+HJ8CQ=;
	h=To:Subject:From:Date:From;
	b=CnzpCSBgBtSSCzlXH3phs/IVbn03MlKJB8wXxvUT2LPwEO/Y04p0DlMa8S/kNzpmQ
	 qcf2Y9BQ0L3rIDwzSNNBaGqMmsvbyDjeLig/KdZzKnqhDiQPokpr61+PwPfZ6BVvxo
	 gsrsCmWfa2xBgnsGFiGVkWZPklZf8SuXb8h2Nb3xhrW7gMIGNynIRyw+jYZDLOLTjh
	 Myl7U3u0niI4xh8n/ZXpM4g2fCHm0jjIxk5ApOjbyHfA53EOvekM0gj2Vk7umh6g0n
	 YEox464gWMwDy3l/OTnBKfIxhv5St0sR3LqN8R6ON7geYMCE88L5WsWHg9tzB5P5B3
	 lbk/IGucw2fsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9D0BC5DF74
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178701303374.32554.18376333984833549853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69bf40d5a8e7fa54fad8575026b5558fce4adad57d1b5870e2db39e168cf3346
Date: Tue, 18 Aug 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787013033
