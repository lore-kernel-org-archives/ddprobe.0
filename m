Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE4119F13C
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735221354; cv=none; b=sgm/LIxqxcwUOFALSOJ7/eZTQiFM4RjYjmMmm3qxxeDLi3cNk4j3fiKlCm7esz6FUd/NH9EgAc+UuS4NPdyGLyso2omtpcoP3J9m0Llfcj+6fusbqM2b1kmL2IFGXpv0GrjBfTanMVZm1ADfCvb7kzEWABjYhFB4B4pxDGE8Jo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735221354; c=relaxed/simple;
	bh=cUosflwlCd5wAR1mknChDFjUi9skGRjFfxJCIOVHtgI=;
	h=To:Subject:From:Message-Id:Date; b=RFsNc3PXe/uEw745EclrktQIXiZf0OEtrZnJGuJfyrFIYxONJMlyyZZK3Lft3E36MHmk1hb7TUUOqBOXcB7AzlUm+8HKgUBQXl6Po/mSwtCcQGS+19NizTGqNkg3r5CKeMumd3Lg+uGyIAEEBbOvIsfRkEpzEN698uCOTf0hQbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oxu/h1mS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oxu/h1mS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF048C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735221353;
	bh=cUosflwlCd5wAR1mknChDFjUi9skGRjFfxJCIOVHtgI=;
	h=To:Subject:From:Date:From;
	b=Oxu/h1mS4rPKsOCJ/VnHGA55PyUBw9HhNaMjUQb3LQZXJBx0/s2CpKhPp0UucaELL
	 wrIGpi8s75xU7kdYqPq/bX6A8gk0gbHiW3FC/rrrqIpmkb017EKIZsPIJ4Ct2P4elf
	 jCeB851k930VjFbUM9o65rQh8pKctjoX0B4H4XXiU2fR3THqy9WK5Rc53yTWLZsZt9
	 yiJpxUui4R88Mrsw5mCyzXmUTyjt2rB5eZY29ObzP1LLn2aauJ52w6Xkq50ZE0e16R
	 j3KdWxpPlBWXhCrGvCa4Nvi4bMEUDPeTDPn1b2xNG1vvCY+fCYxZhysc/ex5q8VyIC
	 X/ntU/6yPVsTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92446E77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173522135357.9188.15413374714301602979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2358b0a442d7460435f0c3112b58c60ba9cff436a4c8ea04d0dfc2421bfb8d94
Date: Thu, 26 Dec 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735221353
