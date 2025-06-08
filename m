Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226B120E6
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749341995; cv=none; b=DGtB4fO6wU1LBn5vWcYv2rBXjDkgR1EYQOZOa0Lj/t+mV09+QvaNZDr9ZlJn5Vtv5GTwyfAd4TS+M54o4DeEYzVCJ9pAazExwAqmLDYc3bwmGYS/b2qM/17Q+K7z19TT8xWlWcMga2yZPD9t8tZ0Fy/urRp88xw2NDzg+Mrx/0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749341995; c=relaxed/simple;
	bh=UkY4wX1cZ5PTTZCWAxwcQ4sCaiXYK29jRyt9XxXHiE4=;
	h=To:Subject:From:Message-Id:Date; b=INUw6QpMfgeQ5N7mEghPVQJCJ7QJFouyhltCq1YYEZmK2akYNFmi0tnkVakpkev/L1fiP5SbuVYOFnc6jvu1h/aFyqW77nwESAEAghF5b7TjvAMAKq0m/WIIjy9Yntkn/Q0YA9Q+pZWm3AL3ztFdUvjtfPBVt/2lN3NThqFBBuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=otIK+v5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otIK+v5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6590C4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749341993;
	bh=UkY4wX1cZ5PTTZCWAxwcQ4sCaiXYK29jRyt9XxXHiE4=;
	h=To:Subject:From:Date:From;
	b=otIK+v5vgE78ZifCgPJfIkg3uB231GkwyqQi0DyK0zLEFr9BAqtusPQoccaGNe9G/
	 QTJE1gtM4QDvXxcuSbVGSkmQWE4+aFOnZzdav6iHK+s5wr82MVbO9Er4IGF6n5/SBc
	 dYciQKVP8EDngL5OLpqout+HD2CPwBcxfxheRYzHnp6pA917vM1CbCQNufIOmzQEWn
	 mhufT8BiaWGxHFi4AJAwoxKOXQ1yfb33IcD0Y8mLUn8fDLUKxzveA+MzDsugGB3b8i
	 80TqO5mVjS6Xd7aMgEy2mj3YawwemQtL6HitCjZGEJ32I47LFApZ8uO7FdeiM8FPUG
	 ZSbh0CN/9iwzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9431CC5B543
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174934199357.30701.2695532585798190806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 902580c783bd77b06fa4038b80d7e1aefe8e1cb1a44002edb76985d5ed221866
Date: Sun, 08 Jun 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749341993
