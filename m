Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A08C3BBFCC
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 00:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780619074; cv=none; b=QNx4tHlghR+8kZkKX9lV628Yl4e38B7rAN42rUcsbjSICQr+DZuPpAYbDn0A1cJ2OZiIlAuf7DnLabWXnwy4yPkvsCpNRTh1EzTMaz4dTclHJ0Jsh4N1DppYq2YomxB4rR281+TRJ+xap9lIQYBXE8T9uF2/FtR29hCNO5r/ix4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780619074; c=relaxed/simple;
	bh=H3FDDftA/wlYMmVBvGHKAUjTDwYYGTnozS0UHTqo6DU=;
	h=To:Subject:From:Message-Id:Date; b=CLkA33lruUU5lRX2RzCy9Ed5IIwp4IQ0L7nk811oIiK99z+OJlnOnAEt3isvEwV94C8Peqkl8CIGwlgJPdC7nA+A1c2mSynrQ0Ol2wEt7W7fILY/UEONO8w0C2a6dEW0afIjvnY0O0OM78Luj8j9SYxWcaauEX+IGXf15PGE3UM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZZx6LQL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZZx6LQL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2356C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 00:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780619073;
	bh=H3FDDftA/wlYMmVBvGHKAUjTDwYYGTnozS0UHTqo6DU=;
	h=To:Subject:From:Date:From;
	b=DZZx6LQLWkjV7We7dY++j7/x+PxUXxIHncP6eMbd4e4pPHjBrjg4JRpxSa2RVHZPp
	 4JEYnqdWt0x6YlwdwRUgqz+bV9Sua5w6kxE5dlE5oyVkKfVL+HlnrcJKrmn6PsM+Se
	 EJG5OXXHgaqHgRlhqZlOjGDb1hlU8S7iHXAkJOp6qVCTBaNXb9FPVMrR2em6XU7WR4
	 /vfVs2ZiMziS0e314c4iJp3G+NKE0/ELrHUmEXeX7Ycvn74g/a8p5tCAovwH4JVsf4
	 3bhGbJIQxPtOYoNMGkGes8563PVZPW4UGCJTZUEvl2JHq8ckq8Z4MP+9f+dcjbExSp
	 9Tw/detD0tYnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B524ECD6E6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 00:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178061907370.20050.530464898925998150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48b3c1fd777f5ed02c9cb3a497f2eb525552880253cdd1c3b38bc6c98473df3a
Date: Fri, 05 Jun 2026 00:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780619073
