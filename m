Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433A440C5A0
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 16:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781541394; cv=none; b=bbhOb159KJjgI9s1GLoyxh4+BWyEA5iwnJeburKqUjYh0/9qmhVTKSG6nRL9CI2+mOseMDZKJ/vVGGn079Et0AWUJzPgV9PG8XV9V34ietknoIK9+RgDBPgPqQHz0Y9mgQlQO0FgaIk4mXPq0KNzgjUkL+IcO2ztxyVLT/TwHUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781541394; c=relaxed/simple;
	bh=BurNXwPQHyqhlFnup6VqhOQER2g81R0kalb+5TJb7CA=;
	h=To:Subject:From:Message-Id:Date; b=BmISJimpk8jIYVzghb2E25HtFiP27thsKmsIrsBDzgbGF7dPY9WI6pjU8ms/zGopnpJVuG9nai+xEYEj0vPaVwtdCIbUQsXmLTHJstlDWpzOuzOFAmsapUcsfEK0rGZpftWRFaFRlYosHbpfm3LkwERzgdA4x0e7hHJP22jK/XM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnpyDEkQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnpyDEkQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFA28C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 16:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781541393;
	bh=BurNXwPQHyqhlFnup6VqhOQER2g81R0kalb+5TJb7CA=;
	h=To:Subject:From:Date:From;
	b=gnpyDEkQdPACmRW7AcrKqhfzFsY8k8EHrQtPBFF10pEIJAWnNjhWqjr0wlo3dOyoA
	 /fyV6to2pAJLmAun7h1c1cZC6q5PKwvfgIiSRflMqSa+6W5tvx53xYqKRDqpWa7EbJ
	 +Wr/RVa9i524cquCyssz7D9/JRkLOjjYJsgjRZ/oTCCTaEs+H9d0SOv1rMoH5KNNd0
	 EuCJ6AoKqTIAzuj+u6Qfeidp/oEA8pPP3XlFWSOhSpBgX1fQpwsnWOSe2bM4tQ8pP/
	 Yl9BokNfrCk5kcgOC/iMgpm1enezaAe34Tpyhg3JfyUxY/uCC6SOUS0o1g1M/DZrHH
	 fwuV0MFG3GG2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA23CD98DA
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 16:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178154139375.29054.15128500521920580356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 762b2268bde88e2f1c0d141f28ce2aee0c0b9ab70e31b4e43db2ccc4254de7a7
Date: Mon, 15 Jun 2026 16:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781541393
