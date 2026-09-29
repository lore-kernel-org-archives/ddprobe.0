Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF0364CCDC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790671835; cv=none; b=HClwR8pgDS3cytTu2NlNfthpPBfq+noPTqEN5bJOeJOblSPy2yPghZYoi5ncV+oX6MBfHFMp1h+QDoFyorg+wM1b4xCQ85iYZGj8vHs5PdFTFaZgIeA+ycnWm45xKkENX/71aCMcd8oRuI9NoRQ8mldN6RtrABS4sO5LMP5NvEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790671835; c=relaxed/simple;
	bh=qFWJ0+Zc3Ja9SNV6FOB4k5PrhhkAhMwuER3NYnvKrtw=;
	h=To:Subject:From:Message-Id:Date; b=sMHTZ19I7vHlIcC+5gKGTOrBrpc1VczN0YlIKZI2HrDZMEJQZC8wgq+ot+JzYlxo2vwimioeQfAy1hf4shcCuJZiwJM6TL8DnEKFI7+bDO2SKCw8dRz4PlKesVQlWSPhy/ZfP1eRJrLV/l0nIsxj5Ki++8bLHU4vSY0vo48iSfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FXqO0qPO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FXqO0qPO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD46CC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790671833;
	bh=qFWJ0+Zc3Ja9SNV6FOB4k5PrhhkAhMwuER3NYnvKrtw=;
	h=To:Subject:From:Date:From;
	b=FXqO0qPOqHboY/6iP9YZKzLcpKMExf1krG4Fy4Qr/1uPd83ikgLc4uAev3+UcrXqK
	 4M0GaqmyPRSdEtJ2VkQ9cOp2xs4kifDH9Oq1JcjH7m/6tuDSCirZdq9f5YYS59QVOY
	 lbXGK+7viJX066L6VI8Wmp3AjaIvJSodqnD4lEaPZSbmjbvF4pXcM6kIZyTvSbSWPj
	 xrmt9OrrshRvuDIwffyYIdXZiWIHhCPQAt8EYTlnHBz2k4UbFQ0mdYu8P7t7ozlDCh
	 kTVj9KupoNjJtFVn5PkCgqu9UkdNnRoFDs+1FyYZMVOIChWyKEa8w3gp2/t5Xhw55B
	 wAbj+Mpn3UN/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB40CA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179067183369.10513.9392375573857718637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9805bf8ca8e6855ecfd19cb07b2c35bb17fe8cdc42cb60bc00b50cca29aa9372
Date: Tue, 29 Sep 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790671833
