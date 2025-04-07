Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3E31494BB
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743988195; cv=none; b=LSNavWMThNytAfaDTq7SRZReKSsbz6AzGu/WYKksXUoKvFrgAeY99JjU3QBZIoO3gfBKXp/lV34yRjyM7yKe6iRE/oh8dfLwSvbPtDxmLgvpNJ00sQKHyPsstEkmsKC5fcCCGmk8AwYWtFXkSJ8h3ZOKhoX2w2vUWqPSqaKG+9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743988195; c=relaxed/simple;
	bh=fWjaMfYLLf7xbHHnfCqZ7Art2h4306qE2azq74xfk2g=;
	h=To:Subject:From:Message-Id:Date; b=hlxJ5bXnh06+Dm+mN+JMtqBMDEJRKFucjOcngRFkaETrL7xy86h1gQu9/PIZFwlG8+CH4hKp2SfYaCSQSgAb43NNMdNh9RsU3fCqxYPGnn4E12BF0COGT5jo4jG6fBa82pJrtwZUGcCIxXpwx082v2dIStPSyAWjOx338Jq8QvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCxwTF88; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCxwTF88"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B74D3C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743988193;
	bh=fWjaMfYLLf7xbHHnfCqZ7Art2h4306qE2azq74xfk2g=;
	h=To:Subject:From:Date:From;
	b=rCxwTF88BLKDKPMKOYEJc2NIF19/4T7QS7QDwgYfdovaf1UeMcDwM8oZHb5EhVr8Z
	 PwDEEytdbzXBwKetYOQNRqeMa8FbT55aD2QyVtT9TpuTcFpQef/2ZwLowVqiMuZldt
	 w3tPvBPdDsId3yFPu3G8CT1es9G0u6iYe5zWOshWHoStfVIWvGIEQjoA8IUo8MsEQm
	 TbcfXSjkg6Dg5v/cXcCCOOSMtF/31c+1eqbirgbOSas3U0akUWFSdCNm3T3k3Hx7PI
	 xM1AH4RqRCmVXd0xm5lzw9eFinMvR/s9HrPUD6w7r7Fsv1dIXg3eKlzHecTIJvi8PG
	 OwEqFf5zHH0+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9928FC36002
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174398819359.22358.14235377216183883631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d54397145edf2773249c91d72f349a8d8c55a237f2082695b4473d818faa0b75
Date: Mon, 07 Apr 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743988193
