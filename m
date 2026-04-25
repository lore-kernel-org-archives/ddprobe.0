Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F164C97
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 19:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777145254; cv=none; b=k+bZrxKfNFy1BmQkCtuvfvn3nUjCnAuU6xOvixVnGEqbgC5uUTf+r/o9SDAdVoK7QILF+GQG1xMtcWnYzO74gU6IpioP3/FKCi6J3++rNCxE/3zg8gxKRQ+kYHawkErO/ZkDGqEc75LOaU3yEycDKQX6FZbzMPIQkG0Qae6lLM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777145254; c=relaxed/simple;
	bh=bjDbV9iaUe+mREFLwceJZAvkE1Fw2gbRVQNfSH9+CRE=;
	h=To:Subject:From:Message-Id:Date; b=tpPHEsxXbDGa9G47A9wfxTISyPaQyVWGyOnEtbwH/Cpi3WROpsyM4XiP/oQ2wts+mv7C8PQC3m3Byn57WJJpZ8hKYpt1d8OTjzJ8gw19/yWSTBm0XgFRxmknesD15zc8w2g/3kZPPiBAtscxkHodWRGTtm82djuWZr2ZVjv3DqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJ1uFygH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJ1uFygH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD1F4C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777145253;
	bh=bjDbV9iaUe+mREFLwceJZAvkE1Fw2gbRVQNfSH9+CRE=;
	h=To:Subject:From:Date:From;
	b=NJ1uFygHx170l2/AkYIBHsQwfPrUSYa2KhDap8n+gPNhInUwDd8cATYGZAFJ41msZ
	 eArzwwm2TJAdX8gE5Mz9m6c81piL4u+wZOu5naxjFkv80F9ghDu5YzVgacFsNAVsvX
	 CPptTB2OrONrp46saC1hzvrkW2KKIY2d1iWx22sSVUOf3H8C+GG0sZy9i/dblQVa2Z
	 F2wJyAUkzB4BS3h5fBoo983t1Lm9jH47dr9ruJuXTEkHRmLSL40MO/oWpeyo1c+C79
	 vkrLsLxX2mJnmoOXFz7TmVP1mQYXqnb2BI1GCHzqmAGP2YmSC80X0UFOc79HxztC7M
	 2b1yuZI5eR1+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC1BFF8860
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177714525368.19776.12998916328035171864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec7281c4d9e7088a1c87b3867b71f547c24dfa9ac995fdd039a688cd06a05463
Date: Sat, 25 Apr 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777145253
