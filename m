Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142F41F92E
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771895094; cv=none; b=fN3Qjqm54b7UQ+mM5m9L9L2K8dfgH+iKmlsPr5b5FrJQze24smA6eXloB8UZzfzJCHYqqn/HPD7PegzvpB+VZDAi87Dyoge7PdUNm/1hbCJ6sW5StxrwDZs+HDaXn5i3bWRxcwWgOTNvEKiq8oJUbfACl98Y9X5RQ7eD9kq9a4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771895094; c=relaxed/simple;
	bh=Q1Emg/2LScTJKSzR+YvaP6uH4A1k4f4sXzteA7XGWZI=;
	h=To:Subject:From:Message-Id:Date; b=DdaI42irRDLZeQOV+jnJEaGZHBn5e3HhwMqV+R9JX1FV9ljOgDmHwSWTf1Xwa5iCQZfwpcm98sesOYqyXw4+jjwNF4EXSmSFrzOHnbqaasvgQFTfnLyRzHyLVA2U5TuMyNly8pHZpsor3nOJFw2yI+teyXNs7E8Go6+pnSwpjKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQ/uRHnq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQ/uRHnq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72F7C116C6
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771895093;
	bh=Q1Emg/2LScTJKSzR+YvaP6uH4A1k4f4sXzteA7XGWZI=;
	h=To:Subject:From:Date:From;
	b=JQ/uRHnqbt3xjXPiBs9OAGTL+r93bA0HnwE5FIF+N+7vp4SAPHmueUHvEpnt2A1DT
	 oTUksmaDV/7rUjo+mMUhy0oOUg/ZRvnDsfhuAcAYG8B4Ng0ZLQ92IcMXk05J+qYvtb
	 UPDNAZJJDQ4QB5SekxcMzVTG082/wEI3PThM4zxKmADSHlgXbaPUfnlDbJiHtfXdMn
	 TewIuglu5KG5gXFy4E+RpPXrzzi9FcbBhOiopHsnRliwd5l2Zg5lHblmy0tdQ9xmdS
	 kNw50XtiQw7awVsYG6Tc0bR+EsKIZWES1yqIV/DY3NCgh7lLOdR8j5Agl5tVVIRpkc
	 Ji9Ks7LC6S/3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9845BEEC2B8
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177189509358.6988.5877181652208982919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d44248b703d9740d9afd7ee128f49d6b5b7addf2a73ab99bdb74530f8f48b692
Date: Tue, 24 Feb 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771895093
