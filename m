Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB378F4A
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762207194; cv=none; b=MJS96XEfziuz9WEWKQraKtPcqX8MWM7DN9u/XlzhYhqQ69+5pr7cxlMAwJpRYBjr3785vWBSy8nyu/T3VPaiefzRXErWB9OPyhmoT4AlrTGfrZIZuDpMo4vvP0T0V/A7nudSJLoKn/62+LoC7YVZoia/eon6c3kBMAyAlbfQMjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762207194; c=relaxed/simple;
	bh=7K+a+85tgNMUXffm9gt6HkBrJPkcMrcNMRbBgM5guOg=;
	h=To:Subject:From:Message-Id:Date; b=j13snTEviTB0XCHKYyo0fkBtXJcQyiGyReIS0A6qAksvuuNjMHfjxdWnbf8qggwhz7apsBQI3fS1YzPnO7xhWmzwUBYiAIEUgXqUfL6+oZA22ZIL2HVwj0l7SjO4avtMavl3WKnMtGMmJfY24IR9MFAU1ujERylBY4+Jh9hLrcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhMHzvva; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhMHzvva"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B875C113D0
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762207193;
	bh=7K+a+85tgNMUXffm9gt6HkBrJPkcMrcNMRbBgM5guOg=;
	h=To:Subject:From:Date:From;
	b=mhMHzvvaeUwa5rLDRf9aHr+By1fhKUpyMEdVfgt48hHPVCtzZsEv4jFPFnaDW+sXx
	 iNvp9GPAUcPoAMmiS+yqs3MR5Yjd1EmucSBGgjXUV/x8Bcek2d2mLwv7lPbA9OHxmB
	 6PbFYaFFCcUKx3u0628APRXfOvHjadMaVjbtfkBhZyulNX1B/+jGxYUcX6JsEXgvkZ
	 1usObEltJpWr23CAgjnxJvSU7SxhwnMy7hXXqTa9KqpImOdOpM/VUqBSaKK7SmbJ7r
	 PBiiE4K6TgQw3l7FSYKBfrro+0YRj2uqshURyJMNcx6aHJ8NnHYM6f/lYet2XDD2Kt
	 BKZsXg9+SGwCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F037CCFA03
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176220719357.18272.1859243404865357960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c8dffb5680f38c04a047951e89eb74c229a2e2dd4f592189cefc5937384474a
Date: Mon, 03 Nov 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762207193
