Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD3118E3F
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737426354; cv=none; b=Uja7ASz0B0FZc1fnDUNNJcmXHk+VnSvtE5DWq9Kz2FbHpsZnpqG6jVA7ACyQH4CXDftKmrx1/n/jV38rC5AWLYNjwt6+YXzGtMe8CyNvTPbT67aiL4swmFJRHqJnGOAPggMz2Ye/XfuKbT6vWh8MHY9AQ79QnsdFwVMXgZU7b5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737426354; c=relaxed/simple;
	bh=b6LXgcObZjmDmRC24p7rINRbE52sG1Z8XUAeBqBf7Kc=;
	h=To:Subject:From:Message-Id:Date; b=f6bBfC9NJoqqLzXp+wGVMXaZ/rkrNBvrqar4JlptCj24K9n2rCN0dWGe8SIXp6SGLULimYKlafrRgOt2cj2BVpRQUUxMSEuxTQ/Vr0S9RXQ2Y9LYgl9eWdc33bDDaUoajTB7cpaczqJGrnGe57OYWStVCNEWRK+1ssQ9xhZfSf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gim9ONpf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gim9ONpf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76DCC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737426353;
	bh=b6LXgcObZjmDmRC24p7rINRbE52sG1Z8XUAeBqBf7Kc=;
	h=To:Subject:From:Date:From;
	b=Gim9ONpfnVm8gitTi4/Nm/owmSVfDW4V+FKtgYSZRRBYj/BV8Tbpg56aUb8E4QeRP
	 WoxLM7gVF3dEmbBy8vpI+OhzQsMA8Q9ZalRfHfH8qKGbBtYKIguF66wi/sTpbkOyGh
	 K95bTD79dh6CWCURXDvT4L6TructOb6MA1uxwQFIo0J/CqMLgPpd10UWXrqfANOLwV
	 LsIH5W8DBudcp1wQQYNhLeDiyy3e0NlXExC4eqAOQkKMwbDMdSZRSDUjQjSkZ5IBht
	 CPXu19x3NbjBmWe+/CVN4a9LewarspduvHnLUapSqh94Wv1ltKSjH4SZ4ESllLg2F3
	 z4bmN2lp/qGGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DAAC02181
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173742635358.19487.15273399943000259757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ccf25b3726ec9f9c1dee3b1484d1325d8f5c8043a7cbdaed14adeb36c983a24
Date: Tue, 21 Jan 2025 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737426353
