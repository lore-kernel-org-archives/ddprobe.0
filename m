Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436C521FF38
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756767594; cv=none; b=MXoEuqYC2nOpZIUk8Ic5aTPnE6ODgxIltaW3goMJ2N87A0xEJL8y/cHyntHQb6QKQtDletJkKDlUor+MjNJ28jlj26kJM1IfofBdFuTiug8L6ZuMrPIZC48sVkCe1i6wLza0qb8Tnmm/WWmINmLBBZEGUxMLJ7269+iGYj/jJpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756767594; c=relaxed/simple;
	bh=aEa0zuFgX39Gs0iMzoUF8H1KA4rN3xhQ8FbQ+3G3cmE=;
	h=To:Subject:From:Message-Id:Date; b=EKJ4ism/IRHPeIwonmCdCqRICoYlZSGCDQ/nIcLGhJ8SRJw/wZqn42R3225E3BuB9knLiYglCoxSErHR57UMTqL5K+jdE2+/Y7l1XsQ4CVYwNnnURRRrRqsYx9u0kKUj+7m7NoMMqGldr/eUrQG/KAwUprdX+AAeN735e5j8bo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nyM0Zmc4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nyM0Zmc4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29DFC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756767593;
	bh=aEa0zuFgX39Gs0iMzoUF8H1KA4rN3xhQ8FbQ+3G3cmE=;
	h=To:Subject:From:Date:From;
	b=nyM0Zmc4mmAGVVx4vjuaNAmx5e8T/zA9q/6+cMah89FL9ZiZGgEC8b1gJoWCUqjZq
	 ETx9YLNr51StBeNcMCIO+D0bdaNq8vqs04kgJJCwtKCzMyw2xNidyDC7mfs0/pdM+O
	 0jp0ux3xcOuPlfCnXcF4ix4z/UbUoblijqHFbMylh8CtzIwFgEwpb4TUqwoD5CiqyA
	 5zKUWdDseM6F1SDEth3H46UBWJvOZ+2nrf3P8IyJGWZsg7WxZIPPhhYDLtt42R/8wa
	 oHlYMkB2sEOS5XAHwzzg49l+J6lDkuywqEjcn+9cqZ9jxQgVdOYr0M/PqI6MTbgahz
	 953aOlnQHpgSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1B6CA1007
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175676759357.20902.12730862958850827767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 382a26dda55477913b3e0ffc62cbd751015e7aa238f37938ab76305fd7b86d6a
Date: Mon, 01 Sep 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756767593
