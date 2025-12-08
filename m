Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326A113AA2F
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 21:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765227774; cv=none; b=Z6Zw/9jQ9SpOGvD4J/Yl1qvFWetMc7ztfLLZqPilKqjX5OD+E+7u/lVxEaTJ5LM/njLlulF+Q35qAXougCaGvIrWB++AySYTF+BkxN+k19b2JwbdSjUoi3wz0OvQBbEhCc+1PHKCaxXiWS+vfbXpTwJOKf56YZ+eSsROCaYnxi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765227774; c=relaxed/simple;
	bh=6mExvC0DLh98v+yKsOF6wwv5/mbhnMM0De1vMcYtXDY=;
	h=To:Subject:From:Message-Id:Date; b=R4iO/sulq3spigdcOqLnl0yP3nfc8xDhyGS7RcYCDVVzvjgEW3WH0RN/eidjQ5VOUTj4UqLSMykUxho0UWICQ/WLplM7sSqbfC0U2uIXOKKuNMNdMkfZxDcx3nNeaaZpysSQK71hJhU/JviPcp39ZmuTRURKLDkZuPDhDaTFfe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=am7qlZuS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="am7qlZuS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC8AC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 21:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765227773;
	bh=6mExvC0DLh98v+yKsOF6wwv5/mbhnMM0De1vMcYtXDY=;
	h=To:Subject:From:Date:From;
	b=am7qlZuS82C4QULhO4I9EaCBfKX4G52mGQIKduUDZdPfDJitbOS4PiKORmT/Ke9gR
	 3Fx8huosgpxHpVfoh/r1za3caDlIDdzIvTYhD7+vWmEszg3rUhq2dDl1Dg3SUgZza9
	 WamKQ0fbfJR5shXY1OK5gmTyOmxdthfGt6imJ/F0Jy0KW1cjklOok9wBD3m8uCsaKZ
	 rBsTyiQqqF6lifn57DDu7D1bPKJFuWDmTfJLfqS0P+KyqBHSnKrhEnof0T592o312k
	 DalTNnpXmmDqd2X+uDNhlpsUwEeM8IpiXxS0RKYIfeqTvuZXZ7i7I/ZSJIFLJVQ6xw
	 AQofnw7YhzbPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994E2D3B7E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 21:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176522777361.27726.7414423250233468662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 649fa9eaabfd21e600ba964e6f98e7d6f7cd6b759c1a733b38cae1f47180de59
Date: Mon, 08 Dec 2025 21:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765227773
