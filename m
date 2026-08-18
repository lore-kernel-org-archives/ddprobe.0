Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 553E1282F0E
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787031634; cv=none; b=J+uNxm0RbiuGXYX0IWiiTSOFErKI+xQGWyeMn7x1CbO9bQkRbkFepM6jqf2CjWoED8PaNlKmNUVgDcDwVPUDCa3tHOTT7+azE1PMRq2AzmgxMgg8UqRYs5or0cHVZdxifGSgKh8oq6CBvyp1h4G6tKYiFVPAcMLAYbBhKQac3w8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787031634; c=relaxed/simple;
	bh=EoSw9QQ7hmfZqW1kDgUJLHO19Ej73EFSddnX8fB7r5w=;
	h=To:Subject:From:Message-Id:Date; b=D2SalKS+Kw/KPjgps36HAxsYJjVsq5+p/xh8hrWCXYE/tUE/6JVMwopRg0abrcAmtn1fiYAA6Ky1UJux7L5bOm9mwGU42W0ZsF0+GwzUM5kO7nxc6OZt9A1vzbzxFJiUVEWUyeCBhj9xn7Uum3hmgqsrGhcdqocKWuNMK+MCHN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DwdwktR/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DwdwktR/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE78C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787031633;
	bh=EoSw9QQ7hmfZqW1kDgUJLHO19Ej73EFSddnX8fB7r5w=;
	h=To:Subject:From:Date:From;
	b=DwdwktR/vSiRwA9jcuV5gtWHeY7KDXZ0n2hueMv/repfnY1HmgvugrqTxv46RSdm7
	 +Wgr0LDJzqzbqqZC0v04yQvI/PnHpPzYhHYwvINSmeIqUi4RaXnesg//YaSZP463r7
	 RjJK4YyRn6zbNgBH5mCYTZKZiUQMjFCaIQy2r87D3eNJ7yxTec8wtFez9SdeY5jSqr
	 zJErbeBKx5ingsSTBs9wOIbCW6Svy338BS0vSSLIpdoOR4+0MUYLNDmhu3eU/4m+3i
	 A2OQlALE1WQzg0BEm9vI9QDfTxgCDuEJIJcxGGIx7iiJsW4JPnBNf8zYLp+0VjEL0K
	 1asDzV24qiK6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CF6C5DF70
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178703163368.30231.576352058835202970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 691fa7d703799c9d68228fd630afb1d66a991b6e20d1e6edf6c9bd605f5e1e45
Date: Tue, 18 Aug 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787031633
