Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276AA8479
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766751834; cv=none; b=CivOZ+SIReLVrstKaM0qBCOtVTGP9Hir0sGmPc6PYOw77LB4CmmqCgXtDO3kmD7NQluWUczIqIoITwJlB27vGgLNK89G954wWXWT6uTxvHZGdaINssSAgE6XJ6r0mXpP0BnW7k3QhVShZRTmn/xfAOn/8e6zTvOu30/MG+xjr8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766751834; c=relaxed/simple;
	bh=rDTLkuQXhPYh7Rzu5UV4GLZcovpCebR6ugT3xMBhLfU=;
	h=To:Subject:From:Message-Id:Date; b=N8ISRPTXKVY3x3TtQcFWavLEu7WBN1TVI8+cUqJVltBvvm60BbDbsVBeZeW4TYNczV5ynan4jo232LAl3aDm1qoiUwFFE+581ePdQXfHc9iRTEJRJHi5dU0dmiNyGzNWdwU1hBpbWelrj1VkVqJQff5oKBuPlSO5W9NH3v88CyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSIHaJPq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSIHaJPq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AFCC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766751833;
	bh=rDTLkuQXhPYh7Rzu5UV4GLZcovpCebR6ugT3xMBhLfU=;
	h=To:Subject:From:Date:From;
	b=OSIHaJPq/VAl7F9jA7gEBfuByySFNGQpNUb7nf3naV+oK50sGTuN2Ms5aP9Ysfa1f
	 KzYXwcbN5tBofMsJ8/SoYawzZt1gdk9/o42frbc3krRU41P+WXtW2csP2BgtF2dtmY
	 0d28rIou/9CQi54icyrlKq/G0POaRCQdj8VyXH/iUAzlFnxZcsKn84tSEWuKE5soMm
	 /eKvxlrZXooaQJ7jGtRvMwA8+j/9OZhGD2ymGWzsdqzOV7wWMuIwC5x3x84mRi8EZW
	 lSbJoKFxRUXbsR5RKP6bEeVEPcCwBF37ycW+gEQEr2pgJu9J+sl7/UbrKZzYABdhmI
	 kjTiUwQ9TjBfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97262E8FDA6
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176675183358.1360.9568775429560069203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3266e976d9a994621906c838838a91036d995aee6c0f33bca22074c0e2b545cd
Date: Fri, 26 Dec 2025 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766751833
