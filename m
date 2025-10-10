Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367B4C2EA
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760074794; cv=none; b=McVOQXQQNie9FRKyS0bAHrjAyXqTFCGKF6CcVJyEx+TPLJTziVOmDDfw0xFiJIjaOqu3KClf1oiOIoL+9baKsUH0PAuAfiM/2H2wuE09CK6lGnoYO5JM1+uMGEqQOgECRwiJ8upy4J7w8TsyzVINtU9nG4qHqVEvGeuFNytw/eU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760074794; c=relaxed/simple;
	bh=n6bjRQ6Dm0cgpzQPMy3x6QzwHYwKbweexZpTQHGgY8Y=;
	h=To:Subject:From:Message-Id:Date; b=bAbUML3JcK05ImLqQRQsAiTbh2kN6U5cKvs3G9qs1g5WvzE7+8yzflx5+I+gqGji5oLTuALCmm3kw0awojsSGfEX+oWW4oZwAF8BLDBFpIDt3N4KQzt5Qjk4vNaO1c/tgzWZolmw5jVDfu5roVTqv627GJqrn58FOOWWNYkA1Pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMvEnjQZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMvEnjQZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7C6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760074793;
	bh=n6bjRQ6Dm0cgpzQPMy3x6QzwHYwKbweexZpTQHGgY8Y=;
	h=To:Subject:From:Date:From;
	b=jMvEnjQZewOEWSVqLg0Z9ULPzPSpZd5wYIxpZzn7SJXJKvmFWrkXKhGd37FeQdIoB
	 eRsa43bBV9AoPbt4hI4Bp+QEXYxCka6WezzJAYBIOBxDfGVtkaZWugXDbsWD/w9phj
	 2ZWTj8lkKXwyeA6XkwuYVoRo+kdXsO96sAvp9dfuM3bQwkvFFxXNo1REVvcKqmmnhH
	 auXRwuXBBTn9GakqYp7xtLOBNzOLPv1yGNhP9KvdPBoNfomLPEGWSOYdkNT0oc8tJx
	 Uc2zfZEcrgdqX67KeRv8n2iaMhuD3Zl8jGb//CRjqUfWEy18elPe4XVqIyiVB7+UoO
	 vxEVdk2g7M5eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F78DCAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176007479357.18091.8380233192921769074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a10cff00c10bd0b05a5da727933c37a91f27c2ac871a0010041229915ac4e0a
Date: Fri, 10 Oct 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760074793
