Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF2479D2
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751312994; cv=none; b=dPDakr/mJnIEQvAfGXsea8WdhxrqWS4NccdfeL/SbZ0+wTsuzTGpjPdHKZutwzQoyVK3gbWtZQrU306xW4drkkUVfdTtOqopwXAJpVgltMa61Y3aQXwX/PCouXB1qzU0QjjoJUDUWhtCFZYO40ms6qD3RMdSA/J5IiBFCjuSjY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751312994; c=relaxed/simple;
	bh=OPArLa29zt8z1EYSeQyL2VqYHJPY0AVFD6VWAaLq/4E=;
	h=To:Subject:From:Message-Id:Date; b=Qb6eNds42fBGP8/S+F6PLs6MIgnVZmVMaCIpbceBu9AwN8B7xQ2PfBKMvohQTeRamgxiRV1utMctRJ22NMPg6AWIUwiYAezRv4zATsXgtVO5KABL32PafSpLr2fW6vp3zGoYG7svJzhTWtG+1dTeabPlPKYUGsmQkwgokeF44D4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0GF10i+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0GF10i+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA05C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751312993;
	bh=OPArLa29zt8z1EYSeQyL2VqYHJPY0AVFD6VWAaLq/4E=;
	h=To:Subject:From:Date:From;
	b=M0GF10i+I/QWy1qY6FEQdA5P6dDJqBrsce/fnxfhtjGoVcGfPO4gRvKEQX35nJaon
	 gvNjJQOsUcEKi4XMlUeIJKsiAmXp+9dPwU69ZaFgWk6tMuTlk5KliJz0P62u43Zi6f
	 zfqAMvvSQxtCy63KTd9EF2fqVs9qEoRTrKgyBbUqzgrZ1MRxw3ICUqEwgM+0gtVi8t
	 8BykhDNNc55pc2JI6iZN3UW0xLk7RkULTG39BteqXKJxeiRR704EyRRvQnpu4T6dUw
	 yIoelZP4cnEOftKj94miUU8qn0BeGFjEjS4yu1wNdVlXdul7xh4MV7EqdcSmaWUGkI
	 2udsxLWpPXigw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E39DC83033
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175131299357.975.13658529531276494795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ca410713f35436e2af47832b4da2e1eae0eab83d73d6f998685dd5f6220fea4
Date: Mon, 30 Jun 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751312993
