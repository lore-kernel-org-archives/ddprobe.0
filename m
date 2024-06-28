Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B734F605
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 05:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719553463; cv=none; b=RyaQxhc0q61oAJvtDwzeCEZ7OMr3lWJIlks4xXn82xOXHl3AoF5J94xz+jO74l3LFk+oxTR66YCmJKwabRFgVhpciHHTpKrUYnlsyacbM7Ef/y1jCOIxyZ6J0KGCkONrMhRTPAuwkPEUKYtAHQaAO5yPJMb3VsawTwmbZfpOhQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719553463; c=relaxed/simple;
	bh=1mZvVbcniimmxgvD4w1qtE1+xL66QBMexykvpE1ZdZg=;
	h=To:Subject:From:Message-Id:Date; b=IGpUJUIU8Mdq8PEJbTSztiByudUzjBwIbh1kqhk4A2f1p+SgizSl/X0QFe0N/k4R6tFC5oXG1KZs7teJYVW48kd9LMmKt+OwG0cxbpTIr0s3CisFcFDsWkS2RhtBQMsAmA50v9c14208j834l0Uj8nWlC/uTta75hRVV/hAySV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQJlAoFc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQJlAoFc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31FBC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 05:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719553462;
	bh=1mZvVbcniimmxgvD4w1qtE1+xL66QBMexykvpE1ZdZg=;
	h=To:Subject:From:Date:From;
	b=WQJlAoFcLCqQwC5j9hxwUplNZ6DHmyF5SBPtykIEIN2JGQFGcKBl9gipYkpEekzoQ
	 NZShEJBBR+JHSiZhHaea577ajtCtgh44/7QG5LeN3N9dLD9VU9smWr1nW87PuB/EBY
	 K0zh0k4Ih8kI/euIo/EucPMFilQuqhndn8/MdShivOyHcfT7P0aY3VN6/c7yiGbzCV
	 j9mUEwHmyWIHFXS4AdYGF7n+eHk3EyfAnlSXGzFLP9fG86ro5OisHxlJ06bIyipPfr
	 ybRoVUeUAJahiFZO6i1PGEUDru3iJFIVgyT58OsIXKfVCCJEJNj4vrw2HpEgv1VaaH
	 CbYnalCAgJSAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B66C3064D
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 05:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171955346278.24309.17484207186607376613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e402059a6b38aceea9da1ccde9ff0fcd9d39a4f76e2d0f5aad72a3a7e108a0c
Date: Fri, 28 Jun 2024 05:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719553462
