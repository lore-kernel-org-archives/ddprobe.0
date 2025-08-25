Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4298829AAFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756155594; cv=none; b=mnQpZS7aq8lVz/yNfk7fmeXEYoxr4GxzfGvZpaP8tYXuUgRukVhYBy0BvEjBXS5D9nOBlaRyYVlzFgG8DZsWJ8LEOXZe8EQUt/1JDEvsEbmalZ3ipB2zMji3MPZdYbNKeTh3dMbTvN0lCXX8qx/AgSwVQL9LZgU/zy23kNAQ3/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756155594; c=relaxed/simple;
	bh=hCP/s3ZcexjtlbQX/miDBV8qMcRsJXYOzbgktEdGMbk=;
	h=To:Subject:From:Message-Id:Date; b=ZzVvtkJf6VfboSA4mI/ROAc0qjghdSOnB5SnLR2X+LT7dDReBkLmcylyFgNOsKWcf+BvDoTMu7hJNRHDfqsiQ3NlstaS/54NpWqX1MqMNcgscn8pi7aeJPSn5u6zQJBkFEjboEFg6QqBzdRb1fsNaVdLKGgujUvFAPTmOpurmLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pe4l1yEH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pe4l1yEH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F90C113D0
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756155593;
	bh=hCP/s3ZcexjtlbQX/miDBV8qMcRsJXYOzbgktEdGMbk=;
	h=To:Subject:From:Date:From;
	b=Pe4l1yEHHuv+87XTauVx+xBuTrlQq01EFJyyMGJyI31jGZQY12/3zK0jVja29T4Vv
	 ehKWC1ZJuwIV+ve7vStZM+3vepf+Q+tbvcpLBqdXvGDWSf6EfX4ZQMwaWuhBoW04IS
	 FB3DjLuYZV5bV9Q05tQDvM2AJoTgk9a6Bg82SYSW7KPp63sK2+FEnZiO52AULe0p+B
	 AexiyL3MV4mfYap0a19qHgSOj5LahJQXw6W3mjZ8UfeRui/Hy2ycPuzKL79y1MT+Lf
	 vGGSnu8slOqGo8nDs/16Kph1VjWUAbE/miQ8+pYWgTX1X8Uqm7WCOp+559yfsEqefH
	 +jmj8j6dKAipA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC42C8303F
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175615559357.3128.9307105644592874416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49baffde288d8be227eb7bed86d8903293294293419753edd00324469e4e26b2
Date: Mon, 25 Aug 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756155593
