Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111042E427A
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750960794; cv=none; b=NoXn5mu1yFaOEZHc3qHAGwS8VO8kIJWaJatPy96UH8j7v5Lo5Kltx2uzm6KOxi+wVDg+48lZl0r6GzxW46PCnUM0XpkcZOkB7P/M8yxMYa2Z1Bk7I6/rCgHbZiOn8vCN5p2dtvM3XLpTMrSy7llY2PR5CYu++czvH2Vzt9q4YTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750960794; c=relaxed/simple;
	bh=vMSERBwFaNwgpNlZ3FH6K19lLJTRBJnOP0np26h9gBg=;
	h=To:Subject:From:Message-Id:Date; b=mxtkthLeL2ZFjdaVKntbeK7kX0nMMiD8sik0zJD3aLLJZaMnvO4mDGPb1aDiKau5aF+9XY02vD/qYSA1hlSpl/xTjbXgfo9PtDWnkTCOXH9eAst0WMa/YRsFMm59tRRangH5dHwYNCVX7OKhsDwBmydiZ3KkmoLSoqV1nvON9jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Skl6eXiw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Skl6eXiw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7096C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750960793;
	bh=vMSERBwFaNwgpNlZ3FH6K19lLJTRBJnOP0np26h9gBg=;
	h=To:Subject:From:Date:From;
	b=Skl6eXiw6025xqIhbzY0Zq3lHl2in2zAtIB/N9r2WgGk7eZTriKr8uePGwp2Z5Bl2
	 PvwZdDqGKi+w8ssJzH581JYhlJfrTirObL6hnzy+01byQ6d4Pl8UyAb+BQmpw2iVKK
	 IkIACvu3suaDCp+k7jFazLx0LrEBOcHS8s8rSwQZpW1ESdh4lHoIPehgo+sowfIUt+
	 WcFobxVqFosy+aTWpqhK9+zc/3cfLFEUw3Jfb9CLI1qLgheE1BLymEmeomOeae/Czm
	 v/svYf13bUMZ9ngjCR+Jqgx0nxhoiQ2jZjc07ZzO/OcTA5A/WPs8wVWEfc9cSjGx2K
	 dmj2uikxihTOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9511AC7EE31
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175096079360.31706.17132679900930322343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2f291a9f941bb4188d547c3b4a19a1a5cfd66ff714fd53fc23a4f0422395474
Date: Thu, 26 Jun 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750960793
