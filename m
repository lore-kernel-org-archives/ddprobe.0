Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E464C96
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 09:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742983196; cv=none; b=o7lIhk+DrpMyIZd65XL7O3BWuDCPd51Xe5TYylKC1NhfWmH2DMdihBcrV8sDezJBjxDxW3RtQA3ZXH22ZS2WhsEbhoueEKkwRXxCZ58R5IwQFhLh74by1apfKaxfg8qgXOPewjV5P2VqGSjYxsquRzjrDrIEIBP3gbILLVQafi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742983196; c=relaxed/simple;
	bh=KHP3c1XrXEl2W4b0l5vrOVXY26UmTlGaJxSBOppwhzc=;
	h=To:Subject:From:Message-Id:Date; b=Bcme7+ob6KniEIPoRbJ7CIbrefmc0BCkidk5UqTCIKtLGQzh6163D+Mbq75rT/t2LCzhDqIcL+LtDMOjV8Tl5DXEeQZUc/ZQE4fc6kn+I/a3w625YxISbQS1jlew8MzJ5UPHgoDqNpmYw0lIHdrYLNuca/6/43bmRNnibVKhskQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XcLjXMsg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XcLjXMsg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6764C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742983194;
	bh=KHP3c1XrXEl2W4b0l5vrOVXY26UmTlGaJxSBOppwhzc=;
	h=To:Subject:From:Date:From;
	b=XcLjXMsglybHK1/AM4dpNMx0NiiYiWSCqtthkCpCWkf3zL2nBgjdVKgSTNJdum9Ck
	 WzRBHmjthU+VwIKHUtRFjcQUfXYy08wNhq8JER7LfBhVCJ221qqRbV4ZkxGKFcz5VP
	 KPh/5LK4t3nW4NXvYDn1aeea1b45T9pFZfC4Sfbpkg89BdVm27To5wZjauy6VmlGhc
	 AtkOyABVZid8pOBRoa41RYVT71qja1/XQbqMIJXNo3RCB63euk3wmci7Op0+73dotB
	 zf5wWm9k5Irzu1OITmIDzIQva9F0sixiqRT6aSOrNBLKxeh/VyozusDzctBDzq2nfq
	 u7sDVfMyWzSxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CFEC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174298319360.21311.15352032317634779424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 294fec8004a02356cf991bff8fbbf8b92b828a77e7f1d1a409bd3aad136be550
Date: Wed, 26 Mar 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742983193
