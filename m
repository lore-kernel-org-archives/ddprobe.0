Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C081448F2
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 16:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715703143; cv=none; b=m3+XgM0GtOmJxq+BVRG63w6/0uUGbDOTfuc2j0Y9zEIN1nQPplvlrHzMgdUqf3d/92kTm57KRBxl5LbagRlsnnNCYVaoF5OE37N1amvDDE22BMhFEoe9aeWmlJ/nAoK4umZOClPRpT+Og7gTRZbiiLHd7I56emELPHm2Z72wkvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715703143; c=relaxed/simple;
	bh=pA7U93LL5sburziAzkwc2QyiaNSe+IhMLmYWRS65B4I=;
	h=To:Subject:From:Message-Id:Date; b=cz73uFcnre0oxoOtNMLT0QHcWmjBRSY56LIhEUOqwfIX7hRqZrd9d6LmTB9RYP9C8f2wty532g/TJnbF+AuY0rZ3hNeRh9CfvmY34s4Rsf1LS9gHbk0J5j4dLo6sV62PdTXE1NrSXnpyxbi1/MopKCDOiNPmCUOBhIHUancVgYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mu2Qcywv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mu2Qcywv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF2FC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 16:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715703142;
	bh=pA7U93LL5sburziAzkwc2QyiaNSe+IhMLmYWRS65B4I=;
	h=To:Subject:From:Date:From;
	b=Mu2QcywvyNPxhwcIcTxN4ilA+8IVzAZ9styZS0oyRYHJzriQjl8HVYY2pC+kGz5Lr
	 5hsNu0LbQlhtd023CyS/69UJHpqe8Ge9TtIBWUExrLZgvewzVGlbb7VVv4lLxOj2w9
	 yk8SsxE7QlZhiomHexZQO35fHFJXwM5uc4ajBbepSEdZSquwtQZEjVnnCs6zp0n9Yk
	 6jp22vti3NYVDQCnXt+OZH/VJqtYDSf8vMVztkAU7WAqcNPX9Z3cEWbqDTg06vpVYv
	 m9Y2DZg7mEV8TCbF2bHRPq8tn8lqg+VfneAIQCdb2GECA+BuXS2NMffzF57yVhAYjw
	 EjCcDbIADhGGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD365C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 16:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171570314276.15340.3984717015704296525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c03154693710118e8a7eaaf786128d4f8e5add9883c3d60bc1a9a8fa4ef8893b
Date: Tue, 14 May 2024 16:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715703142
