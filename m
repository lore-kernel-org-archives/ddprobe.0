Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283C218BBB9
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754211594; cv=none; b=fLN48gIKWbUxT1eAhbfSd1c94U/BFhvoeqsX5EdHbecPxqTfsDG+/rLCBqHMYtJ+eixKHozITxkWGmu4HqA9edrZ+ZWj0TCJKFtyut/cevooKN3UpD47x0bcBMmjvMNIMT+QU3EmyVY9fpZ5EjYvQ5YV8/gt2U6ovu/JvOfFN5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754211594; c=relaxed/simple;
	bh=PRAW2HEBoc29PxmaEDCAYcA4jJwDTtyLXnchR/ZmZyU=;
	h=To:Subject:From:Message-Id:Date; b=gJdc0GxqTZd/cVjrjKYpW36/U/dYpfe1ECGsh8zBOEysseQU0CjNVnhi06s7+Y2aIX1kkvDUNcJNIWR56ClshlnTRnpDgzvuY3rgCq+vp9cNSDCGPl6soBjy2MEhTM/M69I7O4SvitJAwM9ORUymzDDvEZRgQLzP3fpBa+ioYRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQNOPNNU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQNOPNNU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5103C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754211593;
	bh=PRAW2HEBoc29PxmaEDCAYcA4jJwDTtyLXnchR/ZmZyU=;
	h=To:Subject:From:Date:From;
	b=jQNOPNNUUnUIkuVoiU2MoidcVa0X/4P9UWX+oOrL9QMXJ7Q25nGeD7T0KhFRNm1A5
	 ScvDF2MFsYNdiNfirlqFN5miHe8iI+EuSMjzqk1vGyXLMQJPZ2q4/Tfz39NhA5SyCQ
	 K2x86LFwbsWy6dr5AZXThBrKYyubXie8N1LUfPH9VwUFBtsr3ESkBocJ1gCk/sQfZ3
	 qn8MiFYVI5yAjSXO0oIcrRYThioDhS04j4ZAap0hF4iTU4ihVV41n0xiTJucUcbNnD
	 Wsufx36AYCgK/pIaWJDlnx2dkEFZm0CpPuZPzWrsgjXVi/u/7ip++YOxS6UlcxJqhP
	 yMYP1THlqY1Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91055C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175421159357.24828.1294847223830152418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d612fd665d92e9ff5a7ca5cf0a606ee2dc81898b1df7aa13e2f2586c938a6cc6
Date: Sun, 03 Aug 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754211593
