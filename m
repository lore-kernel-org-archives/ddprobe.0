Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FFB145A09
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727276754; cv=none; b=lEJtSI5IimB61mgtkkPEg+jdHFBJWM1VB6RhuKTfeTFavqoucbJRt204UISaYDdtC9tEjWa5uvhr9jw/gsi9Izryqe/+5uwRU0sIpeKOgf22yEuguFcnkUtYhNdqcK7qR9niYmWYrxUqiVsOoM8+miHmKnS/76+DMsLnoQsv7dA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727276754; c=relaxed/simple;
	bh=xIk/gCK0dSW9W6cmMFcObdwIlbwXEUurRIYVfQKP6x0=;
	h=To:Subject:From:Message-Id:Date; b=itBAnElJQNy2DJL/YxdNsfVpcAlRcTzRqeu9AQyk+A+g/vLyRQLFC3LIkpmot87TR4v/fTuaeSTv5BGifvN5yxC2wHQ9Z9jcnTM77VH69wAct9gwHyjb5k3O59hw1+Ok8eQfQmJnAPQ8kenWhKPaa8ZPnXBJzIakw1ofWNOMiyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibYA//X3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibYA//X3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E78C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727276753;
	bh=xIk/gCK0dSW9W6cmMFcObdwIlbwXEUurRIYVfQKP6x0=;
	h=To:Subject:From:Date:From;
	b=ibYA//X3whW3WtNgGYsWFOPoNDMlqyAGrMJznSu96eLS7vGKEn4pnQb296UYffFXd
	 ZqfD7kyvxQCYRS6uBlgVXkSGt4r9rudeLY7hdAz/TPHuW9tep+NbecpIrIxWe5syTo
	 N6cf4sGM7oKulopo59ZOj0AnRee4Bs/yJM9xYYWPD+tTPHbdTZCo2j4CVjXMxtOvDV
	 xqLxEtDb2Ljnysj0HqLvKe4HrL8MYFI9wrcaAZsnL6yQnudjoxxUu+B/czXCV/SzhZ
	 C0CwKEl66XtZSxW4cVHgcDc7BINVtWr3/ByYwR7kem4HmMMjG2ZDIcmDdlRLvf4UGC
	 Nbl5++w3dp/rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B05CF9C7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172727675358.3162.975980128440940966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 131d00ff1be823c9a60c9e7ba48a33e1626a9ffa8b9996ff452c9629b238bee4
Date: Wed, 25 Sep 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727276753
