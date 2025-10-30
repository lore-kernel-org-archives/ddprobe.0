Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C95725B31C
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761848394; cv=none; b=NoE+vFZ3HE1oiiFPLC25nl61gUjJJlAL7nNlfsBj/OMZgQTY01tsxF7JR7p3M4oZPCTYbWiKYS8Oj0mfaCDNj+sS2aIW5XUURLO0WUbU0hahYnmTaBoWJY1u0J+1Kl05/ylitPAQi8bQyfyBS9xTv6fHq4KeSxyjaFPC4mbYwto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761848394; c=relaxed/simple;
	bh=aGFrJ6JK/aavV9bfH9tObgOxxUfZdngfbKaQr6w10xY=;
	h=To:Subject:From:Message-Id:Date; b=Hp5Pc2ZDKdCtDaLQbwmzvEhfjtnzjR/PP8ukGOM5lxjJ3J19HmXG+N16IwRYC9n2DRwpR0jXbdWjVVOCG2FrLEp37Z/lnJSGWLsDGcPNNb+wg/WkTkBw8i45k7T3gGdo98fkokI7/tOmVR9kXnyu3aVOMRWujGAoAqTXFuyR7SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bF1k919i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bF1k919i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED4EC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761848393;
	bh=aGFrJ6JK/aavV9bfH9tObgOxxUfZdngfbKaQr6w10xY=;
	h=To:Subject:From:Date:From;
	b=bF1k919iPPblYsi5t1LprhNGnO4RxhfgfomAQN/UXXSsZ6VNwZQcvi0PwhMKacLd6
	 /nGNsYBA8SainW5cynL1tpwRcMRtYJ/yukwxUGAyYQE6Ii7wXBGAzJb62CYhXkZtgB
	 nRsFbOQ0gxza5E3YPhqv2xEj/92aZpHZKAsi/M8hpvAvZaXuN+6GIxtrfhprrCAakq
	 9oVD3JY7jROq8KncjkpY4LFH/CXIj+HEJcfJgxLagDZp1cJ4FDHSDL58dibmawcSul
	 u+hLDWHsk3LNLZ4ylNUjqXbPr22dojRiTMP6WO0DlN40qG+1Em0LTleFf3YUqp1lPj
	 04PQGSGhsW3pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DADCCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176184839358.16498.7826035812019371854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4315fab7533de143b9998d4485ea73e6c8ee04140a865042ff9f732e58e0d84e
Date: Thu, 30 Oct 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761848393
