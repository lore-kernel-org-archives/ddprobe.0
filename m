Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3386D29D0D
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751335794; cv=none; b=cm7edTp8LMcJxgG0bxKQad0aVLNks9k47K+Rk4Yv9HigLx3iEy1K5eVHxufdjMRNYw2Szztp5YwJbJcQqMNstkd3/U+7+M9oIdz/or3qmP7JMzOWZxM3g45XNg1I/F2TmqPO0AdrcAZxof8xHusXI/cRxccKM6Y27WDrBHh9GIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751335794; c=relaxed/simple;
	bh=0tgtuIbietWGi1gzJJMk//JizdFyr5C9YmDw9cvjmvk=;
	h=To:Subject:From:Message-Id:Date; b=duPRJLdYS/kreoWJptbcYIGNCibw5vCOWiVjtJRbRMiW5bvD80cMDwbrzSTE+L7Muv0vdHxq8KYm81qx0Kefgye69ZarjKzSxT/Fhfj0VE7RKEbhzZJeegQ9kqygWu1I11aHMFiDS6lXbi9n5OJFdYYRH/M815HHStVSJSL1JkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDJyBQz4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDJyBQz4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A125BC4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751335793;
	bh=0tgtuIbietWGi1gzJJMk//JizdFyr5C9YmDw9cvjmvk=;
	h=To:Subject:From:Date:From;
	b=TDJyBQz47tJzXuNsuF/NinH7n9IS2xMfthu6dfLx/0frKj3or8IZLJH9llXr1jM4d
	 KJ85Ov/60uDjkHXJecLjTdHpDVWRsLZx3JBgTmBTkHVSU9Y0TH2AOTfUzgCltWEav7
	 kdYz4zG+MNOOIjwvAVze9MXjOSiBXeWIew5Dg9roAiTI7FyuYRMBGkHCWPUon6hRze
	 RLbMtYU7oZO19f33RsBtOyybGUSMteGdNnfWn4cxGZMJY45VbFJBXwU2b5VrkZECJG
	 5bcbRIK2K0LsPfYpfjwaT7B1VOVT6QuT+ENv7ZsqT7dShTkyGdv23a4+0unp8Knm63
	 i8ij/5Ev0RzTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BD3C8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175133579357.30951.9055263947610051065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90c1f5f99f87263e9bc2c738593e352822c915f6e011d2fa675084ba065b9eef
Date: Tue, 01 Jul 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751335793
