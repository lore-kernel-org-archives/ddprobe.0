Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78E0E3CF963
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 06:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781332594; cv=none; b=F4P0zT+jqfiX7r7alI24jIo7FIthH6HI1Ngd5ghMw+4F1URmtXQWZ+12HU5tbIDbk1e92fmVmt1EGdGJKUN5PhTVYLIGX2e6wBNNOVrOJPbolVVQrBgsznKLREwCP9G9G5FBt+r7UAxTm/5ebQDyFXho8RiMiHlM1F8y2P3i8/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781332594; c=relaxed/simple;
	bh=5LxlTxVoes58pQvqndX0tOVInioWoZ8U6MMAMFrY6qI=;
	h=To:Subject:From:Message-Id:Date; b=YhzdG4x+3aPPQjbP5xtmIunx8olljdn17yzM1x5Dfwh/fBI9ji09bNDVAPMpFUm3OBZie879isNIffCuWwDgRJF0vhVwAYW/GllZJF6NpKaNgGuadMJmvhdMQE2v10LCvDCB5zqakR4jPzRWIaIKysaZyXCkfYBzE08xnXH70hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hHAn/pxE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hHAn/pxE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9AD2C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 06:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781332593;
	bh=5LxlTxVoes58pQvqndX0tOVInioWoZ8U6MMAMFrY6qI=;
	h=To:Subject:From:Date:From;
	b=hHAn/pxErif8MbscfmJFsk7r4GFpEjLCmKgqPqHRToOYzV8wOOSvwgW21fdUn9558
	 PV/3UiXXjocDeOyWN3i+YUxd0dC3RwP+RmjnOYbO4cBIzNRtMtizIFuvXZyOTrowJ4
	 9bPQ/glNb1ALrwn6cRev2JRFKh2ccB1p8fZJS3rhezSes1eAf5FRRbq3qsJDyQjr30
	 svzoTjr7ZM/zLkbRHU3CybFLKOtLVVu3+nvdwnxDd09xnfE3DvZDht8X2dFjcKE3px
	 HOUgKaTpO5QxaDHeVrHLRcyMeZshZEzgBVXH73aR1Awb9rgkxyG9IRIq6gOV7BDdQ1
	 WlyRu1vZBd9+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB0EACD98D2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 06:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178133259373.14481.9554042524751884320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af65c611789756101de3b57efd78093f62a21bc861d796c2eb0a9bc7c2c83790
Date: Sat, 13 Jun 2026 06:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781332593
