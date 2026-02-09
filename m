Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5872459EA
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770639834; cv=none; b=pm1CJJPw40C5n0YJvcJ/GEgr0mix7DOK/VClRfsYxcEaDvVkcfBLR9VqMwSzGoXQ1cIXF2zDWDugwicwqJTNwFB5EmRni3mKZFs2fadwxvovAvCvezU/QisMBCoOF9Aq6q9nczVWjEhNl4d4bn7JS72ND+I4xyBnXxV2SmfnF5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770639834; c=relaxed/simple;
	bh=yKu1dkZxBAwUYhniS5HMGyVAgkSI77Da0+OwUgH3Unw=;
	h=To:Subject:From:Message-Id:Date; b=KMD6NtlwqAvrRXnxwG5+1fMHQU8ttzPuemzGF5T1E7DS9b1DzLP649U0IYTS3jrq3KXrN1y8yAtPneVN6eRXriF6+8+65hOdqG/iwi9tz5odj8WDTsKj+eQf2oNBvP5uuxFGDfnAjnMpALaUyHq+M7omPEArQ/bB1mk/VaUtdL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQenD1Ig; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQenD1Ig"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5EB6C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770639833;
	bh=yKu1dkZxBAwUYhniS5HMGyVAgkSI77Da0+OwUgH3Unw=;
	h=To:Subject:From:Date:From;
	b=RQenD1IgAyaJ08Kz9IF3XljRkikZv0Ye8OnJyM7ZJsO68Z8+4JnfzgTmHWRc5EMQS
	 dVF55g6+yCTYHvVjgSqMzrQMSGt0vdCllHbuAAepoOLZRCeRBMnXjgqRGlR3+SkzYQ
	 07t1uBpQZzzbMKphqanIhODFRVaTvQtaTToLHyvGjq4fUSfq4qxh3bOz3K75isUi23
	 v4jTRu4rQYod0S6AJfLQ5ZwncFQSEL0WQA6kdcSnA9oEc94I2CPjSGtR4/9AYTmYbE
	 6qqssXB1qHkWVMCu59dveF/SCp8A4aZSX8aDl5YMFH4wab4PXChdIolk3wfdn8dlOJ
	 3+2FMmE+XMWgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1A6DE81BAC
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177063983362.9490.14959003537446003768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2156d5633f641494639c7ce6c8d1c5b3312e2b3bfd7d58c7718302b5c8ea8696
Date: Mon, 09 Feb 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770639833
