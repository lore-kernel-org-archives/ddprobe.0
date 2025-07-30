Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AF1154426
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753849795; cv=none; b=k2d0veVD1mBqt7tAo+NmQYqbbwhIKskV9WqXdItFIwn2r+4qgr2w2IyMQ07Bda03kYpZ5i/vNLBKHkLWXiQVoDIcfdAw8rDbgU1oBrLhFURiIVEsQ0suX0LTIWAmqgGnmVRHGoToZYSl68urGkV4fmrF1ARNw5rfX0/uwDkQLDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753849795; c=relaxed/simple;
	bh=iLuJ1B1s1t2BqqWVDGQQbR48PRa54Y10WF8haS2B8Ns=;
	h=To:Subject:From:Message-Id:Date; b=qyrRxtickoQkH2m+Uyxz7b3Dsa/tlMg+cDayTKPEchx8AIQiUiWfXP2RB2CWtmbDyM7rnN9LkNB+y8MOc/sTZAHqRuU7Ce3U5d6Sn5y1NkycxNfqMD8bXYgxsyIHcaIr1F3eeRDqYHjpv+sFYCoqZ6tUorIgmppQP3nIOKWl/ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jemfrzxI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jemfrzxI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1622C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753849793;
	bh=iLuJ1B1s1t2BqqWVDGQQbR48PRa54Y10WF8haS2B8Ns=;
	h=To:Subject:From:Date:From;
	b=jemfrzxIlDP8CPOZeJIUBe4gifC3qXdLaMgSVJTZtkA5CZJLMYEzSRb/h+ir6EJ4I
	 pkcbj8t74RhoDqBKGmUZv5KYbNqOOOaxUEj3XtpiLBmeJ4eN7KZzX47hVXWZW2SgL/
	 5nGOUV6Ukm/BYrUZ1wgl8Bbjlb8ESKNzw3a5zNLVu5OFxeKncyfG0YkJV6k366bMFo
	 9TFcpTNTPZN6yo8VUcM7U8UNLlzZApzG9JpAPIh/p1h43FiPK4/at3NrJOn0LYMk31
	 SX9Sb2cAyRcwI9ybwyEXu+1sGEUFmRSwUHAZf6bcTGLli50g+lwla7n/fwbMbreFXj
	 zd8yEvzrVs9fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C29C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175384979358.32488.2664615214987447061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 632ee1e8abdff36eb38e4ed17e6ee8334c05b4b454421c0acc0255281be7280b
Date: Wed, 30 Jul 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753849793
