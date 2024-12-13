Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FE653804
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734063354; cv=none; b=sL5oXQIkLrwTB3AzMwQB0wRfF5eIj3hTHFKDrzwD3k8N6ZWw3nzZuB0V8aUUPvVClQT9TDapIeCShLEO5PS+uQc0sbfdU8TsC9OXbOdqEaTYojRfCsxXP3AehleKXzBd/Oepm6KBo628mlPOaK7fGPplOFLzL8tElF2iwbnnwrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734063354; c=relaxed/simple;
	bh=4qUVpg2UpOGZSjigFbRxZQVI6tW3vvpwZXB8QLVsHhc=;
	h=To:Subject:From:Message-Id:Date; b=kZZmywyZZe22Yp25aRuDRzIBFvEHDDitCWr4vH5ikGxK5Xgx06SkPxAmvfP0tNlK1GFaw5y9FgWPkRxkq+HWaqZv5AwHmZmRr5O3eCCacGy8KHdyrCttIG8LQmzQK3O/XxvfMsd5yd1w28WjyP2/BrsmjpxcunYLMC4G1lEqhhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B5FgtARL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B5FgtARL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE602C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734063353;
	bh=4qUVpg2UpOGZSjigFbRxZQVI6tW3vvpwZXB8QLVsHhc=;
	h=To:Subject:From:Date:From;
	b=B5FgtARLLKbWBCV0/SpPXf2DGGDTKQXIWuBAqEpe93jT2grU7P1k68nQkOQ4au6D7
	 SwAOzRIvyF064bS+6LrhVD64VN7oTxaKsXE/5AspdWxSe/D0ZwQKKvdWngxDz6UmJm
	 3xfYGPeZjbnlF9hNQs+TsjhUYmHbBd5NQS4AKqeh8iC9KWBik5xSM45bgKhRTxaeIJ
	 msYHTDtviy6RiOhZJHg7dbHn1Owgc3WXIeAkxhQmbhlr9eztOXUFIsXVlAA7DxsqSG
	 +fZBlYvmpiT5dGkXpSzj8xrWw/x/TEoUtG8TenPpnHfBo16RYOY4gLrOmxGClKABtE
	 fOl1LCEJTUssg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B88E7717D
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173406335360.11491.10553025207374946315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7c1d0ac7aa2756e5c1c047b5203423b7702900d63e22ce265da05153e19ff49
Date: Fri, 13 Dec 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734063353
