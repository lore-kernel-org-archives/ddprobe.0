Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1755523AB95
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766605434; cv=none; b=e890+RklkYuyv6juO4buIAm7LRik7ZM+hGA61oVMLDMh+vjOW2LyGqRfMoTo17xZrlt5B4ii1NT8anHv0+NAj0EB8S96iakRUUUjsOqmatAzYHoEm5oM3wxh8Jo8jcWPJZ5KnBXrMcaKqEnbb1p1giZdsgYvM9GmHysXBaJBn1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766605434; c=relaxed/simple;
	bh=Cwzpj9bL5aLGx2mT8Iw0vuUWz04DefzjnfYY8vddYck=;
	h=To:Subject:From:Message-Id:Date; b=busI8NjUklOtwkwHIu6BLg/tDhXgI/X9vTmy1Jwci66VEidvBGKTss712GD13U+nBqB96MWumRmriQ6Zn77PlF+KP+w0Y4Td0r+GXp+dfuWGERKVT/ZD/FDaNLwhpUWOs0946gzG2HAl3hMCHBh8hG0fHPIVjhSCKBe4BQyvQUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gl83PW8u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gl83PW8u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A775CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766605433;
	bh=Cwzpj9bL5aLGx2mT8Iw0vuUWz04DefzjnfYY8vddYck=;
	h=To:Subject:From:Date:From;
	b=gl83PW8ulc8O/laMC98dcoyzTRFWfW4VwZAua8+Va2ltP9Y3Q5+XFb3/rjfMqOI9l
	 oubQVkaZp8K5n5gNg6RatdMEBiirKUL/dLUXxOfTa6qMQEnU7nJqGW+/JhDRKQEHVd
	 XZhjid+r85JUd+YJck/ontA6J5Ha2KvZHfnA6zWky5lZi47K47Y+WqkGjguszheitJ
	 FjL0XJKeJFCtUnxhlQZIL5T0x/W9dI0tN4/RPOuwVSpAUTbmvAN3fJ+F1uSCTPjaRy
	 vD9lWd1KXmc1uZ+vSALaTOh34bxWoxdwOmQ4PCxkta0CQ8+WdjRWvUK5RvyQe3j3AU
	 mEN/Z+wIVjqBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9244EE7848A
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176660543357.1801.13102416896219750827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a37bbac3d7b74945f395b8c39608f49931ea8d875604813ee4659d24c561441
Date: Wed, 24 Dec 2025 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766605433
