Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69F9A35966
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 18:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738522554; cv=none; b=jeQGFadNRVjNekKYdQ13eQ6slHK0M9ktC/Pkbhhs2miSwBX4+tJosoShlP35Im2J+BPQpj4d9QGiywE3312QUUYfC/2JMTdiOdNzl+1ksv0Eo0xRlKA7vapwckgKFLHgqJqGHf/KL7ZsBlFV9KCN9928dZCZW6orIbhLnLf8kx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738522554; c=relaxed/simple;
	bh=zbuSWHHEuNgP8KIiWEsHWufuqnLdRIldiX6Z3oq0DRM=;
	h=To:Subject:From:Message-Id:Date; b=R9PV2+Fff+gBYTuBQXQwRYo475fxlWRT6YQKOMRp3LrdI4smO/RVvA30RW4N4DVKqWj6qJdo1qpU4Pf68NIMyNztdK36dgct0KfoNgEYfLN7DuXIfqEKdHBWpzLH2qJEnGkRalEwG+ymB5e8TXwUfIvU6BDhzFSc0Tbg1+djtwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nX7zOBb0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nX7zOBb0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD15AC4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738522553;
	bh=zbuSWHHEuNgP8KIiWEsHWufuqnLdRIldiX6Z3oq0DRM=;
	h=To:Subject:From:Date:From;
	b=nX7zOBb0TMcwYU6ojw5Gv3os/9iO9BUZJ/LPsylTP7T9zlexw1CEbeqXVomhgLdOu
	 Pb1JB2l2gUleK2marQENPhQcms5n25hUwQ5oFDxpNX7bSQuP3eWQxOu/Hh9TaS1ZuD
	 vM6/hnj4bjrhH7cFczLKEEk17hGrh32xSCtiRK6AjuchB8TENxeAfFQjPMygMUzL6q
	 AexfSYSzqVrHXQsO6NLVity67DoGKJFWDboSSKUBUNNsbXAV4np2Ao3eYUeAyABAmU
	 nMVhDdIyYiF5ZsGwcry/mhvFBVjv6QMIP5H/sY9Z2/BPgT8cCiaW2Cfu9I68KtPMrh
	 F6NS0mMIZYZIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD81C0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173852255368.16913.7407483108789929206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4bc1f15aac8d77dc81524e918d24726e043ba2810806bbbb4d513c2747cd1b7
Date: Sun, 02 Feb 2025 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738522553
