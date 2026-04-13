Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2973E2D12F3
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 23:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776123454; cv=none; b=HJifRckk8StnW8Nj1T2IEgrUX+qrBfpvfxMT1aOUpqZBdJRB+2Zu4BjG5kOMUEMdzhgWyaCxViU6fXaohFZe+Ufz9RmCxNE0O7FY40GLXbnTxx2tZJjv1e+g+B5qw7NKlljRv7e1ayva4Osu8M7jHwigZaCIFoRokaAG5dqxss4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776123454; c=relaxed/simple;
	bh=CyN3osFbgshx94IEwnruj9sRy5Vi9EhMa1MrKro1tao=;
	h=To:Subject:From:Message-Id:Date; b=YYLB1F7h32tVOuLVbkuNxVS3A7MDVrIGOHkZI2vzc9T88xO3fOl2dGNhsX2tcHJOJu6WWZI4NxvXIDOn4F88CrfOZwz+wBofBWTUxTGT4AwiqHGb4pro1eJ7NnjaeLPSgnCg5kZKn5NvwaDOjEwXRaGPj+9x68MHyvsRrTw0oMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WYT+whXU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WYT+whXU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C14C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 23:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776123453;
	bh=CyN3osFbgshx94IEwnruj9sRy5Vi9EhMa1MrKro1tao=;
	h=To:Subject:From:Date:From;
	b=WYT+whXUSDnGL8WcCtM8s/NZ1ow6/z/fPxf1uoVQw9QdkVk11yM8c3hLTQSztjXO2
	 jyNAike+YhdomwE6/reJ/ZHJbiNSPzdq/kHPp3mlsWjBPzA6rQqJEbaYhkq2keliXF
	 55B0qvVALjl0gA7Ju3iGUrpefm4FmhSWp9IjPbqivQkLNVGA0dCw1iekZPGXWWrFha
	 SqMa5Ub1hoQzxsdYwfmqAjVDShs8o3LiW8VyOttxpA5LG4NXrzm/Auj0m0YOKjiO3V
	 +Ap02A7DG8LOjONWvi8wTJknflrQ7q9PRu+Rd8lYhlT/eWCxgyPZwXc2MfgPQPtVSs
	 xPo9fY22O/T4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91B6F531DE
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 23:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177612345368.21297.15349563753512253787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a457c67b40b800833101ec3f603e4f5f4d119f5aa08576bbf403f1c36c9f9f9
Date: Mon, 13 Apr 2026 23:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776123453
