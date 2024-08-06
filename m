Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD7D146A6F
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722935154; cv=none; b=BahQnkIOvujMYQxmp6alF0mi1XZch74ov6wxaN+BHMiF7+nBDgyFvBAVBHuvnYUCUXdTGvBthJ1iIxkORk9zAcm5jnEB7GQib4eELInSUHevvz57WPsT4dU4DgfeFDwVAwg6phUBgH/uWDiwnpUwbDtiz13WuSzH8kzq1o3Ummg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722935154; c=relaxed/simple;
	bh=ASCcgQWxuN+B1HoutULjMbWpuUiKscD8QExBci4b3mU=;
	h=To:Subject:From:Message-Id:Date; b=N8c2p+q1cFzmHZvMueGoETEV1wVhw5oY/lD7ZPliu7O3odoiZ46dnQh6nHszyXAqLbeILd1Ou3fN9mhZkZ4yfhVgzdGlF4a/DbubiEgJFqUPJRr1rhK/dNZN/tSmULuQ0P5bEmbcTIyT6FZoBi3p3uuoIUIZN7CDlqZCo3eCRqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mU9Xs3Kr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mU9Xs3Kr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09BDC32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722935153;
	bh=ASCcgQWxuN+B1HoutULjMbWpuUiKscD8QExBci4b3mU=;
	h=To:Subject:From:Date:From;
	b=mU9Xs3KrnGZQerfqTPnLflTRp9aYwvIqmWGkGtjAy5/SAY1ZbZg9kXdSdHVbQumpv
	 iB7sciFg04QIUMO3bqzC0MIPUmDAFQq7j6ypUiWB68ASV0S2iu2CzqCNQWexUB4Lln
	 aI5v67GjXKk85Zpmxfui762MOJ2/hOdt/YQfAD1x299lt3WzThrq9H+sSK7r7zk3RW
	 cCM0OIS+HaAetd+aJOyxcP9bIFGnlFEC+W27nn6cernitCVFNsx9mrbX7xyB3mSKW1
	 4pEkIXd8cQwTlr0MtxvisGYFQKKcctvD5NEtO4hpIRr4+DwkdMJJqsuRD+fISZhXc9
	 r8wENVujEqXaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F13DC3DA64
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172293515357.31297.16297600772018369093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7068f27e3e5cfa14f4ca09c1ebedee9e3628ecf8b400a5197696c4e62ec1e9c
Date: Tue, 06 Aug 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722935153
