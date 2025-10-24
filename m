Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EB326ED35
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761291594; cv=none; b=UqMKuIAAxb4Jz/VL+dVIQCr/WyaAsQyJ8p14tW3SbXE+eKxfxZWr0vaexc1OogiU0lW1bO0WRQxfvjQMXh147PSnMKHdQg6Axok6zC/HiQhB9Uvo5Wbjr3ZWwtxZBwVP6lv4N6fcmTUCyCmwvXHWlldXEwQUoHeC4acZLlKY4bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761291594; c=relaxed/simple;
	bh=Msq4uOI20I/sLn1xFVGG1C4RVCX6Y90XjkTXCp+JGaE=;
	h=To:Subject:From:Message-Id:Date; b=kXCmJY+8WlhDTrOVLgmSvT5J7dq3iYPYv7t2m1ZJf5LyFbIYJNdQarzDpsIpsay+/O7rW0iaR4DShCOfOQFdJNvlARmQyPXRxNujvXStcj/4Ch5MyYoo5Gs6OIUz979LnrXxRz6RecmfIh4mPyi7ymtretkCIkXCYUnjSgsq2DA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/iVBYN0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/iVBYN0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E482C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761291593;
	bh=Msq4uOI20I/sLn1xFVGG1C4RVCX6Y90XjkTXCp+JGaE=;
	h=To:Subject:From:Date:From;
	b=j/iVBYN0pWASGxuaTlYW/aHDoXuz9PRRR+fKN3VKEEw3LbIx3Ls5kSQYgm0f81gOP
	 ojbt2ct/tkVNaiGEj1VIJEin95xepyq8gtc/AFIA8KGbB5OlPnCcP0AYysh/hcLfL7
	 ZkR6dZ16t1Oio/xpXEuJO8gQLcW9dDfORALt9sybt/0Z4LA8DcY0QQR/btOjcq/jFx
	 d/wnXYEMpp3cJ9dqjKlvTNJoCp5Zoc4OAxNaOaza1+iFUUznQu38KZELzvkKpD2qfY
	 XSSfG1kj7+h+R+9wzmXdjtO1cKb93fPMAFWEdPA5nkrcE4suif4wPpXKxTXf1GIf3Q
	 WRUKK44dSTZvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F54BCCD1A5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176129159357.16060.12651042449688364222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b14c996c4a54cdffb971a06dada605ec3322fcf32528c63a9d5e371401b0307e
Date: Fri, 24 Oct 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761291593
