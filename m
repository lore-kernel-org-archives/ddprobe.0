Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E78143737
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 06:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717049663; cv=none; b=OHzP1ZTZUqJv+5QPQZ47n4ut4iZZHHc8wad0PeYl2AIw300A9x+Skg/4hNLO/Na1xPZ3P4CAapGcDeiDlyZ+Ir2i3lBK3EEVHInbHmB/8J1SBRx8lPjQeuW3ZVNZbmkDITsIjvw2vTSVnjJHOk06xYEZyY8x1RW1zlQ7eUQr/QE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717049663; c=relaxed/simple;
	bh=kXx1t3bwS7JgpEzyTUc4jRpZqw6zDgIh1/cfvmWAyFY=;
	h=To:Subject:From:Message-Id:Date; b=he8FHi9ET39cfoHM8L+wjLqmre4rWxWtWE182xhT5hYxVP9O7hBzNXZYHwXHWnCc9S3iZNuuBB1E9dl7tronfLKnQXvE9APizvSONCqtd5A7J4Hlx29/gwCL37EsHaFCed9cXLdSRjjfDbQx3Jj9CkBn3POd04GHzhsWMrxx30s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ljbNrbvo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ljbNrbvo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8BBEC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 06:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717049662;
	bh=kXx1t3bwS7JgpEzyTUc4jRpZqw6zDgIh1/cfvmWAyFY=;
	h=To:Subject:From:Date:From;
	b=ljbNrbvoUJUWRUY/aIPI85NI3SHY81Oy2MGUlzMwIvMxIX5QylWcARaUaZm4KpKkK
	 +S06xHRPbGVAooVxiuIJs7QHLFryoPpNvhsh55X/lkoGpMGro9vUgl0ymKwmyh/L0C
	 +0y8afaDplZ8aNKD4jGIOIvzmXY1ubAls9q6bO2MxvPUQ7ox5isSdhbUmSGhihlcGG
	 6MiQRwloUQAdkOtk0QrtJi+YXa6aNbOk4txLyrEcmQ2jPn32QhQiM8Ij+6GY1FbRs1
	 eMhG4P7g35TFhhw19B5nzOq6fTKI1IozygN+HWs1CBRexfJf/W5MBMZoyTdyUQ8pR4
	 3TGFF8/ETeqkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C39CBC25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 06:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171704966278.8814.7602178984139773281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d81d20d5edd168494c7326429de48db2d7f6b460f11017d3f0778cbb4e2ab740
Date: Thu, 30 May 2024 06:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717049662
