Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E2E31AA81
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770069834; cv=none; b=HMbEdGIEfd8ONHyI6baR251MpSny7Hy7mPWqTNT1Vr166Bd5sZ1JSJ75TX7mFy/nbUkn0GcCTlZqb3jhrzuCWdacA5cvd2HDDBDyoK6Az4ukBCmpKg/OidpVAB8gu3LqLDhd7+xn/n6d6oUyV+gebxBJdvP3RwUBjgtGBEu5yTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770069834; c=relaxed/simple;
	bh=odz4GHORIa29OniTRK6QExY5aC1m1n5nrJV/tUEznWc=;
	h=To:Subject:From:Message-Id:Date; b=DkktpM75jpKDd5n1WAVEHoZbY2RZeF/83NG+83cBPpoFpaBcITEu5o6WcxzFPES9eRHWXdevBMznQBI1Xq+rwjpxkMbZ8jDa02K2nUbTuG5UQM6soUuHQnxXMmq76/8CdcAyk5TLvWk3wH4G3fMYb9QdnjD1MxOGAgeJgfY4YdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Smjey5cn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Smjey5cn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E52C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770069833;
	bh=odz4GHORIa29OniTRK6QExY5aC1m1n5nrJV/tUEznWc=;
	h=To:Subject:From:Date:From;
	b=Smjey5cnBRtWbDCxwuAe0749+y7c6RkUrMg/lXj6lWX5ezBGfo064P7nOKgFNG2DE
	 BDgC97lXdNA8F0lrgE+pLxek5I8dhQJutwXyGQBF9mQ++igb+kRP466aypQ9OufGn2
	 YGbYASzXl78+trhAJq4/ultOJBwtGjew9yE/g89F8UY8olacXB9xglQOtkOnITXt/z
	 Zmtp393CVguCHB1ANdWY7LgeDFcvBABUAl3G1geZLtBIimCj3hL/O1lFyUR58W56Ll
	 5Huq3L93/e+G/uRP6feB/rmvYmfMmvzQk59zyIbjnOa2XnonJFabR8NJ5hIFpU3WGc
	 Fn41FUYm7kCJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE6AE7FDF0
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177006983362.26340.16262521430945942036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02e13308c8f07c3d9a40cd432ecf207e9e4b7b1045f69bdf5c902701cbbd7d6f
Date: Mon, 02 Feb 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770069833
