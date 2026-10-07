Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CB3D48032B
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791368434; cv=none; b=gnuC+r8jJB0rk5YRuNSNv/uTi10Upq7TQtmGgfO/aeN4/DowZ89SYOJteV0zpmOcwJKDGMfhQ0nKiDHGsp/bLzjcOIxRU9gOSlC2X6zNlPgrJYfrPQ6tH46heK9LD/1WBrI6ouYJ0BxxNx0yLHPApzZym5TgXbEc+opJNScHv44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791368434; c=relaxed/simple;
	bh=aGfMTXyglgZxfJgzFt66l7UNv2jBEHiYZqjH7EaZiLU=;
	h=To:Subject:From:Message-Id:Date; b=CTNzkCtpPZhYvFKacnmZV+aW9Jtk7it3hm4ttI6M21G6+HfUgXzGswu83/g9sUQ+tEXIE9dNFRPfIb8BRH93bHe5gH042YE56Zfcz2Lda7AjAR6YWpigPW6tDBFMFwr4Euf6BObTCLbNeqfIrbz8PbnofcmIhQIjdS47obBm5o0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1s79oau; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1s79oau"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD748C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791368433;
	bh=aGfMTXyglgZxfJgzFt66l7UNv2jBEHiYZqjH7EaZiLU=;
	h=To:Subject:From:Date:From;
	b=u1s79oauUkTtl5tPdXIKm0YxkjnjwgYXCbmLCI0SQPugogGLhWoGJsFkTL6sh2eui
	 YVuUd3+Izg4BnGJlI/ESezJcHTP7iaA9ljC/qA8pX1Io/mK6KFL5PO0pXkfJ6RHsBF
	 x8KEUCygOQBQ8NmRKkQY+9yMZu3l3CiCxm2IIVU/zuYFskWF3Z1geEzo/UCPb0/W6O
	 11SsM7ZWF8gLVZ91aUhPKzDCYDccWXJmflbzBYX4+mGfM9ire7TJ0mBJkkN76Yq+Sx
	 0MSYxZe946KIeLRghaj9x000OHyhzMeJFM+bKAsk6hnbuPsgm7cSchCoWrOtNMp1Ye
	 2kBNN1fDjJPFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B39CA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179136843368.31107.687050349969747728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cc697bf9aa6b41432d08b074632b3e1cc53700d6e6d50ec92deb06eef52c03f
Date: Wed, 07 Oct 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791368433
