Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1897C3382DC
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770710034; cv=none; b=PTtbeHw/FMKgIZ6Dngw6k8sotoqxgbUm1Qnug30kaOP1pimLIl+2XQnfTmFs/XjWOMtC6GLt3wlDtyWJcVSrpa5N9NuVkDkzbu9V7pNpytdQ3HlyrF19dl8UZngLE5EAOHfcSq9S+FUBWnggbGNEFW3rAjLFJN0cKwhtYIeM11Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770710034; c=relaxed/simple;
	bh=QylOAwcTEtcjop38l/DhGMg4GQakshGKfqIRfG1oykA=;
	h=To:Subject:From:Message-Id:Date; b=gfgo5mFaOECoAVB7UYM82Mhzt+c1ehOcFtOjTsJVi60hYK+UdeWmJPTZE5cAb5ju37PtPyUnWjGxNPya8RHVpwiIXTDzmPTKyqB+KAcVDcfv6b7Zx7CLsWVxL/pdayymlS62RtDeMNWJON+dNGDrcXyWTXOkp+aP9wmqWN+0c10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K8v5LgNg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K8v5LgNg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5184C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770710033;
	bh=QylOAwcTEtcjop38l/DhGMg4GQakshGKfqIRfG1oykA=;
	h=To:Subject:From:Date:From;
	b=K8v5LgNgM3O8TMDE4YSz/5CNM9KJYnL6HQKFE+zRmbywXWhFKFuRBc7cgN3xmyHx0
	 BcXD2YZ0C+S534vN/tP6NgerMZwfe94XahGLgEAI2uJZsvQ2aJh5AClpsqu9pdzz4s
	 TJEh1KQJT2X3mlO36NK9ZcADEVQjQvO6Up6eHTe9Svu3Ffo4Ztr/ccQg4yVSZAw51E
	 DeG8LlPTiWdhvuCln5ed/CZ1jHI8N6PsUzegVwNfg56iViyy2ssE/vSfxMNqP8ojQ1
	 XbiTQipJX5w+9TDbte9WJU4cevC92Q1QtJjog5k2/v+EYb1NTCuxV/xhCrN7mVYiR8
	 H5ekVH9ag0JLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F4FEA3F13
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177071003358.27944.7893322121213405527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d005fcb80f7233bfa733521b001484de84ae6c533c9e9b712a0040f0e91ef09
Date: Tue, 10 Feb 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770710033
