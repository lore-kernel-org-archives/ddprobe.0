Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42EE41D5146
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 17:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741887534; cv=none; b=LKt/37j/d4OtDwBQmAZO+0GGCvJewm0j2BhH/V1hctbp2sp0CHCMj+Lyudykdf/u+Qou2Ww/fs1iGbqbOxTncYkFm9nOMVd1Fmv5tqvcjgI2aIkKDRkiPNqtR8iKaTjtM5vb3BRptjPsk48gNCwzNafpewrRawYIJ2LC7uPqUQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741887534; c=relaxed/simple;
	bh=T3QSt1+xnn7J1Xd7V1S8AACLOzo0oWwqIBUNm0tf8a8=;
	h=To:Subject:From:Message-Id:Date; b=gZSHgIphim7M0bHE8goQI6LhYGvG6EC8WXiDN1fWIAgu/YziU/JPMx88tUtk+zt744PZW2anLbOlAsXVD+Xv2eJVtinqAzpT7x1p3AeqkIjloQmm78ku3QA415WYwF8a3l948OctlqXA2u2/QNQyGlByqp23Tbi1lghWm5rNNjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n+cELLk2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+cELLk2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD86EC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 17:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741887533;
	bh=T3QSt1+xnn7J1Xd7V1S8AACLOzo0oWwqIBUNm0tf8a8=;
	h=To:Subject:From:Date:From;
	b=n+cELLk2ApR1NA0ze2uhRQJN12ha8BxyUUGxvBojOzhXKfOhTO/jMauluRSKF+BdO
	 5uaL7EHPRT40LvYxusoye02r9OxJ9avcBNRrbhMNp7m/vXcp9oQJD2JMXHdV/G7kVA
	 VkJBENsmYNmcvjpZyYj2GOyrnbAwAnHPY//Gwi1JGYSKivBRB7UHKHpxWOQ9CPSYJX
	 sjmyBqd2OqsfRC/Wn7DHHazoTFeRKZWBfd9WNwJSZM54eZUF50EeRCV/VuEswQA0Kb
	 1RvXeBhEA1c2f5OKOfTsvq9+kCT4ROLVqEBwDPP9/4gLp/3pY+6VoFM1rQHIHkcJgS
	 /J8YZfF+tgI1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99508C28B28
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 17:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174188753358.4720.2067519783818841005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 404aa5a3a7ec50d7c1daea24d1767e36f0e320a7d6bcac89a73656e1aa846c95
Date: Thu, 13 Mar 2025 17:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741887533
