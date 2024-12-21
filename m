Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E3B16BE3A
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734750954; cv=none; b=nFdsEI9sMSduzE71Xae++aIREcJ8KJQUSYCapbG+me/7g2TI1OLPg04WgjKLk4OZ51XSs2zod0i1c/ssaWdYIgBCQbpsSdaAr2NJpOtNh2UrzSIFm0KV5zWGezyeoxjMLUBaL1/kkyRWkkIvbtM6pjVFUB0H4aSL3EzJoBLljms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734750954; c=relaxed/simple;
	bh=YMwcvKgAVkVDq0ClMMQglOVT8gsal4pWMqIQcuOOyrs=;
	h=To:Subject:From:Message-Id:Date; b=l2HkuzOrSLTMaAnPoyGqZeKlk88dMibsuuk8rWxr9y78UUb7c6MgUlzIxxA4wtr4eF43TKGJjmsIpVCw98nQDHZ0wqCqad2sYeNrxu42YxakbVQGuKzVYDccR3Yje4i+kgAKtQj4LrBP5s75lmLSNTglaZT5tiH+efBTByXzvTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQ7m3oKd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQ7m3oKd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B63C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734750953;
	bh=YMwcvKgAVkVDq0ClMMQglOVT8gsal4pWMqIQcuOOyrs=;
	h=To:Subject:From:Date:From;
	b=IQ7m3oKdqlxiTan9kKsqY3MFUCplOX3LbXGz8dp2Kbk5q2HQsdE7tqIF0cN/pzE68
	 9Zga2XuubhBmIFRHmjY2vaq04N2v5ZzO7XaDyU8hDtp81wkfM17NiM11j1W3kURMto
	 89B8BTBRaqMs4RwRZSsqwxA+4Jm8K7dpwllPIwaINUexU0vAot7TLex/lCvFedLs1g
	 D6UkuAmhkdLJEEwNaAHzD29a/q3ZgPzMW5o9RWX5JtcSk2I4HZQnlCOd+QUqJvhVY+
	 c4YdRwwWYwF7coUrywLNX/eH1zr/klJ7HwWJES6GvUIGx+QQqoL7FyL/yQzZoG1WaJ
	 QzNyqWAOUaLcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2FDE77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173475095361.19705.1777258251776940418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b714e5fba29d0c97a08778e4e7ea7a371f2b4d05764488402eebad0612a0f3d1
Date: Sat, 21 Dec 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734750953
