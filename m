Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148E63A1C9
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770693834; cv=none; b=cydSnlpnlHdvkGONlkoexsU2lv1x3hup92+XaLQ2ZwO2IN4QBn0/k0Dgyf/5Zf4WXN0uB50Yqhrq917BqjyrkFyoA39mVpdqfb1GaGC1Jdjzx1XP58F7x0/1GEKaR5t/WdLYip0LYnKrWtY06FRVmmVlszMunpC1RZj0CV7rXrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770693834; c=relaxed/simple;
	bh=CA4JZE0xJCVXZcq1ZLBOgT4RuFcJMFhGyWFvmNRAACU=;
	h=To:Subject:From:Message-Id:Date; b=QnaWGU0DZtyCOQ+a0wXFSOVGqtNymfr1DjBvVtCpVkLasUbGaoL+LvqafCu8zT0juip3PEcQrLrE9Nwps3N/M/e9jQffw1K8Eqa1H5xXC6XYD4QH6wlHsVB+BLCX52/OeC7bVGJXH8PtUW2+cRhxQ9j+gQ7tU1ZyINL+yiYgEOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXmmSIuB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXmmSIuB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C9FC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770693833;
	bh=CA4JZE0xJCVXZcq1ZLBOgT4RuFcJMFhGyWFvmNRAACU=;
	h=To:Subject:From:Date:From;
	b=CXmmSIuBA+btt2HahQklWq8IiYmQwC32i9Rfi2Z9Mt2iwPlWUjnNgT0nc5YcM4rVQ
	 w9aEx8cR/BF2U6IrJprD0LJL1BNg1Di6/DWF0BqhC5aR1rrppj+gYwvjKVuC2LAjcV
	 SHtEBCZiv3CpJe7ArB45YXimT4XB3i1DM+2MHY/5EpqBM/am1qfp5yXyvsfDMiJ8P6
	 /AIK0YuXDI4UE9iaY7Nwohxy31+0NgeKAtX82BfyfkHQIm8RVeEcrOu7rgVgi93zGV
	 Q1MRhfSggn+O/Q9wE/H0taG4VVNQ1CTLK54sxq7ulkIMvw4vorpE5cjGIOTJlMc8dR
	 RlgraKhOqusgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6A2E9463A
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177069383363.28525.2467840902065556759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 918cadceca0b285c2385123337ac23a3a1195670564c7829df01053deb55a27e
Date: Tue, 10 Feb 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770693833
