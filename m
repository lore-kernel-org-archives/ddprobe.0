Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3120FBA3D
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 03:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782704914; cv=none; b=Lo+5fHL/fsX+WR5EV+TQKjrHTpkH6Ic/7skmakvhrVec/1GUVnryjDs3MG8Mstl/JXc1AWoctzwdXPP4nG1oMmKnqE5U+SCvmNrmHRKdicif+sOCqrWsDgrMnuRobm0Trzd7dVXCWfWzxrEkUdcjiKHGE8Vk5czDdQYYScHPDEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782704914; c=relaxed/simple;
	bh=T0zCV6332FL4Tc+LlBSV5MioViL0YF5l5Yu2rMqBnUs=;
	h=To:Subject:From:Message-Id:Date; b=QhQ2B/BolrNqqfZsGUj8vMurNRBm9db2tzmZ5zGZXgHd/NJ2SSZv/10mrU9QjYdvQICry7iNuPx0ti1/MrZkJOGgIuL7TQI4+X8Z9CAdc1uyxBLRqyKYfwjaiQ6J9U5I+hA6B8nyiSG7IkZpjWlBKA1QRcdkr1xbb/ROQaz2p7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZiPqLPR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZiPqLPR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E47C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 03:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782704913;
	bh=T0zCV6332FL4Tc+LlBSV5MioViL0YF5l5Yu2rMqBnUs=;
	h=To:Subject:From:Date:From;
	b=oZiPqLPRylLckh8plAsmghJY1FNbYCXl08+c/BJkpmh6enVWXhCL4f7Ev45bcPoGI
	 pZALpiR/mj862QWXbqgjsfWroq6P8oNqDQNlJ1/OVyhsBtROXUNfpTCuyR668oUNvb
	 RgbnoSW/NAru06L7uTR4MeKPw0qATuHi87SHABCgHpreauaVELFGC9GKxa+LIQ5TrZ
	 nl7tCnAWWC8Reo418FijjXFRdMpHD9w8X5IMsoADZJEwcRvQs5PgHVzANYVwX8NGuw
	 Byr1XiLsK6gemk6umADielttv0k+HXJCzBT9GyoNZx51ekTL7We6QeZt22HqEmozKH
	 HfUpvHuN0abig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8197C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 03:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178270491368.21457.13777085076665425815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44903d58767150c11a4dd8c6abdb31f68dabc0795033a6864d437a5475bbea7e
Date: Mon, 29 Jun 2026 03:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782704913
