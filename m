Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D410202F65
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763095194; cv=none; b=jjnQpkXgaR/5zgC4TyKFvoehCMXncYGzQ7ohHvaXSXBT7QVV4lYWJnb6V4x4Si8LoBfXuJwog6p2ovFjK1tBUSBkR2RJ6bGTI9uDW3tpoHZh0WHnxmBmQCH1o5LJMl+4xsF9gufj4NrqEeLbV02rDQ61ThWK1j/nAvnZSnYGSLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763095194; c=relaxed/simple;
	bh=ZzLq3/6J/z+CTQeBrhWh0jGyXcXCBhQCoIXSUJUrxpw=;
	h=To:Subject:From:Message-Id:Date; b=QD1tNPXOvqAou7MwJSS88QlFgGNRGJ8A2BgIjd6lgE0v4o628BdLuhSabag2OO4MVQXSn5419PDj3bqQ6AFbra/m6AYUhwJz8qYRQ0dvtqo29fcLInkGxQrTZk23KNwo/3797HotlWLzoBXdKBZQRqVD7p4h22BVbg0O7tVcgEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4SXI2Lq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4SXI2Lq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5126C116B1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763095193;
	bh=ZzLq3/6J/z+CTQeBrhWh0jGyXcXCBhQCoIXSUJUrxpw=;
	h=To:Subject:From:Date:From;
	b=i4SXI2Lq7rdB/N9nrJAlokzA9jHQhAVUJSD8WukRfwOpitZZ/jh76Cbx2YMcWzLyn
	 lUw6YBYEBvcKxbzWSAxvrc0AbRM2Tt0U5fHcIr8ElFf390JmeC+q08OaR8tG+Py7Jv
	 pxbsiNOn8myUFnEwUmX67Oe+C2eoPEJQHtJFenVsdMblrY3WklXs/EJfCho4yY57Zn
	 FIz4LPC7qhA7lZJ4Iz2H7PCEkWWneSQhbImtuminevkKZiThoXWP7F47OEwc6kKp2R
	 1D889ym3xOGF6q5lC5BSN99LAD8vu3y9etX6kUoFwmvlA+TJILSaL24n9W5bvaziWV
	 px/s0HTkrN42g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9389CCD4F49
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176309519359.28114.9036435139058354712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2384d77774a3b6c11933d99167d21c5ea42221379fe777f952c95d91d2e94642
Date: Fri, 14 Nov 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763095193
