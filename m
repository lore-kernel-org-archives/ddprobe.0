Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2559E4428
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728967554; cv=none; b=g6Cj8ERSwLt8hXcHT+zYMWJUaloHxi8dEVZcKIpGD4HriMMWdoRR+rbDwnzBW8lDj0RWBK/ltwteZgz8vE0iWXcLn+0Gg0jaGj+ZvOHrhfSy4VLD1SJ+7LlDcFyErNiJPPE30wgEczg7tGqqAn/gb+s8dxfjfM3C6X5Pfx99ghQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728967554; c=relaxed/simple;
	bh=JJmccSTQjpfLZtiJ0YCOQ4vlbEUTRCwbqWvn0byl6js=;
	h=To:Subject:From:Message-Id:Date; b=ZQgUhj79lXWjGiHJGY77yDdgzcSImKEQKJ3FkX3CzLE3BfbO2d5xq1O9lIpuDeMTPHUflIZ5XFtUAKWBLJZyoyC6CHN0sKT2NUo61hxHqcbaOF74NACtuZoAMF85bidLgPmk0WSYXUoKLJ3ydsn0n2yTGZ3WQFFCtpp2Wjtkruo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O5mTcp86; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O5mTcp86"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCF6C4CECE
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728967553;
	bh=JJmccSTQjpfLZtiJ0YCOQ4vlbEUTRCwbqWvn0byl6js=;
	h=To:Subject:From:Date:From;
	b=O5mTcp86F/fMzTWkYfOJJz4KUg1qVJojFDVua6Yaq047XiCIxVbInu/M2Kf4jL7Gj
	 024NDR/VK+y1n0KYAZY12V3+TCkzoQPcA633OzblL4zFbn3KeUdXPeN0xIdW5VP+2s
	 n7QhFiGz4oHWQuKd8HzkmaosdwTaZC/fISrRFMQbzAfZR1MlMaAk5gG+opTW0tyeQS
	 OW/75E7BwV+FUSz0GUE+HfDlfhcla78FPGjzOyR3o71fYfb8kDiQry1syz/Rx92NAJ
	 soBZxP0LniFA8oZ6CUICkf4icrlntpl+PVmgXwnZQy2YXj8u7gkXMJp0cPoxRdD+k7
	 ricjT1PehMbyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97210CFC264
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172896755359.10982.11169554885939921356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bec89e859ec655773db990b832827ffb2dea2d59e93c43fcf9f1b728bd1f8338
Date: Tue, 15 Oct 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728967553
