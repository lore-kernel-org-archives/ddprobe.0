Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AEFD2E338B
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742080794; cv=none; b=pmFG5eJUhwYmqgxAt7U6iDWf0HtLnh/RqZgD9s7HkUKhByoZFBkeSiSwwb5lZp4n+mujKkNLF8+wtIUlZvxUFUBr2GPLSRQGMi9AqZXUI0L9BEUllCxlCvGQHCJ3umGVk4NNoXaYLBkDo60SI681BxGJs9nShFkV83PAoLJN5SA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742080794; c=relaxed/simple;
	bh=ZK1tG/XQ20foSWoDa7QqSqA1ikYjUptTAvPgpQu3Q98=;
	h=To:Subject:From:Message-Id:Date; b=u5Bk/sWhkiLwgPXOZx9rtyIOhZ40YwXd8smPa2CYwUs3hLL6PDSM6mmeC2iG9VnBMBfAHJQEGXrW61Yqnx3zjvisNEbVMYs01YFJG1wMsy6SJbZdbuGYuiDpNAK7UM2VqKkxzIY3ba+OiElwp94iNzTqgajSHCRWAw4Z1BB35us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbr6Ik4i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbr6Ik4i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5100C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742080793;
	bh=ZK1tG/XQ20foSWoDa7QqSqA1ikYjUptTAvPgpQu3Q98=;
	h=To:Subject:From:Date:From;
	b=jbr6Ik4iN4VODcZdCUaLK7Wye0oUHkQBL5S3NuQ9tfswk78LiSbm6aAsidDI47AFx
	 vbzMHPxKi6v8T50DXTnZenVIXGY/8SrfAxo6O8j1UoRBMTIPfvs4XCq02t09RdY4Qg
	 /Brd1+3gOZC5Q929aa23qLQXKSkv+h4fy4yi8DKic0CdCACyuMHuktlMfNJH4Lhqhq
	 sJyG6AaV/Iv9beLko+bIDQb14xioOn9AvFELmARShr9gcAn2wuRkAhRbanX4KsFr8D
	 CXgbGxjoFirdXaVS2QSOAQ5wGdImuWS4YbZTnTTJzS0GSHSUrXyPQo+y+D+SBBuxhs
	 csFtKdeyu8ryg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C146C35FF1
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174208079361.21139.8630306314811814666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3048b48a73b9f2f7a71243c4e9ee9fc5c1a246c28ee945d3084a591e1813e83
Date: Sat, 15 Mar 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742080793
