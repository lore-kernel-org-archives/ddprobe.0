Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C1DB666
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731779154; cv=none; b=n6D1K0Ixs+vMm0IZGWdL7HqoXg7tqPArd5QAUCCsQE/BijTDxRor/luE4zZBp6bbht3sbB/JbCBkSSYgUE7/mPqFiIPj8c//BnuXsD05oDRmThEw1wSUqFxZ1s3qOS+SKxYOg9UibEfttuyvyrOkLa+44b3JYgnkY6JBdJEaiPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731779154; c=relaxed/simple;
	bh=BVdMxEz1nnwqdh3m+OUN9tgaa2Zd1EBaHmXK6rxmZXA=;
	h=To:Subject:From:Message-Id:Date; b=LJoGBwt3Kg/UKVnHgVgKNLP7D/EuMU+w6WuRtGt0DdAvJvnZLvLUdZSrahBFQa2Ej5Gz9I1o12LFL0vsJqtB27lEh79EXK6wtHiU7O3YCg+hsCjuQ4ju8rgQ1B5xKz8cAHpOcELl2bMCRnJ0In1967qmwHSELB12GG2VK13JZdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l7v3+NH8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l7v3+NH8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B3EC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731779153;
	bh=BVdMxEz1nnwqdh3m+OUN9tgaa2Zd1EBaHmXK6rxmZXA=;
	h=To:Subject:From:Date:From;
	b=l7v3+NH81Tw8c19S0e5UnbaKz7dMsDAzjX/jQGbO+jhH4Sg11AT97NUHdYyKvOOYX
	 D9kox5ZF0RdGEan3hb6QuIBER5cwnuNaQ7exGLk+sVwdooIsLcziL93iQqT2iaFQuD
	 jKDEx8t5NHpTqACEIZemypiPET+Va6c+qD4HiW4e3v12smHvt3f26kt9uvGVmnMMvu
	 uuePQOBrBDJ8kDUbH8AiRZ0W265RG+nuq3hz8jaoYSAwKolYAwJ3eq/Sp9Zr6hOC98
	 askTV6Qq+cokZnlptMjO+oiAnyZSgTEnVjmazqIpenT4T6nf/WT6ulvnFciYNPmq+d
	 7O78HTExhjV8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91897D68BE7
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173177915358.4624.9377797625603888551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89f757a67b44e189ebb8dced770cc34820088047cf6740356642c26cee59bf9d
Date: Sat, 16 Nov 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731779153
