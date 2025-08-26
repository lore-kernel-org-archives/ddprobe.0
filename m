Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C7826FA5B
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756178394; cv=none; b=OwHQybtu/nF5Y0miptcXo0iAaVDsrnlFTUN2cIGmtk+f9bZuc49bpjQB2XfZ6Y5+T93XamzaDCu3HTwZ5toz++8/Rcft2NOpHCELpbdhhN4k2AfG6rooLwcG2dvkQpNJrHvW+C5yJekYE4EMmRcBuPuepWRHLp0CqopNsl+AIho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756178394; c=relaxed/simple;
	bh=EPvqSMHuepLDNxKnKfAUbHdVfymY84/RDw0UVrOucVg=;
	h=To:Subject:From:Message-Id:Date; b=N1G8eW7Gv/mLBgR6b2PWYBQY5FcNSD0XUKN5gXmWxpA4hVdo6kSJ1rQLjEBvXqnP3s/89+iXGrEvYiodyo59QhexbYLenIIP6JrTbhKDCKzBb4pMoyx160BVFTqZpj4ulwK+TeifQsieZj42gzl9BJd5gdTZ/WFwrYeEzI8Pxqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SfgKvS56; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SfgKvS56"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15E4C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756178393;
	bh=EPvqSMHuepLDNxKnKfAUbHdVfymY84/RDw0UVrOucVg=;
	h=To:Subject:From:Date:From;
	b=SfgKvS56ot7hqC0f1Cm5NIiwtM1RRrApM34F2ZqYlEFFYcY4q2CIaMzEbIUZ46dFr
	 BeiHRux3wJKhO3GFwcMOB3m2edpZE6gNSsCLdmKo8XTXGIx67rQuYoQISP2qYCUDdK
	 ESw9gWHaXH+wzlbHrsPzfOupGkJZ1BKAUv0x5y7KnS+7C+y1/NNHg6IDOUPYKlBTmB
	 sRdg9PnIlxXReJTaRvvpe8ZR46dIeLNvGrzGfRzyYS0OFnv7CKccC4IMJtGYQwK/4f
	 8jHI2xHPeSqs5AiwsF219GYnGmot0QU9Fw6nTA9sX/yVWxwhmYozwOMaYqI2ZuvF0g
	 LQm8hAMi3Wb9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F61ECA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175617839357.10993.15487618467826804403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1230455ba3ca15702a56c07d4c54d286f07f3014c4258a1af7e2651bf03ffaa9
Date: Tue, 26 Aug 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756178393
