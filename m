Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F5715252B
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 17:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717262663; cv=none; b=JnHXBKos9RRhJrok665ABkIaX78tImV08CK0tP4qG64clNbxuu7mJ7vh5E16Zy3QDKLrUeykx8L1ElNk7qSFQJf0zJXldvxRg6QkAn641ppgAt0jwyukjBGhHwJxaBdfLlEDxL7ySxmhjQFppFhJn10qdSZWC7wjMDrpBcxMXec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717262663; c=relaxed/simple;
	bh=DrwSd0vE1hu/AchjhgVeceCnIxib63IMFk4gFLQ411E=;
	h=To:Subject:From:Message-Id:Date; b=h/pmHEm1H5e8nLmnAxOxYgFsb1CIEjlxSJMrvVHUaOsJUDc03lDtzcjWAUO1rnhE2ONWrqP6XfIHzxVWYd2FSLZRW4BLTWEAvq5MQ3yB6jM3vxphaElrl4gOvNsq9OtsMidKhHU4984veaiUHPuQFi+hwfYCpoHZqSKo2FZdJ1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iAg1gZoo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iAg1gZoo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DDEC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 17:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717262662;
	bh=DrwSd0vE1hu/AchjhgVeceCnIxib63IMFk4gFLQ411E=;
	h=To:Subject:From:Date:From;
	b=iAg1gZoowdRu77BysNO5U1izR0LFcQQxDGhCvkdyEjB9ti8GdKvInQ0Qmhv66N/8A
	 UsMNlfJvz9yBAhuSlu2ZIW0gd+H6f6CFf24AYYSS2FUdPx+y4Bkvu7KUVqyd0sdAEp
	 pkbVlhLv4Ts05prN4rCcNDKtrwmtHeDAn1PZBA5NKQedqDdx6wa7G5NbfoLJtUqTDC
	 acOZ+6WL/wJ42Y1rd4SPyR09gbQB8e+2csRPfJA93m8CjqScEJgkmMpxwy/1p0SCdt
	 dmsqMyUxAtjOR5ssSN3hQTpq56hf2zF4uKs66AbFyVd/AOoyBVzmVUnsnIg+hoDaBB
	 RBqJ1kxKkAopw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF79CC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 17:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171726266277.15564.11677235056026751895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07d650e7252d08916e991636b46e3b7140353f2140a11ce77557bcfa7e02aaf6
Date: Sat, 01 Jun 2024 17:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717262662
