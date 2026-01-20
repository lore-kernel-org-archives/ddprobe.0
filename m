Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D5B2EDD41
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768889034; cv=none; b=uBZ9tUEO6vIHliLbdlXhpSUq8ruy+ZFrZwko1e4J+lzxwIIq1wpacXT7dJWPU0/zykD1Gucbtx0pZTY46XNWGbe+QXk2hNygGxHU8pPVPchU82annHsXzxe1aaHmAUrMQ1HIB+Yh0MQTdIGLCA9W19aitFsxj+xy/qlUGOWhvNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768889034; c=relaxed/simple;
	bh=KQcANY4IZk9Zc/VN/mQ2yHE+MY9g0vIaeHVyPkYtskw=;
	h=To:Subject:From:Message-Id:Date; b=KBfqHKe7ejX7ForQVx1fj7O8/8QHUT7GTWaI+UrADrC5La0r1R4vJM/DynEwKRTvpQGR0b1xZEdA+LT94KqwMSq7aC3vopO0WgKsKgQ9vn7zWaax0GaayBBcG9T62c3EFM6qelNhpCRsQzPwNMn1Cyc/N0r0Arh+UN8L5q3hgvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FAwVU4Oj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FAwVU4Oj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E24C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768889033;
	bh=KQcANY4IZk9Zc/VN/mQ2yHE+MY9g0vIaeHVyPkYtskw=;
	h=To:Subject:From:Date:From;
	b=FAwVU4OjxCFHYbPY4AxhHsT5qZ8KrgsmeMFM1wFRwVr2g9jYTa1gEc5c5lmK3kB5s
	 sGPstyfNUWhu90AvJuKXyaP1+RKJ7V4KZf/39L6UwC44UQmzR7KAe7ZNYFfKg2a1pq
	 oN1FjmBb1KCKdu7AZS85+7SC9YzS3tqZWgspBo20MSGpnRSeyMxZ7h16kPGVtgU6EL
	 7Wt/Ad68aPe30QszetAdi4ZOqwM6YUJ4NcHs6Y71wxhKxR6qILSO3bQ4UxGiivJxbE
	 TAeYfZoUtQkp70WnJlhjWNCs4ZDpvR5rmMdnKwdXNV2kAD/hR84bgL7q6VgrED32o6
	 DWHwhbQej0NEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6B0AD2ECF9
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176888903364.18168.7166863119787842698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d669b29359bbe39dcbe73e2de831e1b54716bbb72375fd735d8efbedaeac43a1
Date: Tue, 20 Jan 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768889033
