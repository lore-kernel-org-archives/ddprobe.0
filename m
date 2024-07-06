Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 894531CAA1
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 08:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720253723; cv=none; b=nLfqbjpfuKarvX0k7mwumFy33qgwf3GdMiljZv5Aj/mBzAUl6MI6E4CjOdY49BmYzPv6Mto/3mV7MkCz+sPDd8D2v34y64fc2e2pb5q0vomUnBx6A5utxUoZbhVAExHCSEaE1ugj0XCOUz/Awdt0o3fN/zE2hlKYs8WXkT7u168=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720253723; c=relaxed/simple;
	bh=N0UgNjq8IiTtYbF8nAJ58eYHU1HoHFd++tAxQJyTlBg=;
	h=To:Subject:From:Message-Id:Date; b=eyaWazWPV5dqK5QevrV34BvQ5wmv1mgw2iZDXT/qYa103lNh4P7StK4KRZnsVEVO9OcKW4UZyiuCg7kU9pQOEH9EAlo0MRKKOMnFey7jIgW8+V4aY/2N+SqUMkQw7BJU0faifdLgh/rTgOFco/dCQ20yeMXjIduw3J11+q2Zfso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=szM003oz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="szM003oz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00B43C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 08:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720253723;
	bh=N0UgNjq8IiTtYbF8nAJ58eYHU1HoHFd++tAxQJyTlBg=;
	h=To:Subject:From:Date:From;
	b=szM003ozjH17x5a7hJI0ejKiNYIc/zKxnuanLs0016o55xFBVw+SlRyWYlg5yxhsj
	 DKYbppKK6j/6+8vFUHHYaJVgRHYuyl96NZxcBZa5/U90UGMfUWS3MOsRGCWTL8tz+V
	 ixv0H8CGwCcQbnNugqrMmHeFSkrLNUlVQ+4JkbLI2W2dlaka9Lr7phnDIQ4W0iM9hc
	 uSfu6rJdEi2gBdK+4TOUNe2zwawvkZgUd1iCPGzlSnoZeXnaJYp6DhKeV60A9BlvP/
	 ZXhHLdYEktjLbVKbtWw/X7KSt1a7IHRpU7qdFlsnGVT9FTmQ3hLlXb78okDe1m3/VF
	 AVev77lTFt5pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0C2EC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 08:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172025372281.12803.11106655205041025687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43ad675b3bcd39eefbf2a17214546a0bd52b1e8877402f1fd1643802407583cb
Date: Sat, 06 Jul 2024 08:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720253722
