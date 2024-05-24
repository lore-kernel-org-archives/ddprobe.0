Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 834138F5A
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 07:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716534803; cv=none; b=t98HKMZsE56wV59wumHcvJoyIo0uLaFxUgSRBUJ8HnHj/qmX7smQG7/M33noopHJvP6UzRVbUPwlMuVGPBWJWyEV4ug5Jso4B1qiJ/TrlLp1Z6cLFZGJ01Kih7r1zDizTr3CFxCXKAw5kwk4apYuWH3HAi3Ye0gspfrhf4IAX/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716534803; c=relaxed/simple;
	bh=9YHhHOxFJ4cZvTf0w0oR42nLOUmwCHUbmPU9andgNa0=;
	h=To:Subject:From:Message-Id:Date; b=TNSyx4sLYItMsXmDX85Sh9vGpuGh+URXicJ072bNhE1DghJwk2gca3aYMUhh50QuahcCq3MOVpV7VsEpxGOUYF8R/Mb+mMvCWz5ySWlG7U6d7Yq0ej06XvPmTFU4LqIWFp4i+RJz2K/+rX7TQsXuomckQroYRUbRkvLiuNVVQio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujiXvp7H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujiXvp7H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA20DC2BD11
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 07:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716534802;
	bh=9YHhHOxFJ4cZvTf0w0oR42nLOUmwCHUbmPU9andgNa0=;
	h=To:Subject:From:Date:From;
	b=ujiXvp7HtTmnCyJYwWasX3m8+oBjnCuthz+lV4i85vUoEdmlJJLBS8sqZJZT4Y8uf
	 c+6mNmfuoU0XNuiMJves8Eh/OFNO3HseVBg3vGkSrqT4bLUlhuNoIYTTEqsVCdkf3E
	 UIMzhchSHybrAeVLgKQodtFQ1m/8I3/kZbhutpeI01tw0iej5dtAZ2yLJUsDJr2fA7
	 RqBzlYzJnlwL8r3iKBNo5NWCb0aoyS9xHhczyhKG2RsvFJDK+9kwb4gvisfppmhOQL
	 9nCIM98lEcB3oBCCwX+fyYjRdyFAiOO/tIpSf041yufLTIi3sN/VHG/SZBY8kciniI
	 TSHHBJGGrzPFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5733C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 07:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171653480278.22590.11177289249851434233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5daac1ac1a88e5211147a68e7b4ce4e5446cadf1f4684086f8d3277593da971
Date: Fri, 24 May 2024 07:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716534802
