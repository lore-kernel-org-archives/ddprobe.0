Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E1C8176AB2
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 03:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718593703; cv=none; b=fiPAqUT+aGyKpaMeKy3MV5QgxINZ5Yocbg8R3CFRS2nNz6SiqpgUQO3MI/iLn3KVbGbOZ4B8Flrn4k0DHYBdfbz6k+Xkg+VRL3Ycvo7Abj91arU9GN/FhBz8wkJhb/RmFt6L0kmz3kE2/Yfqcn72ey9ThGzS/CmTHJb7LsangFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718593703; c=relaxed/simple;
	bh=1WGSM+c8+lZt9J8GVNqB87qmbFHlO+mbooWQJhuthK4=;
	h=To:Subject:From:Message-Id:Date; b=ElRFfxMSYBiVPIitJ0G72unCmcqa5Rih4654tUYWIgz2ZY/kr+yYr8VurmgIwYcbajsXV6bpIhBN9CR2VVCg1mqngX0PCS/s4eEq25EKOZaYLUHsYYw/yueLSFE4BsKrCNc7mSKQM8dX5d5CwSelC4NuyhSZ76Q9bniWShOx8Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CmhxL3bf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CmhxL3bf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E98BEC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 03:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718593702;
	bh=1WGSM+c8+lZt9J8GVNqB87qmbFHlO+mbooWQJhuthK4=;
	h=To:Subject:From:Date:From;
	b=CmhxL3bfexZBQzXdBrOGFxZIrkicINGkJ1Wnm6lpzeSrtZHjzDtK6ZrqBrbO7A8xO
	 Zv6as5CUiLi9w7lmiKpdBjNQUT8RHCGxkpQZnCBeWN5j80YOhpCbk8GDeKSdmedQd5
	 Nxq9HeWo42v40b9I+p0yCV17ZSGAVZ7ur337XO05QtOUx70dVWyyqFDRnC+SvjOaYx
	 7ikMYcbGHuIxhsu5qtpZPE0rULjIRgILBw293migWskiKOjg/s5E8BucpUgAu5IuRo
	 KmMDRDzlCekERzpfTaXDLtXRjFHeEF4qaX5ncZQDDRpmx3zf5kbZQ5vn8wLJeyZhWM
	 77W9q/C9TrRGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF7ABC27C53
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 03:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171859370283.16255.14965685211939870084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a5154b57e5ad4a89d460eff26e969a1d0365cd1465246b98d5e3794f191499b
Date: Mon, 17 Jun 2024 03:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718593702
