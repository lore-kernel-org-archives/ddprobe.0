Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D21B280032
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746543594; cv=none; b=morf894EDRNiC2x+cu3oDGmnqXu80wqDC0lRuns012E5k7YJjFbaIdsjaNoooSht/OBj95sRqWHWjCde4obVCXzBaKGvgnxL/d3AvcZRhFc7sv9QP2Cxx4zpTn5kZm6AatgsYq98ZHbSQkSHS2ZKZlCTzNm0HkFl1m4EA/ybA0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746543594; c=relaxed/simple;
	bh=Eqdl0irWFthQOg7BQmgH4A3dapL62XzYtYyI58bdh4o=;
	h=To:Subject:From:Message-Id:Date; b=uMt2tuHgIrot7MfdYvIWsCGX0xqzEAAvz6K21eaJjTY5KZxE87ewcQL2oOXN+IIrX51LeDxquyVCDSTK5d5v2/yMwwCqgweQ3JrnGNNsyZpNviFuDJ+3loihFDXaEOr5LE/SbAUhy9cncN5gpIUEOt51lsYddhwyyO4leuacHRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNAwTpvZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNAwTpvZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C9DCC4CEEF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746543593;
	bh=Eqdl0irWFthQOg7BQmgH4A3dapL62XzYtYyI58bdh4o=;
	h=To:Subject:From:Date:From;
	b=kNAwTpvZOyD0t86eN1I3qjc/RfWqkMZZMuFI/CIomTv9sD9JN+xwDM9go5GlLYWcb
	 Dt8KYgfamm+M+9E9/P1exdIl8VQxU7ymqCzDKQe/z1lF+S8JCwBAnxyQjXzlW3IPcW
	 CIY1TsB7RzYq2W6dq4YfL/FUYIwGgbDqcNLSzCcLF38SijDkeY59oVPzoyenwV6f5z
	 Xiy5Hp7WTS5EQft6NOHsFI361w1IGgYTSAPaqtQ7f/LqYsVHuTN1xWtJnvq/hH0fHj
	 eRIypJYcL1GCLCQxYGKPiqUQ92ZAxDEoABgJ+0vRmOX2nCXuQZqzcIEKQYmSkeyyXX
	 dC6l+4BWdVYTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E365C3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174654359357.29613.4409104210223708160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baff87c022bf6437d9316638e4ba672693f26a2cc793c2c0f59f99343f82ea2e
Date: Tue, 06 May 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746543593
