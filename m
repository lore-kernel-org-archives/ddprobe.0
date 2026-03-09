Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01FB0364056
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773053694; cv=none; b=p6s5NXWrFKJXfDKRKM27VjwCWzv9RuKfbPSmEetqCOATVjmi0n8Y115JAyjHtneuQjqjAlirWitnEqCkn13B5EX1iQy9ck67nZoauOFy7km+bSeRBj+Bo977rSKTZ8JkxZfwLXtg6rLHt94vwnlKkckr1t3/dnWr3UInp6nZug0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773053694; c=relaxed/simple;
	bh=oVHz6rAyuKcbo/FA9Uz393xsVaZ7XMTHwzZ61E/iTKg=;
	h=To:Subject:From:Message-Id:Date; b=Uc/4OPDHRa+WVPcQKlSYWmHlgRFkDENE8/Z4OVNgLoYgyxLeUupg/imJZLMVw0xsVvM7L+KTxQ2br4KXTS2I3N5h7y7OVT30UrfGZ+nV3Z1hwVSRqmkDp/cQ0YvGErDTznUm1VyxW2dPQ9//uFh2Cwckj6MZMGWJVhPXdDvgb/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sP0vPhTi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sP0vPhTi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBE6C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773053693;
	bh=oVHz6rAyuKcbo/FA9Uz393xsVaZ7XMTHwzZ61E/iTKg=;
	h=To:Subject:From:Date:From;
	b=sP0vPhTig2UAWPB8Rp18mlJ08juEesz1zG3+/p+ne//ePC0mxOLYJTowdeLLwV4N2
	 36z9/NWG3T6tqVGSRkjmMKoXKI228Lkj8tIE9bqEvAKV/QKKPewIoYJ3mZg6f0UrIL
	 KvQt9Qz5USwywv8giW2ZMyq6upRpRicFWqRYrwFgi5MGwCXF+is/PWZyiCmlf8j9KM
	 8tMijj1wTLfm4FReqJgDAF/f0gzt1ynKnD4QntdcBLhx1q+jfflpJkkPufZ3gzCCkA
	 54T01GFtanlVkjo5cY0QhbPDIp8pqJVPurrDVsZ2EFb5uxDzkASnxIsilnJSmOiKWT
	 dFBOOArDwlV0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F52BEFCD9A
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177305369357.4994.2323587926627910805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caf1a738448d1cc640ba7bc4db9cba6db05f82c363c8ba1a39bd3b2d600dba56
Date: Mon, 09 Mar 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773053693
