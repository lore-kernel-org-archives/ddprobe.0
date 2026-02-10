Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21449481DD
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770699234; cv=none; b=DsTZ61AIcu1brinukwmCgyKaxZxHy/zcK57a+vnAenWVK8xDuqKrXgXjr3jjmrTVupbGjvNdSkPX1eg9OzVgYPOKywb0vIj1Lv0RdPKGOA1oJL3KFd7mi49XjDwnXijEqRUHoFiOGYj21Hov7V0hp7z7zBBu1fN926XbcmC4wL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770699234; c=relaxed/simple;
	bh=+X6bU8ho1BjEamrLJ6/im7rZancSp+C0RRZZYOKzJIg=;
	h=To:Subject:From:Message-Id:Date; b=gB/l7dhQDdSzGUHRqva+2CpW0ELqaVukrYOs6ZlkvaBrlMgwcOddUoohQy4Y8jQDPI1hDWlMTPRG1HhMok3woCh6AgKcDv/RBpSx3jyelqlDjky9NbHDJ1kkDYVMbrj400fNXK5hDgdHHeLhAHlyZEz6GEVLFUUSnwYwcph0Q7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5XWXqM7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5XWXqM7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B51F4C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770699233;
	bh=+X6bU8ho1BjEamrLJ6/im7rZancSp+C0RRZZYOKzJIg=;
	h=To:Subject:From:Date:From;
	b=C5XWXqM7S/i/ccJhmAWGNxtCTXIPfF8ttZUECj6viDtwCTH7Sk+cEBUGVo2gpw54l
	 O/MAXEJrOL1EMSwI5qHeRSG5OsZjcw8oFfPFuwWxrPY3I2K6rEZDI2bAYK8Ln3GVqC
	 1+HmujwZmn8x9o8oRcQ+yDIEJ33JPiCiTgBujrAwoxGY2PWaYdo1JAw5IRIJpzVvdi
	 QnyjrA9Tdb3aHvaYE89CwZfxXfJ2TQzvkGP+4h2Up98XDHTgAL7D6fkUKyKc/0USui
	 yO+UKyC7Q+zZz6R6Xy9LBYkRjjBCNQ69CsIaftyJAZa1ubfPVMBPyMxrLa9ms3+vo1
	 39lpPrqIzhxBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F9FBE94619
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177069923364.12847.16905609886498183859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 955d13fbc5e378a390dffceeda2a2acf0f25b3431ba4798604d8a09749cceb68
Date: Tue, 10 Feb 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770699233
