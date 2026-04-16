Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21752175A83
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 23:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776383254; cv=none; b=iAfGO3jLBM84pG6asAt5vOCXVpm4arWx4dt6oanbZbjgL4YDOKup4dGpxQrceS3OiNaCjtfZrMIdacemlqwNhu+aYIJmSDWnrqpmdJDC3fY0p48dvv3u/6NUjesgqSXzZXFKEkpp6r51cw0zAF+pOhoqsYkaEaNSwUrB72P9gXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776383254; c=relaxed/simple;
	bh=e7rgMNx4LdGugjN29Enpyuh32mruewM3llIw33tzt18=;
	h=To:Subject:From:Message-Id:Date; b=BwdHpSNXmab8cBBHYxRc1737uoEOnbzvDddHZW2JC+vvxgjIGb+H4srZC08EZiKp8M83q2PkJD/kGI2gyplmSbQCbAgqPz2ds+NNJwuxjnwu2rb5AvK3tJmYLFBLhehQf/ZOPmIGvh7F9jRUKi+eZXIacclaqbtzOHSCKroncWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOpHRr+Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOpHRr+Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE6C8C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776383253;
	bh=e7rgMNx4LdGugjN29Enpyuh32mruewM3llIw33tzt18=;
	h=To:Subject:From:Date:From;
	b=MOpHRr+YdsgNsbxkhDjBtSftC1zqX+cho6SZ8MW9mBDp6umnA7EGgIezTB5uRWT9O
	 sM51lWIKk2ceRsPIdjTjBPP9U/Ua3omOv6+/wLi6+GvQNbwdT9pyIaNY59LYhfRVEt
	 lbITf6vqgrU+bPIB5YXZywaQq/SMzoJoPJHHOwl0vp8kwEW6SeXfLg+YBGWvcQiQFw
	 TJesa/876fEkwJTEiBX2ypGPlzUwOJp2g+MzMbexGQU9iVIL8WEnMFSZjjRNtSxoVv
	 MDmcHjZrYT3WzOJgWn0wV8NYOCOD7cEaFgEx8o6sBMnDx4yxQZZjyI9qTnzhkavyda
	 mijnCPZT1ytQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9E4F8E497
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 23:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177638325368.20303.11866771006675860121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76f5b6314f2f33ef55de469df7f34f588584558d4358e2246b28f5513796cdff
Date: Thu, 16 Apr 2026 23:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776383253
