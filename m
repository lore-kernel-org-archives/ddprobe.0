Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B3B16F282
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742879994; cv=none; b=Vjh7PKX7o838DjujFl5ckBwYLpI/ODgO7uo4CEb1H5M14eeuAh0GjhEU68rmShWR+XzVfHH223TlEJmOptp0zgQOApgGGpSp0MYR1ha3m3IvxH771TsgB3QU6EsYmZ8SUuS5lZ0HZZSsCAXyE1SwS1pMxvNb5vvp1oCY0LYbQJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742879994; c=relaxed/simple;
	bh=q1wJn6U3CkWclyB6sGUl3VkDxcQ2skmqzJDaZTDFSXA=;
	h=To:Subject:From:Message-Id:Date; b=pcIOsmNJ+XLzEHQRyQxjtJmNt7lU8iSjVbtymZkIU1sYHt4A7+0usbUSgI4ho2ugJ5duACkV+D3Or+VYTPGAgCeqMmgzLl+e0fgL3NpZ4t33/26XP1eaBhCPmym5mG7+rI+VQgmqiRrFfJWx2AMXC71N0tOonenKtz8GM7Jr/BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ifMRM7hs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ifMRM7hs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F5DC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742879993;
	bh=q1wJn6U3CkWclyB6sGUl3VkDxcQ2skmqzJDaZTDFSXA=;
	h=To:Subject:From:Date:From;
	b=ifMRM7hsapcJ916TN6yxzpSOLr3ao/Sw0dkXc7fu39+U1lUGiQCuqjMoQQQUZ2XoK
	 Q+AOuMo07owNZWorxKb6mTToqqrhanpYJYBzSrcLwghjdwhCAkYmfThHF/muaqpeBo
	 uqexeZc2dqlypvi5+kuBGGJU9Iw3m8bSaCtqNw7zYBPM6wMn2CZpdcUBe7Zahx6ffi
	 qKJmYFx5xB04zSkfzD7tJIX//+gEjb1ACTbRl3EbM/pBA+RTfgjBgvcKLkOsA8yaNO
	 /sYEVlNYxn+bvV6ofSQloOeGBUdJyICrEte02Mrp4lFrIadk7a9Chr7KZQdcZhM0n2
	 7XuuvTtgFrrUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7860C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174287999362.4861.9242481370232685441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7debb2ab14db11f1b176edd8f043e1d40ad82527191c3fef79de7ff9e25ddd24
Date: Tue, 25 Mar 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742879993
