Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294C31DED42
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732304754; cv=none; b=oYyHCaBWLRZ6CYQySUBpE6trauT6aD4+4Za/wlrFGNJzJKesmZreOFkFhP/+Yp9HL1KnUbWzHzFxFlvMwh1cvDWrABeMCp+EnTh3Cfezo5Y66hS46Dnl6VDJ9/MAoAMND/khuiV2uRfFT+YYsdjUNxQiAQKQfIgGy7LoJSHXDNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732304754; c=relaxed/simple;
	bh=0jNbfiTJg9yyKMZu7S3G+qsDzN3Z6DlYhBFf/b9CHYE=;
	h=To:Subject:From:Message-Id:Date; b=BrTfKpsPWfD6tSUaRrygN/C4l/bjNAMH2p+6cDv3ms/7L+h90ZJ2sAPKi5cLd6DUxESoiKXyIWLLvtmNDUSR1LYMTHO/s8uBKq2qzKMU5Pcz/m/UaKv88uTJoXOSkcT5gl1GafHWjjWvLxCS9HDrv3vGcPK/r3E6uYJOakHHrE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPhbds+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPhbds+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B458EC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732304753;
	bh=0jNbfiTJg9yyKMZu7S3G+qsDzN3Z6DlYhBFf/b9CHYE=;
	h=To:Subject:From:Date:From;
	b=jPhbds+ijPCV7ztEwxCSRPJT9Pqt5PFwTd8lpQ++6Psb8DqZbg6mF56p+5uROomOa
	 VPsGr60eG2iQStsm17bad8s4Q3uzSn7dG65Ji3BvehKbNuZ88c5aIVFiiDsGON7vqA
	 Eph0peqOEcsSa4DvaF5xZYFkxDHDJ6jLTx0uPiRcDeG5z/bfit62vlIdSyIQZftQxJ
	 J4hnQTAj27UELSxxMFF2oFcoAGS1qD51sjiw63FnWEKfNWgiV41qq0Qi8Lil5TnUQT
	 dlcFWuifRwunJFz2xqg0uJq12P/anxQYW/K/6LB3B6w8x1IkKu4JRLMpjFevAlSbJs
	 +R6IsCWKEnfTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D28CE6918E
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173230475361.29004.7825951371737445866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d88e37d3d6ee34ae04b8d843ef625ced4d63ecf29437452f310b5dff9b2c23f
Date: Fri, 22 Nov 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732304753
