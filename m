Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05EE33803E3
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 15:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777477054; cv=none; b=IocFQYn5XR6damd8ocjIma2Txm3wMy52wV72MKasmYoJqQGlz41jNQftaCKmvCS/GjeFz7xw36NKMiocnka8oyrIgje3Xq/k/CBdmvqjBdXSCs2E7kgu7VTRxD+I2RBS9miw3exrLKd0JzfUMwylR1reEKsaThSVCz2v7qx5eZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777477054; c=relaxed/simple;
	bh=0jjEJPqhsyBgn5eZJ1kz6/h86+eRo4MUU99d+ev8UD4=;
	h=To:Subject:From:Message-Id:Date; b=neDSU9cbmLy8iEbWKQfhmg2jqZ+hEHli06HG5hN2ftzIxcb2iKdHvPfHIiMZloW7lo0bTJKA0d0pEBnS6LdPZfefWZPZ3aSufqux8VfB1/KrVgYVgddiLt7/4tufCgqjjAxnn2WhkJJV1bpdLzZltXKhmA9sa6QnB9v02NMwdmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=es5Z5eS5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="es5Z5eS5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD63C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777477053;
	bh=0jjEJPqhsyBgn5eZJ1kz6/h86+eRo4MUU99d+ev8UD4=;
	h=To:Subject:From:Date:From;
	b=es5Z5eS5KHZTk/rB0ato5uvvziKSOBwg0KD/HyagA9T2Yn70JqasJe16wPASvKNeQ
	 3XBhHVJPKJ09EOMTTPb/rNX9/may4tvPhrTi3KIOTTCzxWt4fYe0ucAS9YkIaRkbVX
	 48sB33gEYHNIyEY8W9xLoJYrFxebsmkpOcIlghUX96zGBNTArNIDr+nJ9AfnQ3bBNl
	 dJCUYDfgXvq287roeeVFra2Je6KvJnqv5CpI6iZUjZGsr3RXB07E6EuLZh0IohTcsi
	 k5pciXztGc4BfA8kkNEsjSUxsjKxIth1F1aCJVIYLZCN2wSxUXkBZ2ojUgQsOiBph1
	 RjhoYs5gwWekQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB600FF887E
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177747705369.19626.11823915473289967381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2448278a53dd1d51535d22f592e7ccee4aeb7d1841a0219894af4bc8fc1f3469
Date: Wed, 29 Apr 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777477053
