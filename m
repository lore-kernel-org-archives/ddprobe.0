Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4673556464
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 10:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713437363; cv=none; b=HFbiuahg6cBjf1d5IL6bwDM7ln9ltBeykHVbFqJ2NtXALwFStAIxU7v/Hewf97Mm5y8kb2gphsMhGR2ycOa7Ly/M25pKA3STsfqvXnd8PLezlwYvaO6EzYaLKcqyuwO33sOKOfP7bSA603afCXuT5w/uq6RQDTdgPWOy6Q/OdF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713437363; c=relaxed/simple;
	bh=AgB+bappT7JHgMaK6Ei+LZ9KAz00Nhv8ABDTYfzg/CI=;
	h=To:Subject:From:Message-Id:Date; b=AL6OdA4h+dd1TwVhC8jlwTv/VVqT8dPYVz8UraPUiWnLaxIlGbCtoRWHqtOZ/58C7XBJ4tH8pCCzauWJQKHdCz7aareR8W8bGpT+73KRO7F5f3WL8WhWpAYvi3WM8SDWGXFDjiHWbAY8d5RUbJ7Nu3dkTQw9YP+9OUns5Ra5pDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+kFgs2a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+kFgs2a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDB1C113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 10:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713437362;
	bh=AgB+bappT7JHgMaK6Ei+LZ9KAz00Nhv8ABDTYfzg/CI=;
	h=To:Subject:From:Date:From;
	b=i+kFgs2a0WbOQuUIxtjU3N7QTTsGzqH28Wz4GxVQF11AWuJbZ66bYkrUeQmMEuXpR
	 bD4MpRnq5chqos1L7KjmeB4igWRDIpUzqo3VZlR4ejfY4wazVD7xZd9oDVNfbvFCwP
	 3lB3hU4e1bLPaD4p/FuOj86loq5OkefxkgiO5Hz271sh/XBKQtBW2lG7PgFzNHCJ5y
	 2aEjEv94CcC7fygSB5mLYRL1sChd4gDINCXebHtvjDKxidzRs6VsWWYck4RxtTv0dk
	 aRIcUu5st487tV0afwWg1J0YqnLnuxZGU7wqhRYfNlRvoCQryD76uJuMqAhAb/9oJP
	 tXFwh2K0UTb/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA8EAC4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 10:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171343736275.18671.8148547948242937944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4019d5a842cc2809383f8339a53e9408cb3d9c8862647facea71efeed09ce782
Date: Thu, 18 Apr 2024 10:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713437362
