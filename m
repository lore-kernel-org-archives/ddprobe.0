Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E62213D886
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 22:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783204114; cv=none; b=NiqaVMaph5E0Tzxs+IDKj9cN+WvcaCUlmOFjkA1ip1S2t6qxNlF0Bjyj4fj4bs0M7Kolm1hNAFUmnt0yOg1R5c0dQZpXfIHRVdnq0tCH3lo4a1117BUXyy/XEQz/UczoJAce3JgzSzT381G3DJ6t+8SjCOjhTB85hazZpDX51/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783204114; c=relaxed/simple;
	bh=Htx8C/llIAXuygQGRJmBmA9v/f9FXWguMxyHVGGPPsI=;
	h=To:Subject:From:Message-Id:Date; b=fwBxWYKighPQ51V9RL9h/QkqxcloZXh9nH79FApRMkdPZak6P8kwFgumBXp/VbqUBZ3mY+RsfuxEeXzyX7xHiqq/6BKEki/GWRQLIbLtk0PH9KVOjX/Tx2XnlAp04PYvJp8oROzc8SzQaMQL6eNihAjvOXvvKOtp7Cx5OGYcNts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hvmhw+kQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hvmhw+kQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D43D7C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 22:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783204113;
	bh=Htx8C/llIAXuygQGRJmBmA9v/f9FXWguMxyHVGGPPsI=;
	h=To:Subject:From:Date:From;
	b=Hvmhw+kQN8gwrgxwsjDasVYFiO2yYUIzPBd+/zqT/hu4zsVst9NAdoNhoq8aG9gGR
	 oUevqQfOJ5bTFejycd/0RKlEOvatgGKTO+j0wdyhIDsEo/FOPTZs9wtRpKog/BD6U+
	 NvWAdBmiJW9w5lU0dSfO8LgKFALe4uaBfLUfs37cMuq5BN9OOktHer6UqGrgrC7lWv
	 qnYxVrA2zviK8AeehI2e3UoK78zV4A0rKWwb2g3Ero5UoOql1TuCjvc//e4W9V8K3F
	 +3qgHcYsxouUF9N3rs1UUFo5Cm86va2h1g4R19MWfUlJyduBE7FgoyVLviQdabmk3T
	 pRe3ykXhss4oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB425C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 22:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178320411368.24425.2536035440655536858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a8796a5f6f0b868bdf09d10efc0d1dafccd68f6eb5e2ea06819f5557438ae6b
Date: Sat, 04 Jul 2026 22:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783204113
