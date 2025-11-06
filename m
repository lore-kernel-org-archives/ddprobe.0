Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123DD32A3FB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762432194; cv=none; b=UoBTLeGY/JSgLOdZdQGILa1QJnZkqyH6s3tYIyWU/ogjfAZzEmA5eWWsXHApBg2CJKyFkt611OSVn08pMA9b3HjbVMZZud1hOAeb296cOJMj36dycRcnJuvQceh32uT8HdQEb/KuXbItJQdOf5H94UivHIYJ7dGJQVMn5Kx0kyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762432194; c=relaxed/simple;
	bh=8UunLiEpQBFkASjAT1Anwzlm8ZFjv1m+bMpWNtZ7GpM=;
	h=To:Subject:From:Message-Id:Date; b=XlIMOwXjfCxu7gYjNHKX60dL+Q5mvZ3kq8LVXkXyhLmP3kgY8zo+msNEU7xHOdGjTOFETTJfVtRLYa/RYmTjhIiJj6LgNmrUmYO7vaN5M/LHOs84R6GnbQAJCMZgRV5RVUVjs3QD1T4fiMDmO8x9y4JRF8Y7ouFJKruv1W9Jfeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePcJhwpC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePcJhwpC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFBCC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762432193;
	bh=8UunLiEpQBFkASjAT1Anwzlm8ZFjv1m+bMpWNtZ7GpM=;
	h=To:Subject:From:Date:From;
	b=ePcJhwpCqQ7sgA634FQs9wQU2HzWN/b/O/3+hG9xV4h4bN1cuNmIpiJLmyuZV9R74
	 uS4AZ2IxJPqfb/EGQulPSUPwnbhV9sq/Fka11sRDdoSBHcD5QHKsH8s1fKL51MhNVN
	 Fpnn/lO9CFR/ZeQkey+Kwg7fTV5oFOg6apadtLS0+LrpjEMtIhov+JHAGZVVdniKQn
	 NPUmpdmPhV/4S/vkOI/idKaoppAKEKoz5L2Pcf0HPUu5DRyUv5QR+zQGWIfLsm6txc
	 bb00kjOrDqf+IQuejSMh+jjdDO6rz0OEImJUKysPOXak8owAdRST++tjZdOLyNuojw
	 SycxLQR6nZXUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CFBCCCFA03
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176243219363.19421.9918598444373543984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f19b7ce49e204fe6fedd6fce0093c264b278d392faf03e54faba87dc88e2ab5
Date: Thu, 06 Nov 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762432193
