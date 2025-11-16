Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEBA9463
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 01:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763256654; cv=none; b=DIG66AzukCZq0Pd4HiMBJBr4HorYbwZqb5mDZDUyXC3Fucl7jiPktMWA+8f2f62FYhuzdfvmRanUbr8NiXJLnjBXaHJTAqtYh+2sjPQTnsYo2cFFHaVQ4jZ1Chns5vrIomdM73AzTW5XGuXt0fWWNv8h6q3Ogix7Tx89P0Sz3f0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763256654; c=relaxed/simple;
	bh=WtQiKgZ7VzZvf1yY7RfK1XdGhGsCRMH3NtUbVrMAz5g=;
	h=To:Subject:From:Message-Id:Date; b=hRTVOLmumZNI9hX07mwXLLl+BqEosyfYNbhhn73h7060FYcEnA8ZNHJGSXRlyzX5ncmdzPRdy3+cVvUROrm78GZ+n72M8FchDKHx9pQ7xxqQPcU6HX41AJE54tD38KO9o5xZJ8CqsSUGR3TZfuQukCY/akRvVrI6TWXkhAQFRIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdEBkx3P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdEBkx3P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2480C116D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763256653;
	bh=WtQiKgZ7VzZvf1yY7RfK1XdGhGsCRMH3NtUbVrMAz5g=;
	h=To:Subject:From:Date:From;
	b=kdEBkx3P9u6jup6xwGCb8OvJ/BEicPSxvK1JCMu/8bguv+2lziba9Lw0XWDvZLUxB
	 Avt0kQ9aTYx9KiZx904jILAQKHPAct8gfmxD2RQfU9ok1vgKeR+TVz7pINaCuleQRZ
	 BgEcsQWG9HZMI5uaCHQBmwjK+Kz+1TkngzLvzXEzO0PnXmGJIuECHrrvf36AGa5PEy
	 Jv4mjo+ULSy17pGOhtiSlGvczaQDvHVGuCf9t/tFemO8fX8KHm5dDIMIN8BzV2vw+p
	 VNssh1wy8EOHq+9C9w/xvZX+DMlKsfxjbW5ddqFNC4qa4l1wnVthPLRnL5Lym3QiBQ
	 noirSsiqTqNbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92064CEBF79
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176325665357.10534.17314528546629087079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb3631983d9c1a4828da0033f1b96ca9d6a53858140a34f6c05ff7a5cda29fc5
Date: Sun, 16 Nov 2025 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763256653
