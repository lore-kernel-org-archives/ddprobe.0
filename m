Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F907372B2F
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 16:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773591894; cv=none; b=BS/9qUIWNl3LeLaZlSnZfy2XdLERdlhgTgIj6tJsCZ0CGHQpcViOJddqFSiF8Bfw6d5A+0F66YPNipV6bPjQL+jXw6FBqxYKTQRBGwihDzANp48yEm4PHqZddtrTKRmNCbQkCO8Ar4CncjduHuq2gDgAFBeJiBllcOOpCUAsT/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773591894; c=relaxed/simple;
	bh=bEorRFv9ZTPyKd69Lv/BjuqKFWmEh8IakXrHwB4+RpQ=;
	h=To:Subject:From:Message-Id:Date; b=fzOdF1GUXiu+j/wN+5vIj1RF8TL+XIkTD40UBXuo4xHXmghG0B+bOpwM/2RrkRLVD0aylg3l0arjxw5PAyOq3xe2iZgQgOaWxxVZNkNSHhPTIyvn/eCgmWsYzfJiaHhpSKKFmdSLa6rhVF8tPWiIszW9dN5mexy/uAdcOpeELmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YNKfvdlg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YNKfvdlg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8013C19424
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773591893;
	bh=bEorRFv9ZTPyKd69Lv/BjuqKFWmEh8IakXrHwB4+RpQ=;
	h=To:Subject:From:Date:From;
	b=YNKfvdlgfrPSSAmUqC3JdMp1I9GrCeGesw8gOB6kxUT2NlHeq6ZPrOmE5snUTrwmX
	 bvz3wPgy2VTlL75K63qAzejb85v75lmBDngqiiQAacfDQHxXW4dYSjsiQe22KLSMQ2
	 aFmtxZXs4TdqYNTL4KHEM7Ws2hP8m9o8ez12MPo92hjqITGcFZBIxuEApgTozoUvHa
	 8X99BNZX/cK267gd1V9HK9VMFBvDLfkTXxFbgENKVHNguHFVDiaoRLkaxJDICYgrG2
	 dEOlbUKXFY97uuF/KyQJ0eiAK4u5CnViCXzJP909dKruCipcSFlbYtWpF4P2bETWsA
	 ySt+iStzf5EPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95334F3026D
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177359189358.18376.17495317190086535678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 620ada6ce9b37ffb142a86e0c6ede6a249c82e3d147f85c476f605c28b574c8c
Date: Sun, 15 Mar 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773591893
