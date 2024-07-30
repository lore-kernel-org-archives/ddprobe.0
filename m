Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383C7199236
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722341154; cv=none; b=GKpwQd/I5m2OVN1DQ/a1Gr1n8xfTGVhwv9nUMmntAyH0wtbN/ucD6G0o9lnrYiCzpVk3+i3Lx8fY4+Xe6Tkp4Iq3b+9OfqcAiNyne01qJLKnWYvDlKVu7+0b+lhWVwkttuTz9sbQKtn2bUikycyAuWt8R1XUbtlkqqW3pKmrjeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722341154; c=relaxed/simple;
	bh=adnQWYM7mSJKhbp5kj2pd0db8UEPnVzv2nU3vcqZy88=;
	h=To:Subject:From:Message-Id:Date; b=Tks1NgbOIFtg5p+WwyY4qz2OyuZ2zNL+K6CkWkzRtNURr7GDZJF9XgLs/wO61iOi/t4oPNDIpX0NYllHK+waRZJzr3jrvNrTmaz9yg8uGvB9qDnBZinsgF3hKjmt1XLecI2rQY3mKedRmFffJLSfQYurge8Tskqrn61hNSiMKA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2HIVFmE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2HIVFmE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD714C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722341153;
	bh=adnQWYM7mSJKhbp5kj2pd0db8UEPnVzv2nU3vcqZy88=;
	h=To:Subject:From:Date:From;
	b=V2HIVFmEyWy+Fqn0jwrqOxNb9jcVcNu7zE2CImK49QaMUpw//MGGPQJqn/yc9WIbo
	 aZMPqnJENuBRyF4kJizXh1l1DyL5Yw73LQJQJxnAbaomPYUaO22Y9RByAi3u85AXhw
	 RzuZDO5zE+3gjTDVu21vX6vG+V3oQAhl3vAZ/fRmtdnUUJj45/W1A3ZlDlZAYhMVqr
	 SeYQ3aFmITMgN0Z29UOnO1FKifnK48eTk+rWpMi/EHjPIxmIylW1mxSY3RMGi19Vjm
	 GXZvGzOlesGm4kei3Re64zPXX9mXCJlcMrezzjvGjY+BzLyQrVOYJv3A9CpOp8+7sd
	 1b1bkKTJO1V+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987D5C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172234115361.26454.4984280870882933153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afc104279a21b09269e9a2fdfebddf0c4458ccfb9fea1491268fa701c305f550
Date: Tue, 30 Jul 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722341153
