Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A061BD9DB
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 11:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739963934; cv=none; b=i3ObLcVLZp1QJLP7WgrtNOdkSnNkhfLr1+wbyMw+BMAHeBTVMGTUePx0ESQGSLLYyEAbBF3GFAP4659BmU30xTRhnmFW04LkgpxGjtf66FglcjrJiObaHhdR+m3x+xedKNiLyRCB97csYq1u7t5n9BNLko7KxVysa+fpuDGZodA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739963934; c=relaxed/simple;
	bh=6hD7/zwlJa6jONaDEjdk33z5VKwp+PliVx51PUNDZlE=;
	h=To:Subject:From:Message-Id:Date; b=Hmx8SOTfqzEWeGkq/4iXQLlGrNdCxbC7GLnU6IpDnOHDz5XKCnnRVTbwMF8NVTdX7nIW8eHtViULh6ntQY9HsCJCrJ/JS8gCOcNKllzreNAUBs4DXT9jfwiIYj07K5aIjpPOK1fgWqcwClO3KKI/zenW3+Ljkgj5Xaoj4+wLEDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DL8b9Zll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DL8b9Zll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2505C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 11:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739963933;
	bh=6hD7/zwlJa6jONaDEjdk33z5VKwp+PliVx51PUNDZlE=;
	h=To:Subject:From:Date:From;
	b=DL8b9ZllsEnaTUkW628hm+Zy1FlcG7bHAOPJ0KVPxfeMkGhOi7FW/+SoxlFUtPkSl
	 y2wG0SuadAReNMWjIsbqpuu0cm+h2czWuPXlXV7tVOdrDLHbiK1M7DmG3K67yzEUT1
	 m+9hrEeudwH8CD254PKDfO0v1F5pXEc9YU+DE/OtweWj2HB0GLH5q/pkCr0fCAJyFH
	 wuo40Ikbm9LyUICo5j3Y7EzZSbxazOCCaMl+O2bx1T16mrNzbyFfNftScnEBXDRvkX
	 EP9fu8SkhCkVSO7zP/6zY8OM2AOpcASvEmbb6h6+RvgNiNpGHZeYfq+/gCBu2Vqqoz
	 o1Ev3qJOUPDjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91999C021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 11:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173996393358.21246.7531406307280212557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4f64f867e3c6021f9e94ab7301c6869eccb74f3f083e8dfb357337a5bccc246
Date: Wed, 19 Feb 2025 11:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739963933
