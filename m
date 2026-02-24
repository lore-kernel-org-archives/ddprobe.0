Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 099AC33B95D
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771968294; cv=none; b=oJcalfHN191hYwJZZQpoL8oEuQ+PFnqqjHHQ22GBk1SExIPg95pxaTrW7++6OXpSxUIITi5UX6LSYw1PIAtkuPlYLJP8sk4HhsaYRCpZKJ4z7GoQ9gfGo8ffMQGmL8SBNpCcY6e7gmh5Yh2KoGUZlNxZ58NiPY3yI61BKe5XPMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771968294; c=relaxed/simple;
	bh=vNT00o8Z7EZw4+au5WxDuiKvsaH4UN7jIkvpFDDuM3Y=;
	h=To:Subject:From:Message-Id:Date; b=tYsJGkCTZ31paQ+V3qbq+VmglfiyhcvZbfnMX7gCNCCrTZdSImis+CYz1HRHzNsmTKWunDRcJcSE1gb7qjKr8z9P6r+sCSOi2y1yX9s3+3XWAFkCjo0rNXsgK2ONB/tBf8v1KOpwYOmv1ViP7N1YM7B6NVuSA2KcHasvwBU6ch4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnMRBgrF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnMRBgrF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48D8C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771968293;
	bh=vNT00o8Z7EZw4+au5WxDuiKvsaH4UN7jIkvpFDDuM3Y=;
	h=To:Subject:From:Date:From;
	b=jnMRBgrFoqoLu0WDyNsEsfO4atJlMwBe4REDoYfpIIV9CYSPGsA85NtqjlESJXJ0M
	 rfX3PE/FQAdhJXfvM+WL5siAuASae13CBSCl4W8P3GJpRq4eNXfIgIy29q6GqKPbWh
	 90Gyqxs2Wtp5Ti3OG9lXTY6nJJ8cyNop6GzlIub4J6bX5znLLWFF4nEpHNX9ZiwF0v
	 26OFN1/c06hV2u6DR6i39DPz7Rrd7IYGchn9D/IlWMjL5egl624veL6z9sE8IvAAtt
	 1Vydt6x67W9AmD6l/69LLyxVaxq931yTfDFas39xr3Nxyjj1A/qdoS9KId6Pgk3rXd
	 9HNwFjbl2cLyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90723F4BB8B
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177196829358.25359.8766348468335189749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 144a6e0217816b5b81fa3838eba3960a67e81e65d1a42a730473a4ce2cb2f09b
Date: Tue, 24 Feb 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771968293
