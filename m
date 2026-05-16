Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384CE3E5EEC
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 16:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778949634; cv=none; b=SemgY8BlZw4BmdMsG0rUO68koGdkU9J6IUYRf6pWFFh5Yt8lyoReXpghesbYM4vnDKpcPUdm68Han+K/Hyf054r3dEcqaseh1INSYYHvY/9PRwLCjFhnOEppPvHphy9uqrzXWQCJH42nZn7pAPlA9kXgViQdQy7b0oe92fDqWQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778949634; c=relaxed/simple;
	bh=X4szPHBjJNgSdgnf1xLuZtYtC4z6gQSmQBOV5qo8oiY=;
	h=To:Subject:From:Message-Id:Date; b=F9LJM66v07QzaWaBM6pY122INBJtfm94iwcG1xsMI98mPoCYJaTTGn1Pgibe1d0kVIkfsEWdJIa9VhgLaQspmSYxwrlm3+HXmT4UxmFo5M8NinC15Y7seVgeJowJ/WJFHm8RPuzT6qY5Ur26GiXEmLMDTH7DDmRaMzEGgqNdsDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ByaU/nmb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ByaU/nmb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C3FC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778949633;
	bh=X4szPHBjJNgSdgnf1xLuZtYtC4z6gQSmQBOV5qo8oiY=;
	h=To:Subject:From:Date:From;
	b=ByaU/nmb1UWDAGW7eVYKart31sEKKJ/h7hAmi1V99Ey3ddbW/qnOXhXWxl/PUfQdR
	 hldoUY5l6oppvTMq6zbg4ou9PjUGoCgcJI7nL/dWQwJq6CWmi5bH+7MUnJDNsFcc+L
	 lvP9ScOEcOycm0gGEBfbRZGq8uJNUOLjVEy6fpaJaq5yFsbiw/7/C+osQI2pTjMXL5
	 Btxo2mNZgRO0wTfnDc4yquFzVisUAM6G/lC3UHPj6nrUbUEEvn8o92RaF6UWLK4VTj
	 LASUeE0MkK9tp14aRDUq3a53z1acsh+hoKoNYFdzU4kVzI0DXrjPFki9a+XwXil6A8
	 8mCWC1xSelj5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2CF9CD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177894963369.30630.1770495154041714466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a746316d2e95bdae002879859fed0a792d25bb423afc447196382fa4d31e4fe9
Date: Sat, 16 May 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778949633
