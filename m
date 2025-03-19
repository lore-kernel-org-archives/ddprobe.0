Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC4CF1DE3A9
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742428793; cv=none; b=FZURRIIFYSNckB1HuEa9pjdiUrbHsUoBv5mRewHoytpPXpmiKON7FpH9SAK8vYV2H9gnJ0ODyr6qvemU/ejiEXv9o2/9zcz5xQ081ZjvNLniMQCXWQELtRX6AApoe2kLPbGwMNXr7hcRufN/wuxU8HkRB7+uEESkETNCd5xU4DM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742428793; c=relaxed/simple;
	bh=sHmb3bslVNIQTmksfhg9rblqh4ZHIfMg1vmGh73VRgM=;
	h=To:Subject:From:Message-Id:Date; b=SYovo8rxLUIqg2i1ijXhdK8Aj036epPO0fJbdPG+ZU93gXMgescSL4ITT/+uFjJu/cGAlVUj7oXgNFtHF754VuvdIE3NoLxOQwd9DAf3vOz7EjHRItAXuUzKB69INSoXvDh3IOmq5zwvw/Ar5yOGfHjq351LOf3dfeuCaGcKJmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HzEO56ch; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HzEO56ch"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC10FC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742428793;
	bh=sHmb3bslVNIQTmksfhg9rblqh4ZHIfMg1vmGh73VRgM=;
	h=To:Subject:From:Date:From;
	b=HzEO56chpO7MPSn0pEi8LSkN0CROEjZG0z6uOM0aI5R2FeYt9MJlt77xwhoKKXLHi
	 MQcPeOm+W55aEvcRDRtDAVgEh1KyZTfQJtbJMBQIuzk2UwyheAY+Mqk8BGKreLycTT
	 I13AsDt3Qes1wyTRSKYliJo6Bkgfvu6h0Iw/cSEmyb7fRbmTLxgMULUJq6Ucrd7Fno
	 LbQAJbfa+I3kClG8eb+VWuQvv/zDLPzlEidz7MkcpzrZz2r4Zh9aBiBTNTNuGmGPOO
	 GAfyvrwZaZf48DOtO3L9WLmVlMMOXPA2ESgyYvkke9QKMFkrwtTh3coHXjWBrXCxc/
	 UDpESLrJrMKWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8866C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174242879367.22121.12155591888791079002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 158e9856dfdbe4640caf992efe455d905abc61df120a41f2bf6e7ed6363cf692
Date: Wed, 19 Mar 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742428793
