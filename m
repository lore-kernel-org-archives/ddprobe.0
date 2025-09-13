Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CEDB1D63D3
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757795994; cv=none; b=kul4GUWO0NXUAtRQWiCgC38SCncyT5WGuAhtu32krKXZepkzKmszkXmkK8yw3dcSBqJZc5rpKd6oId/+4aOXLFhGVh8eJrUFvxY0XYdgqDpaNSxjy9/cqrSCtOaAqFXwH+l2ynRUK/bhXACx3mT/oEsl4l+VTLPdRCeNvxMjok0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757795994; c=relaxed/simple;
	bh=oXD32CvIIhMNAs413Nz3+c1pKKGfl5lcLQnBWrAHIQQ=;
	h=To:Subject:From:Message-Id:Date; b=aqil01c90gxLN7kAQo2MetFKLXkDj+S3oI8VG6HT+DveUNBw/cpGrIosIujkXB3xaG9BUTn3wEqmvzASprTBnhqNvVDjS4muNmBjYDqr2qjXBs06hKNWK8qTEXzO0I9jz4tmTHBYIdzZFALeFiLthb1SIBJ4mnuZ3pjiRQq/u2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bc4mn0js; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bc4mn0js"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56DBC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757795993;
	bh=oXD32CvIIhMNAs413Nz3+c1pKKGfl5lcLQnBWrAHIQQ=;
	h=To:Subject:From:Date:From;
	b=bc4mn0js67euGRHVyThGecOkSpK41IIUqxJ6DunvKy2nDwD1jpnn7bORKlgHQInx0
	 dDtK3RFQMlyginhT12mtPZvGUkCU+A+ab3HgVI2HnoJAn8bz4bNXXeU3QxDfVRojfZ
	 aPNGy3ichXUiFOMqfC7JpIvcY/brfo+Na9R+decVruIBHS/4MZFkrys4ZBZ0oagLMG
	 bQQd3izB418H2ljWPL8H63xv80tMYBW5dDLIxbi4DyBPEYUX6N0SxVsPNYZnlrrbtR
	 2OO2TajwB8Xbub9d42+rHxr9Mb1lrkCkPAT2xQgBacCqfdx8VAJbKetfYkJVZe8uQO
	 oZnm58gwYxR/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E31CAC593
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175779599357.16596.5734381311073749799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70f32d0b06ebe8a6ee553add02e111c880fee6b2ad4f21d50dcb98015bdf22cf
Date: Sat, 13 Sep 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757795993
