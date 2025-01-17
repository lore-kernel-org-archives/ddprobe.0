Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CEB919E83E
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737143154; cv=none; b=KwzQCPCUR/DVpgPRnhb0jC6gog1MjUqphgSrKdlp0UMCl8G/odW98vm2JSFbuocZ+9slUxExHI2MnUq8khVuRw7BhjlWOwT2xQZt3E86fj9x7AdsdfuQi4aVgsBp7bEmwGcvmeaKb/9wniMgpOgsunYZ0ZPjEzxx5CELhdzrop8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737143154; c=relaxed/simple;
	bh=8LMGBhNfN+HDplSnoFIhFoTcAbaVJlqBkfr3lKFzxW8=;
	h=To:Subject:From:Message-Id:Date; b=qoA2FtngOyQ45r/KmzQQiDwP+DidmIBwgG/R8DxxRqCes3nYeKm8aLY130JhLUAaHKvL5ERT8POjwZx9rjZLuvP6nirofEAA72SzYhY6TJIplJ9ysrWl2huzJRi4LLISNh/MWfsM+tkDd5mcb8IaH+PR1CtFFDbjTzKwTaOcrxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJsTnoYW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJsTnoYW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD45DC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737143153;
	bh=8LMGBhNfN+HDplSnoFIhFoTcAbaVJlqBkfr3lKFzxW8=;
	h=To:Subject:From:Date:From;
	b=XJsTnoYWYBk24VWkBDWbRczEWAD0OLKP6PekZ0zzzVcf8RoHmjFvfepfGGQQBKtPK
	 M+NkEtJfbTVyhTKu/QOu2bQQiISbHR9KwIfWM6jOJXQE6s4C2Y4tF9rH/+f07BFOwV
	 OWNfvEzP8jSMvYqi1P1Gx/VU4lD5M9Lj41wqpwfzVMi7kDaPwky/V1O6x2m0pLWZ+n
	 lgjKRH/X/mPQgjaYhvxOMICVKGRtjS0xCPZxVeioeJiEfjrwYZxoj5lKZcI/aMBwe6
	 LsN6Y7UrTm3jZUFcMv9KQLsxci0mf7T6ki99qhyt2+xcK51YbP1pn6Lb2oaF1wNb7X
	 vpRSMfC9JlP/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9660AC02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173714315360.20601.6840101898491207201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d14c8133a1299780ed89343a140bef61ddcc43817e6aaec6e43587d1e09d836
Date: Fri, 17 Jan 2025 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737143153
