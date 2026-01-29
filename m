Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 051A0309DDD
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769718834; cv=none; b=PqniOo8Qp5myx0FdSNpAl/Mq8DjO5VJsbNvupz6iuZzcd4/Qgthrlnd2WH8Hi3JB1NtmJJxN8xy2zrYAY86tHb3wwLu51u/ygqPqHN5M5HNrdwSl3dunVEsfmpjU9pv/mDb0nUtTm3lisvgiNM83IOOhrvHCTzCpX1Ja1WM303Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769718834; c=relaxed/simple;
	bh=pvnm5n4rNbNSTDOzT4ZIvSoQCJ7aKAr5REDNEQS5/xw=;
	h=To:Subject:From:Message-Id:Date; b=H7HFLo7me3QIEGafE3gyxBn8WY1mRbsi/R0YE8mbwp10M0nRrCa8bxSuFdYQpdsqGxCPsWEpDlboAbo0ZfgwJSnGmzf+r6OkDR8cqabOuroJ0wCX6d8dYUzIxufViXGPCSVd/dvMyRyT7+YAdD24pqYlzoFJeryTMyTmfgw+2Sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=otT6577s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otT6577s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF35C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769718833;
	bh=pvnm5n4rNbNSTDOzT4ZIvSoQCJ7aKAr5REDNEQS5/xw=;
	h=To:Subject:From:Date:From;
	b=otT6577sy1gCnX6ChJ7xW/gsfguDORttUG0hPfTTVTARuxwiZqcR9Azvi3Wqr/1Lz
	 mULP6D7OgHN/zxOo/BWZmIsePMpdGluVUz0S9V3kpquSqNKFM8rHfANJAMwF1L5+Be
	 Y9KHT22b3ds5W//IALQKYHy88lpWwtywzqFB3syCqhXAmMxolZW4D9Mo6W+wEWueOP
	 Sy14iC8X+8/nHKPWYDp9w0WxqwRfUK5Ns6etTr+Kx9fxoz6+wdIjEuS3+es+3RCXn0
	 TRqViuftqrLYt75NC7sU265u8fWQu1xafG///XoAMTtpIb7isbiNdtPqQUzl/NLTmh
	 czc8WM9FzEN4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90394D73E87
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176971883358.9590.4759240336743952880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 544d16501aaef5df8987ef9641adc1fdd98c171aab940a0854f1c4c61fb7ba40
Date: Thu, 29 Jan 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769718833
