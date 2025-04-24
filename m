Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479D3383
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745461794; cv=none; b=bRuGxGfYwBu+AarrXuKGSriqyfyqvlC6hvBBsApk+VQgZoY0b78BHD/WlkH7CLQy1HQjTHoZI0vyNm49UxIf+LgC83YNpjb1F4YKOwRmjSRJuegxV+SsNze6gFAq0T8S+8rdYfmLXHQswEL9wBjl+RsM1MQgYPD6S+XHsG7ZY3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745461794; c=relaxed/simple;
	bh=GQ3ko7MpSnWXPgOMmLUcJSLMoUzO/n97bruAzZraQTo=;
	h=To:Subject:From:Message-Id:Date; b=r7H4RncmW6e8gOKQSFotysRH+c/aAJqG0VZofnAsp4GITTAX9nMpPnhejhMpwQNhgX89b6HKKIt8hUwvUVMNfQqJUs1vyrIZC6Qp55RSKNaF9cLzIJFumD6wMEWK5X0+H7a//pR30Wz1neiKz6ngFrkWknonBd59ciu2spdVC8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cDpCYbz5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cDpCYbz5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A478AC4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745461793;
	bh=GQ3ko7MpSnWXPgOMmLUcJSLMoUzO/n97bruAzZraQTo=;
	h=To:Subject:From:Date:From;
	b=cDpCYbz5Y6U1nUhM9gC+KYTdNPYQMGhszCTSx8jLbhkYohkQvL55+nHdOpDjH9skH
	 58l2azzS73vAH9J0gtrp+LwxZ0K7r99G05WSGR5RQHMmYTo9py9G2BEct6AFFvI7Uy
	 qkQXfVB0abbioJZkwNRWkH5bU0Vfl/4dG8uTdBRqZA3C+xZM6w1pjlVB/GdrrWR7ld
	 UDmNUD7vymIv385KZUogroji1NGyS0rzwoXFCrDcfObQD1/ZDgXe6jcVDwtNBAamtS
	 +m6p5HEaSdq2wJqLv3h0tbub4BejgKfkKACjmRyAuzyrjQZh/1+MlfMN759NwwHqLI
	 XR1fyMI9qtoQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C4BC369CB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174546179357.11766.16667716090016292155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da015269f6824e2f12b03ec8f31b1fb0881bb5b2c67b2e28550d180faf04b649
Date: Thu, 24 Apr 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745461793
