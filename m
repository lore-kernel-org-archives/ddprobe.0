Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4915D2D63F8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 04:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784003314; cv=none; b=CGuPvb2NV1NUMzsI9Em/2EKvg/MHhRJA2GQu9nrYpFmC7CJbw1rfcI/f5J64Ei/hasMjWuL+vrMUWjT5dM5CAi5V6wdAIEF5FJ4oufX3O/MW/+BlwH9ZW/rLd8iF8q8EQJCWdKW4EMsdD0eb8q2WPB6JVfysvXvejImh7RYBVOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784003314; c=relaxed/simple;
	bh=J0Vj+DBNgKjuFcdnUaf9O/+P6hUzmmDspRHRvFlGTdQ=;
	h=To:Subject:From:Message-Id:Date; b=sdrIus5UNieXmpE94/3m6azHQ0P0e4xEJeoA7QSw+7BkSJLDDm5dveb62FmB7Ye9Zm+Vzm8n9A9awfyVpvcM3fSifcKeN6LBjwSxQVGO8dXMW/Ff/gh0DxCiW6QLv/7LJ5EKN0rTO8vhnvC/5S2qo8l2Cqmg8fqFizKGeXFfvNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dldjIUPU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dldjIUPU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DADB2C2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 04:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784003313;
	bh=J0Vj+DBNgKjuFcdnUaf9O/+P6hUzmmDspRHRvFlGTdQ=;
	h=To:Subject:From:Date:From;
	b=dldjIUPUF5aqu5z4KvnyHZA4zWOyediKqi3KmolLxfnlhEOpkdVEwDm8qVZclbc4t
	 qMR84K8MGZZWpU3Q+quij21PyjP0zhjptQmHBXhbNxy0Rp6TfJF1vfSwKnEW5/Ftad
	 FXiC74psQQHqpUyrYERUg7J1Rjg53bywPhI9VY6493QSTkfxMAyfjDDtPqxG7s/PPR
	 EegKvOLRKOuu67hf8++zxM5GMDURG987sccOqLqkjkLtclOXLQl0gcS58+ztOoxhTg
	 4ZtNYS8ofEXZ9hyPXFbOPvPaRXhHfi04EC57gL2SMiYgm5OoP/gpF/ubTMLsfwm39U
	 95Njy2zaN/3tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6DBCC44501
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 04:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178400331373.15856.13853906869000947170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 374f5cbdd8105df37f3645fe4b4cc9799291c4fa6571d3397755614397f77e7e
Date: Tue, 14 Jul 2026 04:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784003313
