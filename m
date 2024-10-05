Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AB12B9AA
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728129354; cv=none; b=VNpsSs7KPqT8afLvK3KfjC4dlLRuKL9RGYhQuOl9bkbxmhTraVoJDgOjwMGePqYXidTvFzcD9WZTsNx7pHd8YEIVMIWaI1MZ+8cvUoXigIppCmurzr1taoNUJpVg6OJ5Xp4x3/pX1XFN3uXCne9yvxOyW/pu3GFo6NvCnCr2N4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728129354; c=relaxed/simple;
	bh=jhp6sdeL4o54xQ9US8mcCv0iLau8+gIoVS9pxq+ucQw=;
	h=To:Subject:From:Message-Id:Date; b=h+Hure0f1eX667pwawFeM9Ot4RUSdPTF/5RdHg0CdsDyenNnMhEzjXc2pd6FLnoYGaUY1E8geP+Lxid8v38z0ffBl7B/pIRREM8TLflXfQcWKUD/yQjpJ0x/NGwpxW1ZXxsVZXxiF7+2r9oOLWOxPrZSIjasHkzi/Btovr4hkBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hSQLYVVe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hSQLYVVe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF0BCC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728129353;
	bh=jhp6sdeL4o54xQ9US8mcCv0iLau8+gIoVS9pxq+ucQw=;
	h=To:Subject:From:Date:From;
	b=hSQLYVVeOCc/NC3amrQa9ZzUa9AkMszJXpQZmfZEAHfLqTaBJbd3TNNcUPjuhgO7s
	 Sqsx4/mtjKx5Oc/YiMpZv8XPpZ+uCT078Zhef+r+pRHnAJ9YXI6dvyA1wUqfc81wDO
	 kJc8H+aDHaYJ36cDre36MciTfxu8rWWGsy6IL8gASf07OxxyHXVl4SxL8H6C1YD8Nk
	 pWCfHtPaHG8BEgNaIKnCqMY5fwIQMcRJ/IXciXuXD602ptYGob+kRdSMt2ex/gBygE
	 vxMh4ZRKhwnslSpmJU3TJz7pqHkutXdr1ZhLpvNtKq9yVtcEGB6F5yiyqWyUiA8qP9
	 VWKKmRD28Tc/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F638CF886F
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172812935362.1624.11220219439698235037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ff1a113d40075dc7d6cac2d9dabe6feed15034f618667d7bba527e5080c4ede
Date: Sat, 05 Oct 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728129353
