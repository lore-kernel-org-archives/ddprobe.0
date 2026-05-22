Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0C92D94AF
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 07:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779435754; cv=none; b=ACGTXERt1/yYda5n3qtDzOfIoWEC9HedPHdCIQd8rrcm47/mVTnH7sjrY9/XnkPzrk2lwM6gCgfZ3FSysZw1DDrm8Wyp9DThMKwFxHbeyv/82AII0h5qmYK2wLMZ/YN3m+k1rlxzMPn+diJV+hUuPQvHYNmZAmD3dF1Q9vXk220=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779435754; c=relaxed/simple;
	bh=Km5DevLHm6qUv7W8BvOUNLGgc4cgIZHURv2w5fyHRWU=;
	h=To:Subject:From:Message-Id:Date; b=RGyn7Sv0SFRXRt5nRtqe2OeX01Q7N5KagIG5OIdU5G/jhjR5ddxcpU54HHNgyna0DFJA3y9DCiJf6kZFHZASLp1W6/9aA8In1Rq2YxPSnqDywRAAYnqHbhPPmHAseszVzFWGwR7z1W3kKADWjNGwY9yMreRQZd2MBzbAF3r2RfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AxjEd8Uq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AxjEd8Uq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9998C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 07:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779435753;
	bh=Km5DevLHm6qUv7W8BvOUNLGgc4cgIZHURv2w5fyHRWU=;
	h=To:Subject:From:Date:From;
	b=AxjEd8Uq2+kY5/ChtGuJ+5AeUPtw1jjiT/73bTZLY7Sl4tAAm2BF2PwgFtWXqUenq
	 SIVjpX+zWaOc6HKzUWMh11MwyafF04ItMSlEYuMq/OIO0GOLgHNZP99x0bFVd7u/kq
	 C6NruQV7hqQQVzWWSeea2FOZHOe3CJxOjdjoVU2T427ck7GgDx1ZWz5b6mR5zLAYYE
	 +GDGE87530TDFZCcKaPqzchz5+L60M21vfZnQethw0tgZuuui3ThJBFKQUKC2bl5tZ
	 oTSMAgJvETGlUSTlTH/y291gBPNRFmfJARdEFg9Ueg02jbpnsBg26Bq7Cn2+a5lz3a
	 j+PNT+fgIJp8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1B9CD4F3D
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 07:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177943575370.25935.15764757806348457798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e512a710fbb72cf53f100daeb3c0e22045b1d9d432f757bed630059c70f4afc
Date: Fri, 22 May 2026 07:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779435753
