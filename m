Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311C61922C0
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749364194; cv=none; b=OJ4IKKcXg7MUpflHqIDu/qPYVb5LWOoP+zejMb3P9xJ2VYeOFg6kueO7xkMvPyB0bA0XuDp+04BOfawB+Ge+/KE+V4jhFYDNly/WG5O1Ot2ozoXh+HLY+3jw75TLieoLQ4bAWnb/zMCSRCU7l7SRGAjRdjQQaJGVRkiOH3Zh0EY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749364194; c=relaxed/simple;
	bh=YZIfwwNJ7dyfE6HwoQ7FMZrAEufJ7+D+B4mo90Y+TVY=;
	h=To:Subject:From:Message-Id:Date; b=pZmoDayt/q0NX72+vXcGb2Bu1vKYQQLqd5hCk7Yhn7l0jmM3eNByETlzuuLOJstSK579pLW6ZZlerGwWB5lXAv8aWQNe68LlxznBKhDuJpz3sYI6O4cd/dUJ4rf6QA3LvbgRTgTKd0veeceAP++LxGkGI3s9MOncvr8tr4LxnUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=grxq00AH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="grxq00AH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C84C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749364193;
	bh=YZIfwwNJ7dyfE6HwoQ7FMZrAEufJ7+D+B4mo90Y+TVY=;
	h=To:Subject:From:Date:From;
	b=grxq00AHADAjRWJgfmHQJECD99y4uDgHGtrFZXUhq9qcnNNPjzxPWG9SLIJCHldGd
	 edAACR5UhOnH8v+QEHR237JQAETOvIV4swCckd3bjZhXjAwvVpHB20yMP4EPrp94Zw
	 P/2bGh06phI90Mvc0glTB0lYdAhtb7z6EvEOkXyxqCvo7t3gznEcG6HSVumC5jlnH/
	 tzBAIYeLZIrmJtlDFI2xLQwku0Yoab1eesgPQTtQnsiJ1MNVmX6aYETTgw8dfdxNSl
	 lr6UWv70BlHOuja59Bx7XhkSzQjdKgISAcQWg8aXPBeZviK/Y06WPVdyd1ckCofRrO
	 9675VeAucYXuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939E4C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174936419357.7890.10949558292506077824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ec5f0de38aaef162c1b29aa7a7bb09c0526c9f2985f6c11e5c73b398a342101
Date: Sun, 08 Jun 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749364193
