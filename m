Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCCF2BE657
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767059034; cv=none; b=sGn/n5TIPhM6mmfstsMmKtZVzMPkaR+VjHB1YCnqwAC/9AL+AVdvxsdpm1AXeR9UcHnhE5kDBLcAh9afOur9hGkusk/TIRmFnUAZqwEXvOuLL1ShCrm4Etcv5xqPbChBFON5jQ1elAKHLsMeEsRTO+JM0+BxAMp5VCgDWRvFc5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767059034; c=relaxed/simple;
	bh=jIqO32UwNG9/QuJ8OnQnyvLKBU5t77gMG6kjRlb64Ko=;
	h=To:Subject:From:Message-Id:Date; b=C05vXLrKH0pM3Q236giHKWU4nHONtiKXrMh3jNEwXWmYltoW2eNo5On11XsYtp0PK5XggrfjaZr7l3h5daEEJ2RB0IEQUrpl4Vk3jg1ef3vZgrHaZ6EQXM+Y5PZTd89vGAsuu3KhNU3H/iCX8tQQvt3trYEmr6LF42/9SGxtpbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnSlzUu7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnSlzUu7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7468C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767059033;
	bh=jIqO32UwNG9/QuJ8OnQnyvLKBU5t77gMG6kjRlb64Ko=;
	h=To:Subject:From:Date:From;
	b=mnSlzUu7CjdIK+3zoLgGUkd2f6F8cQRsMSVwifa+cHIpzHcZOKaX9udGKJrl60X1Y
	 842WjPy22InCxEuXCgZr5Sym/Ian09XNp6rEHAV/s/bRgbY7juv/HFhqAwJn55l97G
	 ZaQs0+BciAfMf/xsExuOT5HiWOjno9k9WwLemh8FHb5HcoPbhbGP0jXtM2gZK+FH4Z
	 HSEG6VkqcCN4dNuq5l3B6aC0iDD12C3R6oII2hNGbYAmM2iUNw1imqfn65EfdS8IZl
	 8ed0OivtKFquCsF6U9jQFhqWRjUQ9LdZm/lDQTBkMlnSSf6YK8NGM/RhTX0nn44W38
	 xPr/3R96B3RfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EA9E92FE3
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176705903358.4056.10204393889048304658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d143dc7f0d4ed35fbf26aa81ce966ed92fbb802b10f53dadcb15af9374d11f72
Date: Tue, 30 Dec 2025 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767059033
