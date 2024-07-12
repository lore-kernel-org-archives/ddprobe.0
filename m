Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5157038DE4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 21:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720819763; cv=none; b=NH8IoKnkRA2abfoL14n9JGxH7CYjyxjKGxgQl9T+4JxLrtB3ioKcTEWCvY1dOIeFUzx1IIJ1q3/CNIj/A77sKAsGTuA6QCToo8/UZ5DfLYBxxb966FL17oBplWhUNQxz9OltA86GsCis211BdObNo6pSwbeTr2yqeXKi8wiP2pU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720819763; c=relaxed/simple;
	bh=jzsl2wvyeaCStP7zystfiNBhOsXGj9L2mzqhzhcKux4=;
	h=To:Subject:From:Message-Id:Date; b=f3exo0MYpgdrwt9qWoYREgI8FE7ctdCAVZkSgNkEB+RmficFndHxNnkYzerQJOuF3OBPUMnzFvOgxZxJlVgtdii5Q6dAmJytW35NYPSlBpXXi/B6+1vbN9O/pQA/7F8O2upHmWEy17KBxSmkMdMIB4WqqUUUBFxkopq89ua9kAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTrWVT5S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTrWVT5S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE0AC4AF0B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 21:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720819762;
	bh=jzsl2wvyeaCStP7zystfiNBhOsXGj9L2mzqhzhcKux4=;
	h=To:Subject:From:Date:From;
	b=XTrWVT5S6xFOnOE1B6aW51EO+f4ZUH4yCR/4rBTIi/fLPTdo7VbEpoM8u37Puwwqy
	 uCanFBJLkeY7rxnLaJ/HIdcc865MeptgGzTM3hhZXavKDjlwdj4cENYF4vFGCC4i1T
	 tvMhwVVR3a/vMOUTaETxXUpu5/r65j1gUILvwhZpTt/dAl1dLes9XlOenYY9VpVgYD
	 HK+mgMYQ4xV0aTzRXX1bxwleNSIU+sTq2K8c8eIDgqDqI3fc/8tbr1W8MGCZQSuPgz
	 G0BZzOln/ndk9JfniXJ9shxbH5c4ZcUzKhF1gqwhR+KeAedmE9O160SY6qIilSQ997
	 U6Zm0tXANi7rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7638C3DA4B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 21:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172081976280.25193.3473606084530722417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 301b38fcf54ec088cba4941375a97e6acc2d178f115d9130419a42470f0801cf
Date: Fri, 12 Jul 2024 21:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720819762
