Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEFD7483
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760910594; cv=none; b=Zkv4MkrwXkxF8I4USwG+vut+XZH5FNEXz3VHE0szgaDZtNF7CLPH2Uu6Q1eiICl64rUB+34g7sUwdAgemBql7+tREZEbG7vsBtetrU46yc0nVOMyjn4cUUjdE5r7hfTq6TAODxeHY2I/o5m71HOWsMOuvHHDf5OxHKSxcdCrEhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760910594; c=relaxed/simple;
	bh=Yyy3zMkrWnqZhC6qdiO7RQ1Jh9O1BgdxrbvkdV4WODw=;
	h=To:Subject:From:Message-Id:Date; b=kZDSYLhkbYF9+3Ln2IrdSVyrUT9V7YNuAirkkMo+jvhmFEXe/mAeROmJXZpRpwZXo+0rC/STZyv0B2bi4mFS1wHSwb7GGd9P6c1WEcSG97t5JsqKwRCnhV5sIbSQqIEQloRssfnmLgVLbSCXaJCac80jEyATRvHs1XsCojxKJ9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jrsnwNnH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrsnwNnH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26A1C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760910593;
	bh=Yyy3zMkrWnqZhC6qdiO7RQ1Jh9O1BgdxrbvkdV4WODw=;
	h=To:Subject:From:Date:From;
	b=jrsnwNnHGS4Idv1x9wwU8y2r30Zx6U8RGzFB6qD9MNA0/0YyEZ5ev2e7RoB4ek0HH
	 EKk9Z4M7FFy0FFNpOMV+pRzUQ3+RLFnc8dUrjk0Fs0sdujjsK7kSF2YEUb5ws+PPsw
	 Ao9qw7TKySDo36LxLKEbRImBoX9hwS82OExptgMFg7vbzMmW2NoY9z7rnPPbu4Dp0f
	 irA4ElR9wKexf1e3EwycatGvd9Tf5tMSzJEY+ueFP4Lf358etQOCmaC4bs1+TR1YlW
	 7/vEpZle6Glk0adoaZXKpDZFD9/qldS8hVCNKH72UhfDXOVxrlTgjWEJlQOAWvMdvQ
	 sAquvwx9f6mAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F651CCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176091059357.7461.5454283730389245750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dacead9c1ee8d9752bb23f2dce200057d6613e29cea1bdebd749c7305f880f7
Date: Sun, 19 Oct 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760910593
