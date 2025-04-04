Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334D2199E94
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743761994; cv=none; b=p5cLQ0/ZzUpsVKUz/dhrNC5ieWpN2+razSbwqhSyjBFOwmC+7/OHadadZKjbE6owwiVV+3Jgvi9YelWHDFe7nRQSEBRdHI5GaI+qZ4OFCrE5281GgX1zfGZ2cUgEK9DBN+B7al9KKx9IZeHrgD3XpWuqgoZcp084J8JScQJ+0J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743761994; c=relaxed/simple;
	bh=G/7ncHqu1GOgvDJ8rR+GXyp91c9y7NfOErfiqrrExIQ=;
	h=To:Subject:From:Message-Id:Date; b=b876CIr59yu9goFDGaGihhpWUqmZMUHsVbaSBBFBGuLGNoODIX5Tx2zs9XmRJTx1yGhOC2j18yxGykA1JVgft+z3vyYasf124595/0144H0TbXfgoWIN4ZAzAMBNoWX+BwXepDN8B9uTArWCkS9HT7L14zQ/HydLzUxc7bJK90Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kAkYxIXI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kAkYxIXI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0136C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743761993;
	bh=G/7ncHqu1GOgvDJ8rR+GXyp91c9y7NfOErfiqrrExIQ=;
	h=To:Subject:From:Date:From;
	b=kAkYxIXITMK8ymy/Rcu9GyDUOBgabQHSMRXitXSbP678nUZmrOVhMdpOQluQ+i2rL
	 cHtZ3RJ/xy26U+//nqPKYCG7js4kPk74XasBuAC0sFMVSytktjUg1g7TbJ5lHZCVy0
	 BVgDN1X4hffQpbwIlss3/iNdEBrTzz6aZrOHFT5YMebvb9n3aigtnuf2eBoVihpv87
	 Iy5fKox2hpHFmJkzfnwjUMF9X0BwLQo9GHOfR7Hr8+9g9wDEMx+jDbLwAUIf6ehLfW
	 xdKEW0r0zPOb8nqC3MWcqLUDeOtlb6GNIJ0HG+ShxRJOyOZh81BGUD7ubLPauQ3Q74
	 uNEaB+tYeqfsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F48BC3601E
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174376199357.2473.12405255716764827991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e513a6d06bca5e8459adfc049ad1b1b2d02460854829bf71f9571148610f584
Date: Fri, 04 Apr 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743761993
