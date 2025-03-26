Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3833A1A5BA2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743008394; cv=none; b=KIjtwo+WMKNoyJwNfJ4SBK6izyUQhDiuHDRq1IXDmei4VETwg8jzLYnRApbv8Xfjj+5sWukOSxXL6KKbcLGS8P8EmuMdJdjUgVM8bg3guPwCCVq9TD0NgIbotOLGor9RgKW/RfihW0ACGJZ6SvrN/+qg79CmycyaN/7lxT/pt7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743008394; c=relaxed/simple;
	bh=ER7VI4gqlQToOyMYcZ8KvUaSaKd6dDKVpCF8ifGC/hM=;
	h=To:Subject:From:Message-Id:Date; b=B10X4ZEAEDTqG51GfvizUVy9aDwwa/XZNLLQha4tgtdcbRGr4kSX9iqo0C1Uhp1peu3+oVFRwYThneEKIEyTmrWwCSvcDSQNDuQQAopFJXlEnN8lP3GjJAoGrSZ/F1gwhkPnv50L71h/OoYxgzWtHiW2PFbVku23uvfVhsVbf5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2/jN8Yl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2/jN8Yl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE22EC4CEE8
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743008393;
	bh=ER7VI4gqlQToOyMYcZ8KvUaSaKd6dDKVpCF8ifGC/hM=;
	h=To:Subject:From:Date:From;
	b=r2/jN8Yl0lVcbb41PtceELUaMe7/7YW0o4XZ8Sc/2R2tKKCz2mRPkMRsR0m9DR/pY
	 Mzb6Ku88G2hXNfy9DCwlRJKzMLLKyfBWauGjdlZsxXMJ8Hf3USndZyiQw6Le2hF4UJ
	 12zNZffuYrYGV5NGxxJSS5CrRTCS8tHNDj1MXj4avPfSrPrXW8/RdzJIeqvW65zFWR
	 iWSGMGU8OwjwGopUe+12mBZVDcf2OTTFYNje8v2d+qrcz7NxLgWs2uxWqWDFThXr8B
	 hetciSRBU0sjmmr3paaGwi1WkzvUuVUrwf9fd6E/ad6JKUeAOJvtY1W7W0gMwW4KLS
	 yScB+gx2cXL+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C5DC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174300839359.17550.4130964873258759145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 968f4f19ec7b4c6284f4d07555382ca90e80f451efc54b6a21bad539c9cf08c7
Date: Wed, 26 Mar 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743008393
