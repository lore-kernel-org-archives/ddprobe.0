Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4731118E
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 22:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714344143; cv=none; b=lDDUyI+NQbgoAIjSRlyI2rv4GE+r0ptEx+w2GB5RB8YhaAZ8EbDPWqFriBzsJiTM5WEsjMj9JKcrqQWqqlx1ju2mCdd9w9LzpOwDyeA9Knf7Gj1xujVdY6ZAXzqZnnmr9ZPUwAIdCBa72aihtV0whEt/tQIcw2aeX6qT0c8OTKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714344143; c=relaxed/simple;
	bh=QTo/cb9AF64UQdwJnMFPSHqzJ26jTdtJy1+/fLpFUd0=;
	h=To:Subject:From:Message-Id:Date; b=h8gxJKMoQbA0KH1yI6VGjwgrLVj3Hsx+w+4h71Wsg9uhX013dvp2GxrkO1Qq1g7tWz5h5+PsDZCH7Y7rcv9LXljjpeLDofaPq6sBH5XE5ECKM+D5eCBc8NxAmY7fE9E6g622lyK3G2XDjioTFqwrBU25MBFG9GsxuHUUxToM+40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=izJ08jhf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="izJ08jhf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A71C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 22:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714344142;
	bh=QTo/cb9AF64UQdwJnMFPSHqzJ26jTdtJy1+/fLpFUd0=;
	h=To:Subject:From:Date:From;
	b=izJ08jhfD8epFQs9BoMhMbpkEHy8NB3lKZs2p1B0lKExnWP23oaV37ttDOfx9bTob
	 7M2ghPNiYeXII/Z9fZzbZlHfCHXupUcB2KhwoBc8r3tc5K1wD8YBLb2RBn4N6YCY18
	 I0ingAaary6ePhmfffSxpXq/1NB4hM7D8BHMt1SCyyNW3eJfAS02bgresW1Cl+v06X
	 uiCq1R1oHmb3yb4u93PC7YGyDi2Fp0Zr3o+fViwm0cRIKcsO86TibzzdoiSn2L9VTJ
	 xmHlV7swy2xUs6GnpWbYFIPtE2gfpdNakXjlH35IJO/qB4JqEFWIt1TJLwqAozkRiw
	 WIFM1Ao71D7kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED98C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 22:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171434414276.27373.12805919289664378207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 677f2ab3509342921840052dffec2bab40880d586d074953c99f250059a2bd31
Date: Sun, 28 Apr 2024 22:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714344142
