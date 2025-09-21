Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4F01419A9
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758450595; cv=none; b=XuwWB1H+X2rt/jglK7yGlmfr7acw/eLjmyyi2voebDqt16jGTGPnT19o1lmDp1QB5jpt49NhZ3nNGlpMT/TH68/cFfpAhZ/hCODI0xeHPykAm8dCTm0p3H6cFNhBf+Me/5UaVoYCr0wvBLKOwi3KA02zTTWHywiCw1thdtqM++s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758450595; c=relaxed/simple;
	bh=S+rRQwnt8GrDqL7QBeNqALit7AOnotSj/nL7OMs+758=;
	h=To:Subject:From:Message-Id:Date; b=ap+2vb5kspOOv8kFy0htI2wPmhD+oqTsx/WdHZ98AtPoWIyffR2BI6k6hYaQXqxQkyDX7aNiSXRQkY8DZC2NTbpeXCYGWantMHGwLVDOPYNwMrtwc5fz2VlDky+LvBe0Xr9Cqcf5uqTmj9AiWnyAsxNyPsZ3001sdKevc7HhHvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F26sViof; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F26sViof"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7802C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758450593;
	bh=S+rRQwnt8GrDqL7QBeNqALit7AOnotSj/nL7OMs+758=;
	h=To:Subject:From:Date:From;
	b=F26sViofbikh0us7u4ts2GDKVqkCGoajHrNkXvHmk/eZ/xZAsz2oqh1zfWCLwtEIL
	 ElAb3Z5EGF/+vu8OtajCwuLRKy8Kjsr9CoT8rCX3+RSMP0YIHAPdGP8BuQzjU/A3qe
	 okgJzyQA6VYes53n1rKatNHkFjVYuMgXYMIUGdgX8WB4Atfz6Q1dfhG/FZz4l4KqLp
	 D2nKtTMd45i3tHePZJ6JNSifAFEGdQxcQc/i6YgI+Z25EK/Mlz5B1q+xNJffXpPGkh
	 2YHeTFLjviH/8oTWYKSurhVjz8crkun94hhUlwaoVeF/lYZnuuBzYWsYMSFoyYfhbe
	 mK8nwmoCxZpFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9220ACAC5A8
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175845059357.29375.369000132601026572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d428996a8c3d21fd12a9518059a9644fa4dbf35bc1230aa70936dc7f54ef3b78
Date: Sun, 21 Sep 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758450593
