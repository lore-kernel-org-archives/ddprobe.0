Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E49D7187FEC
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742409594; cv=none; b=eZj0ry2oNl+ofS6sYCQxJ2Mr5wuzVfsJX++XSda+TiTQUDhVPoj0ytd4M+Ipc3/qpeEtJrzZprtIAmOm1HfZCou5/MIl99ewAh1SKnnxOVqmj090cJg2siMk0oj9lRx344Ti2Qs7HkPaJbSUoypYQd/X3mqvwIvEh5JJvOp6aMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742409594; c=relaxed/simple;
	bh=rm14bBHTXiu/zB7LW79/JNfVFOfn0UXt0Fo0vSP8EZM=;
	h=To:Subject:From:Message-Id:Date; b=bRPeva85NqkVPiriVrMmdSgNhQW87US/OW0U2FF6ORe0Le/nEfA0d2GHKHQd087ljoUUY7FrWak1JN8DRgjWxZHHf7XiUG9NN85Bv5m+b08ExXyIPlqG99e9ad9hKVd6jyhC3YV+EWWST8lyhmPhFGvss77p6/f30os2y9gHNMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V/WIyR0g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/WIyR0g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB4F2C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742409593;
	bh=rm14bBHTXiu/zB7LW79/JNfVFOfn0UXt0Fo0vSP8EZM=;
	h=To:Subject:From:Date:From;
	b=V/WIyR0gLa90ICwq6cp9HSOKzg7py5v83QAR2kZv2PGWcPRGtLcU/JLWa18gORW4p
	 WGpbq0lmqwYxI9U/zrrcnenr1Zvsi2eBdIVL8QJBMlOAo0FfFMNIIDJmy//T0hh5I4
	 +dSEwf2YoIFNflRCbckdcaCdvGG4K39/Hm2kH+3iBAHDHR+6hn8neluDo9u9hlv9Tq
	 DgtwNKsjeG3aA8/Y8/X4AL1UPvcc6wdrOAWnZh3NT9t/Nz+8tLtAMm3xN2YtmZKzXW
	 tWTWisP6zFwob8VsB5QGGk/pLetNdBvsVUGY990mY/Ur+VSnWnTRVMCjvSJhYevMUp
	 JKUG4L6cCrLDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96CCC35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174240959366.15087.10574230786137493674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67edf4af9807b03c61193512c57d47f6967a166d0f0d45a93ac1fa1ee628cf16
Date: Wed, 19 Mar 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742409593
