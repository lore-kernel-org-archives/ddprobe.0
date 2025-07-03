Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210E125228C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751572795; cv=none; b=Uo0S66T1xzGdTPejujX8zowXqHBLd5CvBNByWCcNpxwyRKWzSkuO+W1vryNa16kZfM2tQVz6fhOMin3b1yL5vNL+YTibyWlGsQFCDj1Etjc22NQaiMFDAyAllrOK56Brr8YvvlT06CEWczgH4oXehfq7gkHuno0i/0LEdaSdOqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751572795; c=relaxed/simple;
	bh=yH87kKrSej/flvjcIc0zUG+pi1fpB36us6PR5PaX3us=;
	h=To:Subject:From:Message-Id:Date; b=CSfeG196a6mYl58aIMW3+paw4XQ+4r8VF+M0G7B6axpzJ3WKiwdyMV7E1IU/l8eDgZcFvK5VlxOB032CV2W9ExMwZeuE0XEhdrjnRgg/lQxZKBu6Ada44jet8uvptWfpH48JYs7uxyGHMuuRzd4KASgxSl1zmCTXuS26Ltym5UI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q7/JeCJl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q7/JeCJl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D5AC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751572793;
	bh=yH87kKrSej/flvjcIc0zUG+pi1fpB36us6PR5PaX3us=;
	h=To:Subject:From:Date:From;
	b=q7/JeCJlQU8WpdTSPoJsWijnYb/P/JMWYghZDqjCnooJch8X5zW2Gj8tAvsH7pxB6
	 +mAVefptZX/5Mo6Yrw6ZZet8ii0VRrITJNbzbLGbZYjR2E/G/ZPd+im0SlFsXjPZNg
	 FR+slSrjrZecLQ/XYBJNWD8A8Pygk8T7/r4oDxeOlkF5UDvgH6ihtd0KumZFLZRCQc
	 hLdlUKQ/RTCU1WLrVNnynwQwiUFh0hvVsE5XphqoQtg+Kv8nwNGdUgrH9u8+aR8ztE
	 RdLwgaj2GT27yD5pshBpd0cjMw76kSJ9Dn292aWh4tcT9QgihnvxhHRI1RTKkwtZps
	 U/oCZ7efZv9XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948CBC83F03
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175157279357.11597.2197495133288847337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dccce0f3a391678f39144460213e00c7739b8d0f13f0a68ba8d8ea61c0c9836
Date: Thu, 03 Jul 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751572793
