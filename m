Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019AF6DCE1
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 05:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778130454; cv=none; b=HrDjJbWP3KwMJ5BC1mEHC5IXTOm4VVcUNLJboj8dkageIakgIhrZfCdd3NkszyVoDBc/JON92vmsOaQMeS8awzs+ogeDJ7byPqdyQs0hsMxHybDsyqt//xo0lbia82lj3RAi4k9gQSG3SUTXFD8/k7bvHzKGzGadAUdRB5zXWJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778130454; c=relaxed/simple;
	bh=B9fjCrutFY93M7piKNQfwRrNc6YjmYnY0J+NQZbSDyM=;
	h=To:Subject:From:Message-Id:Date; b=RqWG14SKtITob31ggpgXnQhVsLoQly9bvCfBZ/74mPTMOvNzfhAtEqBO4VBBRoGIk/ukbGfQNZPWNMaFkTvgFXIrAA+1pWQvUw8wvHYs3F07uSPgjXssjPPWOROUJP2Sc9sYU/ENI1S6sLcbM1TwTx+EdEMaS43/TyqDgNpLYx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNN5swBB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNN5swBB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD553C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778130453;
	bh=B9fjCrutFY93M7piKNQfwRrNc6YjmYnY0J+NQZbSDyM=;
	h=To:Subject:From:Date:From;
	b=GNN5swBBa/+Y8RXwO/WqyKyHQrKj4/FPWgURKoIh32XJoqaO3UyGcHJlNbw1pL+fW
	 ONcz+DWttxxls/AzieFQAyj/x/MXVqlL9fthk5KRS0abhYWS9vhpdk+gWgmeWalodG
	 aHlqaoxvszbmrwSq+ASATTlHT0/9UHacIRUeDeD+RKye3JxgzxrJ9rTtqvrOzeTzEG
	 AXCUQvVIGl16LVmYwxSUVS388ad5pp44sjBtyggM2/rW4cnGQL13ABQ8nUxwGUaZaV
	 wuvL/hYYLSlWqVOpNCCwI8GURQARYPUMRoiRAdYAem1JSl9gyi5obqp5Up3khuiuy/
	 QDsp3u7vI5I8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAADECD342C
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 05:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177813045368.18765.15891335532469998226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad18d6831ee0d8e9fb7be7134cbbd97e9db1f246552b19cec62ac497d294d393
Date: Thu, 07 May 2026 05:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778130453
