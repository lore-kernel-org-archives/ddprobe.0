Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5138A152190
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 11:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714735343; cv=none; b=BgUijjYXpt4zQGqo859T3SHpMCQP1aEec1ZXzwK3z/VPcDJjFeJ3/YqeJd+5HWkqcBOfV9iC+p7fdV4U4QhTkGGKNcEd/IGawIgoyRQywZ03umuzRExn4yN4bteEmCCqcONR/W4ziIROYB0YBM9j73w0hvrgXuSHBMwzg1K+33g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714735343; c=relaxed/simple;
	bh=mW1j9OPhpHX0IyrydVLegk7N/rjF9wvCJjT3p320veo=;
	h=To:Subject:From:Message-Id:Date; b=mp6NFyt4JHOqgfjOvaCGvQgUHfhuoaZUuAktdaDLe9RIKmHUl2o3A/fP8hlg0oOf6orhkV9A4QGyU/tZ/VAkTiGM+KvUGpXnEGFPZDpDiZqx1qiQDvV3FvibNqdy0kfWYzplwWaqTaUeAU/oKWnQLKdMI9e4yl6J2ra2uZIRCnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kz4uyg3s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kz4uyg3s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E39D3C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 11:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714735342;
	bh=mW1j9OPhpHX0IyrydVLegk7N/rjF9wvCJjT3p320veo=;
	h=To:Subject:From:Date:From;
	b=kz4uyg3srSDMQIDu1YSQKC0cbvS3eya57EVtRViU1YClqi9OB4ua3c6aVp5jYU8+G
	 ALmYhomAhhncJOf4Wkke1mf+yPdjH+FhmXfZCeDvvf3fUxNeR9pmBocCe+XvatMX6r
	 /S2Uc6yupHmMisJFaBeR+wdO1nlER3WeLUGGKraSqa+t8vue0LGOLHH1P2XjGeoDNU
	 do/IWt/CNKAV3Kc2DupLnvGjT8Q6VmWhoAMRr05dY4reFp3dTAB3ity4d5kXYeh6XH
	 skZkUJwQX1/vH1atf7T6eGlZwqq27Z75XL4OkFBVRgXz0XCFEpUCJecm8CJTpSZw4Y
	 Ef7MBLml3cgKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C948DC4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 11:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171473534277.28315.3998877027429733960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a61b9217b64ceb1a42e1e784309083d0b37ced0a0682cd7c656a56d85f216a67
Date: Fri, 03 May 2024 11:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714735342
