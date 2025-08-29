Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BABB1DE2DC
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756427394; cv=none; b=QQADZctKEVuiji2qcjoi246ZI3bt6mYOrExDYfLvDGE7nMviBLxSYXfZgGJylLhZWE3+zKaedweUAqhzl0VQTk0isouGoLDsl2hJ40ASpR9n1rmSCclkoByDnT/b6lCG774m1O5dACh71M1qLnwF9p00CwniZdltMXKgT75tBHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756427394; c=relaxed/simple;
	bh=UjlqW5l7Sm69finLjYRYJO+rgK0csNsvwcwGoaZm3lo=;
	h=To:Subject:From:Message-Id:Date; b=IaZBdxeuGLRA3K+qLtbamNK263XBi9D+sagPVzRLt9tz5CFulXvJ2K5vN2vAD3nmgs7br7TU0kRbLDOt7QOuYwkkuD2MRvB9BmZduQx5+8BXdPxAr6LMpEHhNSWmg/PNYVoHZP5awab5K9zgcz/R2wWcmCVdrcDCx7iKWGJ4giI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQ40mKFD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQ40mKFD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A7AC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756427393;
	bh=UjlqW5l7Sm69finLjYRYJO+rgK0csNsvwcwGoaZm3lo=;
	h=To:Subject:From:Date:From;
	b=fQ40mKFDVFT8FI+KZ47SRGLHcKiYuxcT2b3jxlgOWQKDC+9iL5iMruU6IN7Zs60vd
	 +h8Q0GeHV9M+CXe9U/zJSXwtWgVB5SZlRWw56SgoKBOP+9Nx2SXOb1uyl5v/ZWGQ2/
	 hVdKla3NceMHEJ+DPtxyD/dffgf/55SeQ9lehXeKDaDLoeI6uHulHM17FQ+8dFQ/OH
	 D335hsA2ysGUpUQAt2Gg6qb4t69gH8QM7iWHs85XnO6pxO0oF0JTUmy4YEw91iB31o
	 praGhEEOSO1Vsxkw9Cjq45+v3CnvUi0rj62/lrl9RO3uIOr3RGsO8AES1Qs3EzmQGD
	 FnExTcuRV1mPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957C1CA0FF6
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175642739360.20259.1227313006452887251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ed95eebf4a7202b46240dc6231db086c6dbdf13f83e5d8432c6dfc62b8e1f7e
Date: Fri, 29 Aug 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756427393
