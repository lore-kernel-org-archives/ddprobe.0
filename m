Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E45E341655
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757431194; cv=none; b=oBFSazjEYLtPRqG6EErsP37uZur2tlzX1nkUUhxygj37tNaNezGa+ywHamB+JHJkcXio07YME/vYm03j+wBgkrvnnb8N5vXLgcq4enBy0Nd1KJtg7R7WglV/qknbJwtgXxAaxTbG1HvRbHJOit2YuOl3Vhy2cImmRHEre9np4Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757431194; c=relaxed/simple;
	bh=ynv/QX+ax63zEXhO3lR72Vx/qO/0MkNb6vwClGZ2RQE=;
	h=To:Subject:From:Message-Id:Date; b=oaVM6VmLH7B4dKQEBf5/AfUxk0Vhjhn4XNMS7uZg1kLKSSIpYZgWdv7TQXewd1lZO7IItmCnijSzrxP77O5jddVPq82PYT6AZ38SKyKJ6/HubuRE0S3mOihPX/wytorIFm+5T2tBB0kZZ/9SaTkKhuhUjtzyQha8NNa59GAqzOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZk1MGna; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZk1MGna"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CF4C4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757431193;
	bh=ynv/QX+ax63zEXhO3lR72Vx/qO/0MkNb6vwClGZ2RQE=;
	h=To:Subject:From:Date:From;
	b=XZk1MGnaWB03QppvGLs9xVez0XiexqQLxsU0a2O/rgkIYQ/SoAjevXqHWCcTIGCR8
	 eki5aBht64C9iVa8+TJtBhMz4PNbvyaSUHlA3s8YiFf68VO6mB/0anzR3iW90wmz9A
	 1J8YDZtVsx58GBGc1WRJuXh2XAxU+DOsyTN/vBQAUFgahlBeRjG7qjU9Mstvk1bE46
	 sKyxyg4iGAogAJptcRHDkrLJrxBkFOD1v49nF3Ll/72sB2T5iWOr8hMdYGAYF8l8ln
	 dFLlHCK0aWbNB9lV5m8VCrZUhbaHvS+6QUZTdkdr5o2QQejdC79XbX495d3wHmrQOL
	 sLpONKkr6CNzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91898CAC587
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175743119357.15368.860704652493463433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19695c7169c3ccc2d0a7ac175c4893063016e535933249eff6e4b144fad07c49
Date: Tue, 09 Sep 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757431193
