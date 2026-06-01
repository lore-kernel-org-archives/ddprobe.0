Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496561D435F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 03:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780283074; cv=none; b=plRiOrREFBvNYFsKPVv+EAzn41loq67m9McbdIES1ydOCr1Ahko0kxndLX+2Pon1spBlAK5CGxk+7REEwRjCt2ADBqQJioieXvtSO5WfQi+erFbwb5jD6smxMBWVNallcQQyb34/RYVtpBeTlDYQ7u2aF6wFI3mcV2fV52T76pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780283074; c=relaxed/simple;
	bh=TIiUuioln9OxnZnWWbexu7CLu0ih66iQGgOh/P/HPQ8=;
	h=To:Subject:From:Message-Id:Date; b=iFdS9N6ccMYNNr506un2qf0SaERrt3cp1gu6tVtkp7Dy5UZ1IV0SqD/hhJr9RZCiVOovwqVAyh4u1g/AKVrqxOGYZDwDR8ppd4SVHu0m2dKFDE7uXXTdeQrRq/5G6sXH/+cns1bFrSFOkLp8s7og4mxgWQq4Ay8AvkYfp7zt4YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EW4iT6lR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EW4iT6lR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2419C2BCC4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 03:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780283073;
	bh=TIiUuioln9OxnZnWWbexu7CLu0ih66iQGgOh/P/HPQ8=;
	h=To:Subject:From:Date:From;
	b=EW4iT6lRmFDa+J7HWn0RNtEn5JZ2zk/jqq3lMtt4MUhYM3vIaDpfsVfB1/Lpo8jUP
	 POXmELzfJHJVNI9iDG3il0Lw7Ydgvk/dT0wRrnioxTxhXutCO9ppQm0u1raIPEpLr6
	 aclcDZYFBdK+YMcZjB4cfsRwRUb5ZpCnaNrRKzkXtuoAaSWQC3oqOg2G4x3r2gskle
	 Sp5PPzaKxGcztr6w9g3Rp9nbngqe1jKYH46inFMBf5gOSNhVlF5XsioxsPWeeOakwl
	 R5lN2CYJm+msc7qFNySkTQONWYs3uKKuUApcKhbcg0pAMtoxNvBPlOXTObO8n8oIg+
	 8HaPTvNgaYBDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B307CCD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 03:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178028307371.31449.11052204985555552248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3e2725d69f79fa4d752cd444e9dcbdeb2740c8d6ac43c5cb5f3c48ec542d40b
Date: Mon, 01 Jun 2026 03:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780283073
