Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283178488
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726797354; cv=none; b=PBaeUxBdG5ly8vTWXUo5KGyyyEWwBXwCvaxDOl3d7XsR+E/YrdfBz27IKxBPHcyQs2eCsWu2hS7JOUeU5DkV6FEJYP/BJhQv6ZVeC2uU28+zHKr2c9WCC0y+bt7gGoit7CH/65D6IhhOtHU95A7GBBcw1nzilcwivJpBKywr6mU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726797354; c=relaxed/simple;
	bh=WcgSo5zJ31ypOqmfDsiQ930qyndE0FgWVA+AJ2OnODw=;
	h=To:Subject:From:Message-Id:Date; b=iwahwT+aFaGl3zY80A8LHQLR7HML3b/kBSs86+z+bEbCFo/DUQ3GN6TUp+FPc0DmwRqAnjDAGRCdPaGpTsY6i3f97nuBVoHtjX+zjHD7a+TbmdGBs6yN98nf50dBG7KWhZEVU/L8PwWkTU9crGxdV0+ims/0F95VaId3ref2/Pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUxyZQro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUxyZQro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3646C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726797353;
	bh=WcgSo5zJ31ypOqmfDsiQ930qyndE0FgWVA+AJ2OnODw=;
	h=To:Subject:From:Date:From;
	b=HUxyZQro3y+0iKSnlmXh38yh49IE6k0r6plXv6wfdbjGcQUF6/TtnUMTht97WeTS7
	 qCvF66ohh+6kw2oLfPtrFdHn+1fW/G+f3ZoMDrPuvo8jxGW0j9eoaF9Z/brXciw4yk
	 pFDOOrph4MFNAFHrzzxnC+wVvJICF5L3SdBBOKnDAv+b8F8idAk3NHsU12dbhMOoFT
	 Y/rpEhXu44JTwe6WZRY1JOTFGvBxH5+2MSye+Sl1XcD6uekSNepFyKSaSbav+kSLgb
	 evp6sDu0DZJfVTjyUPTT0kWNH4zJECZTt/y7tPezMVz6hdmPqh9X+xzLx1FLxiD3+w
	 HK1KEvrFBtesw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB5FCF397F
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172679735362.21273.3891065948682729390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6046224979e7bd5935226418a66d73cd7c98b0b317204660062c23a14e9e6527
Date: Fri, 20 Sep 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726797353
