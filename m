Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DD2202C2D
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736373354; cv=none; b=CQkcicJh8TYnVgBs13FhsDosU9ofb+P/NI9GhXD23y+sPHcVCQPH5fOK+ZVIJ1V+AgtSS5rdlGnkDvzSbttIE3ImjiqyU+ZHsLY5l1gOMkiE1cKUz5ub6IQFwiBZws8Ih1Zxsy8taIXDZYLDFbwCYhHaLcxT3KcgUiMP/drwx9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736373354; c=relaxed/simple;
	bh=pt5DSfYUO7bVZe/N9TLKuS5Dld29dZKrBU44R8PPPQs=;
	h=To:Subject:From:Message-Id:Date; b=EWfSaZpX/y5Yka+jZfQID6zoU8sm2NHTqWyPAkiCQSDd5lb1nKXZ4odiFGcSqfK5Y6Cs6SRGJQg+sRy+FJPsbfLIX6N4Kd5U5CTrfUa/ezHLUzpcsrYDqDZ9YXfAnb/+vN/M4ITZFMcapZDp50uZWFyO8321ar22lyk16guPVmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4+65X87; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4+65X87"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EF7C4CED3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736373353;
	bh=pt5DSfYUO7bVZe/N9TLKuS5Dld29dZKrBU44R8PPPQs=;
	h=To:Subject:From:Date:From;
	b=X4+65X87S0woGvko8CJdFP2+MsrAKznj1Dj6SmnSEWtXNQSWKtwucpufMfdL9gd+N
	 hlqyxO/Yph1OHEgsczot6kPMjbRhsqcBV9EWD5XALvEVCAIsy0ZeZOJbz5GAxc/1tX
	 ZfDn3qvPoehjbAj3ZREqdSVbJKRKuoLxPrfElnGJ+M84bDIeJXM3DF1kav98NNCT72
	 dhd00sLA+HUUzxNpjwGD7bdcQWcfCMOp/ajqt/bb13kTCG0lWLzPT0Q0PdyQYDd4cU
	 1BTakhgpNklVF/evwAc0Hm8j8MDv9zhV6RSlhQIZ3ItJp4mdzaZOdgzfa3nQQ9berE
	 JMxjuwNp0nSpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92553E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173637335359.26756.7655002036164807392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2ce5ec13ceff2726ddbfef646aee20914ac70ad1f0e8a14529a65865a78ee50
Date: Wed, 08 Jan 2025 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736373353
