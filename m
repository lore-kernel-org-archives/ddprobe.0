Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379052E49B6
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751485194; cv=none; b=Lmu840x0RNBvzw5E7Pq/Qi3r26Ji4aPIAlU5ssYO0Q4xkIvSVG6P8Ydui+WXJ0+7csB1rRMhBIRCDXk29WNluZntHZXzW6TgPNXVRrioSl2SUd0ZBJAEY9PF9LnJ7seD/wUgULo805amizkAbK15hJWn49d3CX4ybb2e43Jfmx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751485194; c=relaxed/simple;
	bh=rr6TZCZRQa0QS+NrRR9MVo/Gp6lX5uxqnmfqzephckY=;
	h=To:Subject:From:Message-Id:Date; b=ZKu1q+b7pxt/d2Yb1yW6LGuUHlt/pSOd148whD70OMXcFuqxX9gTXzY/AY2mHZcHAhrkH6LQ8vJmg9/Jo7UgxWvSke4fHOqgjrV5OTz4Th3WKYsTPcmpwTtVF/eQn7fijhqawj9Ci8P58OiQp0+Ypa4i1VM6BM/09+1AcHC1Qgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NDNPcrZb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NDNPcrZb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A536DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751485193;
	bh=rr6TZCZRQa0QS+NrRR9MVo/Gp6lX5uxqnmfqzephckY=;
	h=To:Subject:From:Date:From;
	b=NDNPcrZbmSmm25LkoWC05Z7+LrZob9FPbHf0eHjjC5zyAxn6KQMmhPcWVNzG9xdMD
	 eE7HleifDrNM4U3IsrsaXyO7+HfH78Wq8MQHtertqpYvSj593m4C+grmT1KmcmfMFH
	 0/bSaEHb3Fu4lBeJDMETBceneaeSncnBiULOdokyTgkO3Ap7JemcBwqDAB1jldQ2yB
	 uOM1TlUYukNpyTGpS/3BADYEy1LBV+3dSo2NLkWc/3tQ7oUGRVYpfMo6EB5+F2aIBn
	 A5LUsYwH0eGFAdKWUMMWeUVlb16alnUdFQW5IL4awQD7fCPWYklpxTasDIIIuK0d2q
	 PJqyZfOMx9wWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9203BC83038
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175148519357.32232.3035897682398926008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d428d2262f615eb3c32b1b331d21e0f9e50883870d04b28f3adf44caca0f1692
Date: Wed, 02 Jul 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751485193
