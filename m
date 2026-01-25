Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082B13FBA7
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769310834; cv=none; b=aCD35u7gdlu9G/fj20aapmY9Q/ZHscz5QRmoP4SFpoiniJEaXaVc390DMdA7KEfLXyy2vG0qQNarYQqGSOOpmkhQmaQaEYUAc6YYmMmms3ybSrYtxdHME5iAVsPr6PNK30Rxc/AIwqIzt9RmWN1H0cJtZqqZ1FuCxfBTyxxAlPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769310834; c=relaxed/simple;
	bh=/ipIdTBP3yJ5I/qfXTQS+/q/LunevPDXCT2QU5aiBSU=;
	h=To:Subject:From:Message-Id:Date; b=ScEZq24g19wDzSTGALqRlzTMpcgowKMMX5MZ8706tocewFy2cF8EQsRn/TXDkBYS1VClugvxDChCehuf9FInjzGKqnxVTGMSbA4RisrQKV4l7LIp88BMQwbayDJc10uSFqVaexxCJV1szPbV4rwB56WK2If5hmcQyewEzOO83s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpL+0vpN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpL+0vpN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A684EC116D0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769310833;
	bh=/ipIdTBP3yJ5I/qfXTQS+/q/LunevPDXCT2QU5aiBSU=;
	h=To:Subject:From:Date:From;
	b=lpL+0vpNRgRedf0pYPXro4NvYrPNgX0lXQh4wOz2MO+KRTtE44NY2fPiKyI2Oj625
	 P30DcxIMa5FH7JO94ty9WxwwHxc7F2+VA0Ax/zvC8xy+FtgncrewfgXT0U81GL/FwA
	 sr4Zx4ov7QBKssNg0Vsbt5TWrJRs5oP/4UTONPqYYGYWvdkA/Wt4UIxGv4AcgxpHKg
	 +6b0kscxDo1XZCDzTIDzBvsV7PTMv0/7+9tVO6TbvXlB5QK6Boodc6mHqjRQ5vARYR
	 8nkvVvGGj7CgcBmKOc2jcnYAnJq1McUFkXEhJCq02xWTHFDFqkD7z9tNQ1uvyowhAD
	 SfdPxnemT3OZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95664E63C82
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176931083357.17917.325658105588394124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ab43aee426a7f893746358ce9b62785f2155d9f2a320e9a56f381ac5f26d143
Date: Sun, 25 Jan 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769310833
