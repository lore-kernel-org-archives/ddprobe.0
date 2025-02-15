Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE644A33
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 03:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739591336; cv=none; b=KvXr5LwjvP0msbLKvMQvdzmhWBzvuTH3Gb2f5vi0IjfFVYaVmvckpHWKOeMCxgILkzj0LYERs8xZQqIBmbiRoawL2c2/a6YqG/1uPb1TgdvMY7U/9V0IhkL/f93BOfSk6Cw+EchjaUJHFHL20Iq8kcVOoT2SEaBd17GXol3T9iQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739591336; c=relaxed/simple;
	bh=rZIsnR3IF5bGkNpMVzzAhidinUmuh4L4CFN882QtELQ=;
	h=To:Subject:From:Message-Id:Date; b=C5RKCS/QdAENEf9kQrJYksjUyJDrMI+azyiAzrjjFT6SPnLiKY2mycM3BBkB/qX+lDQIedgpg2iiBwlouQzsk7WdT/FKsFgcvOBi63cMb6rXCDPeTq5/2I4S04Hf2CO+9DjGO549S2g5Fq4CZHBEkfdvaMO1rXxpHrcNopPiloo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vKXAbE/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vKXAbE/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3294C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 03:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739591333;
	bh=rZIsnR3IF5bGkNpMVzzAhidinUmuh4L4CFN882QtELQ=;
	h=To:Subject:From:Date:From;
	b=vKXAbE/Z8XC0VfIbenVSYDG70ZuhAxRIx4ZWP7PmwckC2ZRaNeBKLIKi/UjP1d0D6
	 mwnn9sMkAq+rzvXQUlylhxVs6pBhn6DVEtF2zWOBjFPmDBWqWDVbHSSftNboCxBCsV
	 fLPlEF8EbmW69NQl4pKuXS3/vtDGT5lBf3Q1c7GTpH7tp5jlsbOEnaEltOzFzXoHkb
	 PpbYodOnrdRbnBZgRmFRbDgItaNTFnXgLzoGIWSjvoI0rRFESIZo0Y9VAqxF0LJr58
	 ntor/JktFnMzllRV0MQeXzLat4KRw7nxzsOCOzTkkpnf+rFwdV1pKKvxOLzyghsvKd
	 aQ7B31qsE5W0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F7B5C021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 03:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173959133363.568.2824115839565063744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34c019dfc3655e658192a1f96103273479b65b2fe616f9078507ce06c8916b17
Date: Sat, 15 Feb 2025 03:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739591333
