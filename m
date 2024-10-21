Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185B71E3784
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729502754; cv=none; b=JkNcZ4xuOnFNQd8o9aLYoGmEdEJRJ9t/7tVW0l7v3OHn5YqwOcwNLZgTOPvnzqlvvVtkcYRftQXEexir0xAmKw5D9Ru03rt4rMiVBXHE1OrigI9w1mEGJuZ3ccOip/rASnY9+rAcY35wo6uxmk/vZE/PELg7SUykL/GWL+2EbTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729502754; c=relaxed/simple;
	bh=3EkRooQQmq4Whf4IyAUPv4tF6cKXTXheoA4lHQBEhVg=;
	h=To:Subject:From:Message-Id:Date; b=OHnkXLdIM6ECRBiqwj1darM3qfdLj4pKaV4k7LwOxlUqCs2uaYJiJ82BHMso1y7Za7LE6XKDFINbb6BpkDeR6wCnuQWQ6dgpC2s/HNVHDG//BFeJalen0RAPONyxj3d1adv1SSPxpHnlXyDIiMxSys9Eh47qCPiFUp9qr6xF7Ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYJdaOdA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYJdaOdA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0AAEC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729502753;
	bh=3EkRooQQmq4Whf4IyAUPv4tF6cKXTXheoA4lHQBEhVg=;
	h=To:Subject:From:Date:From;
	b=uYJdaOdAKnhHtvSbOPBOmBKrp3uN1BRMr6ws1rzzE1U7iR5+WfXjZJcH0axPwNSxz
	 yzB2RKw1GiIXttABJQixUdS2bb6wr7cdI/tGTOfzspZCFKzU553iT/vscinBbiS1+l
	 TLLkJTBtGrkv/YgLlXPDl/7ZwqCLnYOsfghjai4svqNK/hRJKCpyxEw6z/ebfpLz4D
	 cSVxBvU2ngha9X8WMA4vP0DY0g83RFT2zvfsMuTjPFksjKox8uyEk9ADznhNPAfmBE
	 x3TIhLad6Gvl7fdHsKsq5jh4ffeO2yQ59laVWn1MHnFd61R3Lyu0NOh0dv5uNafgDB
	 E0gQRStZwDF5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99434D0E6D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172950275361.693.16443261962638279600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0296b9cf8b8e7310e6c80d073f55d8031eebff9567aa8038c29260123665814
Date: Mon, 21 Oct 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729502753
