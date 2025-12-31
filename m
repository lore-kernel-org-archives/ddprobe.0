Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02BA5280331
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767167634; cv=none; b=oKW6DoI2lBxFfG9wHMdQlXwb3tonx64VaacrvtHKfLhQwRu0zKGQ1Ebvv2W431Jsq/dihAUqrxb3UdX5cqFIH2zrkJ9IztPrmoj7mSipCRqzdE3Q+yQcnPgPaJvUAZKX7l6E5lJh/VpdnKBcx6+VHzRvCrxHhpQx9aqdaLEVoGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767167634; c=relaxed/simple;
	bh=pyKICQXjnThB+v4BegR6YEJrlz/fmrqvmupZamURkrY=;
	h=To:Subject:From:Message-Id:Date; b=aDaqt4IwRY3jvhkEzYaPItT4nUewUxC9FwLLHDKMI81AZWouL+vA0JBJo0LTxhZLnClV/PggU7TgPyHVCudjSuII4nvR8150BIk0RNSl+zPn8p2d77TIF8yu92zEdXAtWccnZu469HLdDx2Y/3XyKtolslzZ4+mx9E2RNF7NYiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KU//6c4v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KU//6c4v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7FCC113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767167633;
	bh=pyKICQXjnThB+v4BegR6YEJrlz/fmrqvmupZamURkrY=;
	h=To:Subject:From:Date:From;
	b=KU//6c4v6TnIEl/sg/EQby83SZlnJojzAl1Jl9zynO3AI68Pdc/DkDQ8orKPuWfiy
	 Nxh+UpXsLR7qwe3Rz8HMu/YpGYg3QLzPdPOeMTEj3E9kplIlzj69WxTnMU3xjMlb50
	 x6wT2ObH0hakGkjA1lCHg4996yPs+KbyFSpAcIiB1KjPRaEeKFeaf1TAjhcnHeUUr6
	 korAe/BI62WqoOvSQbyMXqQgrU8jSRjyRpeaVK0D2BOt/+Ot8eQe5v6eTDXmc1oyiR
	 HjH22BCmYw6LeicOKoCGX0uzFBWKcuPAdd+jcoRRi89tinV70bHYY5lWr83/jueqeF
	 ryelg7+y15kEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD93EE57D4
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176716763358.770.15426228258296498152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cd4717b88d21d120fb1b7de4f4784c13c24ccf0a8f07f845d189465954d95cf
Date: Wed, 31 Dec 2025 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767167633
