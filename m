Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CDA18D636
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763000394; cv=none; b=TtwDuq56GUkoWvTrMM5gnlRPW78fTeYPSNulQeZXK/407n15576w+ovgkRcLNxBKh8nGg2DnF7HwMn2vjJ49CtvrKfNikpgU9BzkfJs1gtd4Lwu8wpzXLCw6osuMOESVwcX343pr8Ko2xlqx1mWl7+735D6f7WG2LzfIyEkWqog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763000394; c=relaxed/simple;
	bh=Q0QrCxAcYaT0NZ5BLyadJnUFP6PQLqDUsBVYhWHSwQo=;
	h=To:Subject:From:Message-Id:Date; b=s8xWPQ47YGTt0pt9q07Li9SL8zH5YO97lNmSAHy5/ieOjpTsgnmxfsOdmFk/SWX1aCGo835GBltSu6PefcVkK5DS8LOFLvnBNICwp7BX3g/OXThsJD72dl/Z8s7SozeMdxb47eRvb3maAsc6WNG05hUJf+aq83sNEc0ekMTKHkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSrLJhkB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSrLJhkB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEB1C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763000393;
	bh=Q0QrCxAcYaT0NZ5BLyadJnUFP6PQLqDUsBVYhWHSwQo=;
	h=To:Subject:From:Date:From;
	b=bSrLJhkBd09KlpOAxVmGX2Gwh0tqUDzvlJiSWLrdwKB8m3q1a4n2MTVEmwccGE04Y
	 NdxEdjgiffoX4eey29VXyG1ymwV8konWndOflGkdaJV/lh0iacbppGtWA1zJDJqT4Q
	 Oq85SMNwB4beKtpOqhAEsjpwDOA6xlTYd9310okw3GNNFMEktNJk0WUZNLGUYp3NmK
	 eqVSyA044Mv8ELAC1131R8DMSGyPIDJj4Al9OfV4jqnp+eYveKTz0aqnkgGf7Qp/Qc
	 BG2i6Bmca0eCW5QE3nhk4ciI+e0VXHfFpAEuZZchDz5YlFyHpSZNzuzVsSHEC+qNHv
	 IOYrdBtNapNYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E96CD4F37
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176300039361.2453.15090777922576694210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3556e300dcbc21ff63306a1f7c096bc3d9a6c4c1ae9f7a353b80661129604f33
Date: Thu, 13 Nov 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763000393
