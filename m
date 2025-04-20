Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF6FB205ACB
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745161794; cv=none; b=mKF2Sg1Jdb4jWnvBLwQPu7cBLhaKSxSItlk1fsIeZOLmmber1J+K3c/d4raCazHXwMSlr0bReWNBUiGNTmWUFjsq4qNUB4+sLjTbbTgW6Idf1VqbdBE0eMYQz+x4EhfGVK4LzS6pydqKXnSvUmDqQJP47JXbyAoYam0No7wWTj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745161794; c=relaxed/simple;
	bh=KO66ytYBK0flxcjwyXY0nVkAto8ykriqQ1x0Q+QqJQo=;
	h=To:Subject:From:Message-Id:Date; b=SFcrsErcZZct0shLtW/dJouX9QS51hS9Y6pW19MPR8GCEoF+vkfUx90W8UtG5RXf7nBeNzwFV5SRUBq69u9VDUGPigiFtrM/K6IFD07gGkScnuYFxEGAxNzc/rq+euRbKzqo+R8VCBAVxuGSZEas2QEp2iYu2udR/VftcZYH7Lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FB/HrCG0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FB/HrCG0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C30F7C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745161793;
	bh=KO66ytYBK0flxcjwyXY0nVkAto8ykriqQ1x0Q+QqJQo=;
	h=To:Subject:From:Date:From;
	b=FB/HrCG0Ze/WiAKLWibLnJczL3hS+8obge58947lTOe3PNFWykwwh1ikqu44kZcDU
	 LX8PrwMV/UQd65/KOqcTXA4DNQH5nOTXhg3RG5pXNAHsrtDTuEu3HGsNxriIylT7/M
	 FcdEOC48ohfdtxSs2A8wejjyBeY8hPkFaJa6WvQeD/tbmIe4PJSvJHVr6Qbh4ZVp4I
	 Rqvr7UFv5IMDwImJR5tfZQyPswWe0ixdBbWPZdLeyMSsfU8idjC4cmtZ2js9qAn0Hl
	 zANaNEM4kki65dM96nu7r4qkELYw4dzisQgrwmSnFE0BalMAjVVOUEvYCGEW55qNjw
	 hLAxxaOMxmAXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8347C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174516179365.11711.7933414315383208447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f44428ee8ef497d517710f25b16d0b411644b56b5b0a8fb13f1e1dd913433319
Date: Sun, 20 Apr 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745161793
