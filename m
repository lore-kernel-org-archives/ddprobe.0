Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DE150246
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 08:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713774023; cv=none; b=jrqUCm9o/2kAaqG30fFZXRYA7Xkyr8VLwGG9OiC5u8noZQTgUTW25Fgv7RbluuxJPsGgp6r2kcLj0D3R08cDTjj3lx5Kxv77qTlr20zWlsAPbwhxy3P0g5qDWVe/vwuGtmRRpZcLL0WGt0e23Lclz5jmFjAcaKqlYE9X32SwYiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713774023; c=relaxed/simple;
	bh=Vbbxq1rsirK6XN0trU8ut1IW6Zm8kOUkKkBMWulgCpo=;
	h=To:Subject:From:Message-Id:Date; b=afBh04MFSfygu2PDePcXLjkmH2na0v0t2VBqQGoxLjv5/obcdpUr1HOCPynOoln8hGCLAYcMdPHzwhu6PnSKVf/yJ2ziSHICW7UrZ6QvJOllOLrxABfFn9snLchBjj4Cf/Fxc1E6WCkxzLwsoz7knkSqmf92WDXnN8bqAbhtK8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lT+Qvblh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lT+Qvblh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDA03C113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 08:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713774022;
	bh=Vbbxq1rsirK6XN0trU8ut1IW6Zm8kOUkKkBMWulgCpo=;
	h=To:Subject:From:Date:From;
	b=lT+QvblhsA/fG2ziI2jem3eA7V2paStgfS9Jw6vGr230RrfaFAKLjuatpKzoqJ7DN
	 kxEnqga5IjTlZMf5yrRoRCQs7NV0ahxmfRkfierK7SI7cTOYkZrDGcEnBXGDgZmCzt
	 keXnDNgdUYUDbOqUMDiSKjClATlQisMjgt3SaF2pEFzCofU0g/ZssbPoSvXJTPrGBH
	 fRI9qyC9mA7rWat/kah/jg4wJxRUT24Cwal21L7vy4zauJ/SMZFx9B9Hup973zf41L
	 YutKS7hAySRvUDjAeTMUOF0seK8E4JmmnQxbRFc0wX+UpBibNFQsClvnjz7ssbFT1W
	 khOshrPMJ9PAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5698C4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 08:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171377402279.30429.3854032613885518539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5ee0c284c0f892848fdce2a953de02356fa4d5c8f4126e69cecc86554a6cc4b
Date: Mon, 22 Apr 2024 08:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713774022
