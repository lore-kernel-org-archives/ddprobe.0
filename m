Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB5684FECD2
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788465635; cv=none; b=Y4UCCCH6UDBgnLwVZtFTKu28dMJsDBrqS4IoxBeCn1pMCn0dTiVKcgkwXUu4Ozf4dAOgqFlIZ6HiwJGa2sRrIxxfthSwvRZIR9y1HS4Uo5t3TVKbxB1BDb5JIwo4d7QAxmQ+DqyEvc7ZEfHsv+BhIbYGaz5gJjWlVxV8bSEt/Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788465635; c=relaxed/simple;
	bh=yNN51YbcIet+rmFiPGqm2C7N3y8MlBptghRz+qtDsWo=;
	h=To:Subject:From:Message-Id:Date; b=fFLG6oF47JQuCRHWsgkTdKvmEShZjQhI9a3HG4q3rd+Ki3FeJaU2j9gkBNJTm3AN4zC+VI8nZv73CJj0R/myzIM4EHQ8Tsvmgd47FqVrAnhAOj/oYbBFstbpcFEIJKPCFSSDmixD2GO3NZmhbWtUnwLrufQQtGhVrdyfd7nTf4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NIlCzf6l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIlCzf6l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FF1C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788465633;
	bh=yNN51YbcIet+rmFiPGqm2C7N3y8MlBptghRz+qtDsWo=;
	h=To:Subject:From:Date:From;
	b=NIlCzf6lZZtdPwF9nwncKpWVuM1U4isKoqIhvv9css8UcRFLfcTNr1vFLYyi/9QMo
	 LFNqd9lQYKMI1C58KjNwiIkygOLx/PDbTT0QolAOzpHpCY5HDEtoFhaIp8gBs7QNkN
	 2J+/+GTR+BlO11co2zgth3LVspqZmAtThAPIUMkoQgjpSzdgHRlyguZj4hjX9dXxsG
	 OZvCO0VBSh/dh5s+CBoROPjv75Hb3o5Lh0XMsmrk+AHpOmf/tZ7bzpGrfCfWXeXecN
	 /SibzjWp1fHjR5TSt5GT9ZE5I4gfjdREKKxV/4EBypzFR8Gg1rwPzM7Zf9QJvJ/2KU
	 q0o5pJepTS+Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06BBC624DE
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178846563369.22214.4791359755785327272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d8355c554fb330aee3a3b55255921a56376dcb8c23be9a79b2eec82fa7d7a2e
Date: Thu, 03 Sep 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788465633
