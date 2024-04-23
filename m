Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FFA31CA89
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 04:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713844823; cv=none; b=u9wDcXH4TEa9tjghSc+owdFHAynBayYdOUIOGrMwikDGZ9Avl7HM5f4oT0AbcOuzNyc8gemjAVJjHmc3U0XtD1jR8QpKVPL5WEQFLQ5gU5OAS0YV8CkVIMHMEyR5U+ljCQJi8c351C/8Uct3aSvMMwnCKootHC6RYBh/MD0a7A8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713844823; c=relaxed/simple;
	bh=VlA+OMQPry8Y1WN4Yr/LzZcaLk96ofEp49mMq5HkfXQ=;
	h=To:Subject:From:Message-Id:Date; b=bzWACIPC63jT6W36pMEtNZgEKVdtGLniN8eIoS5dbbQZh+qqsSraayJiFyKosVpKHl+pbsDtGjiRxL6Din/SHgJKLcg4ku1GEbrMGpXFKtTn6zyeKgRFB15OMNyIAHMUED2ixEYlwAYyvVK5Hi+bhYGHTdyB17A6We7j+XT9HAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/gWd9FO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/gWd9FO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6923C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 04:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713844822;
	bh=VlA+OMQPry8Y1WN4Yr/LzZcaLk96ofEp49mMq5HkfXQ=;
	h=To:Subject:From:Date:From;
	b=j/gWd9FO707yK6D/IYUbrwUJZnnCeBzejfGL3F0QHI4Kbg4qFRUOE7CulFR3QbU+c
	 LoMGxlPy8OjPJc8cuAhE69/w+KvlaboB8N35U/XOnChhtLXXY6hBQ61spMYZ+94pPh
	 +hpastf4V6/QKx2mXVnRHe01P8Witu6behQN52M7e2LDYot4mZBl6f2nQA0zg4iQRE
	 YviR4bnEEgDRcUPVEPZdgE2rXkLHn5kGt0J+N5OYm4NVM0KjRcw00aeGSwwUgh1lNG
	 EbnHTTDAYlcPpdH2h54tUXbu1V3fxOSSJm4q6zTAqzqFAOtBkC8hIixXJL1rDKIEMw
	 caGB9LyR3gQ2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C588AC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 04:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171384482277.1195.6394057715740634483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1681d43318e07eec941537525f235697f0515c0c539e81eb25c55285e0270a8
Date: Tue, 23 Apr 2024 04:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713844822
