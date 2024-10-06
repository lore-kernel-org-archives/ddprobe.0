Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414D1158862
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728195954; cv=none; b=uzlQcYjt8i+iXWh13esDqnmAP6Gx5H7yJ83/ECCdWBVGybCH/Ke+LMM27u7OpE7Yg3QeqXw8ZyA3pa2j40OPl+bB34OMYFsxLXXhTaQ49ot4M6quDehOAM4FFZsgcL8CsajwMLZK7soelnjxqLXNxGQOqTcY5tsBN0LrFgEQNvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728195954; c=relaxed/simple;
	bh=NXtbZ9qogOD5XBZn3Zc2FTQb0CrIYr2K5glI00PHDcw=;
	h=To:Subject:From:Message-Id:Date; b=YhQVqj4viZJGKgAp7z7UHySA3+4VUtaC2n9fMAVFqWrzlXbLREuEOhJ8WBL+24eeZ+PT5117rw5LFdFK7DUBrcWx2jQJfxD+/P5Tovn/t5/UYNAP09fVU8VPkN0hSLbn8o4mdobh91pP3eMZ4vC1fri9vpmUY62hIuiNby2qTHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SStU/88+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SStU/88+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C3CC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728195953;
	bh=NXtbZ9qogOD5XBZn3Zc2FTQb0CrIYr2K5glI00PHDcw=;
	h=To:Subject:From:Date:From;
	b=SStU/88+PFID83m5Bqb+fzyF9Qf2Smxs8QhLTTveom1cf0DVTzoQP9y/2N6ML5V2P
	 pI75uiqg31VsFuOHdk7UAj4znPFHnKAJGh0p/YWnyeC26Tuk+cetxsi6RvrB7B+Ztl
	 XHgGKYnOILz6wvmH603yIVpP6FScE/Yy+qHjgjP9VqZB0CGrvAlm6p1KgRerEL/BNe
	 LY4xlQaAUQz1IHHKz6Iw8tFo7TtF2sI8VlbqbCu16H/qKja9MTRF0O6HQScWJp688z
	 IuYyjrRQ3EuR0NfdOYggj1POxRdvNkku6bIcGiOJqaHASf0fofDJeQrEMo/Bd+uDeJ
	 oHA0Ag6YObPYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B152CCFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172819595370.23364.8661755115837587533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4c5fe36a1cf0d6301a409a4ba11afd24d90fd3ea45bec9edd672be69fd15422
Date: Sun, 06 Oct 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728195953
