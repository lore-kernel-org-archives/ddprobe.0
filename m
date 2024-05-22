Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E781411EB
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 16:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716396203; cv=none; b=XjQkieEFqCs3DNUGhsuMB5+zgV528YsgKGhGLYmzdk2dYMWlQNDtXi99JHbpYiLPMyXnGvSQfrWV6kwB2+6LqsypiTn3OyQC+G3jFUKX3pWZJbQ+SsWOswBKiuNn4QjYPrY21i5MAQ4ch1rj74S+RoquiQLAR5bmo7dwNmRxaJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716396203; c=relaxed/simple;
	bh=c34qqzqZ8tWkszIMDQW7S935yEFgI5HRQ+7yxNjgKno=;
	h=To:Subject:From:Message-Id:Date; b=YN8TZTN84U9CvH71ZFe1iWNu6ZvoQWlj9M9AVG87Ix+eBs743LSDDfigPRSC+qrdv60aHDK7VQ4F0T2XoXYjdcSo25ZU+00v6k06oYBWkHTM7L5+sOM1i7Lda0b/+FJGVjvB6p42I7XlGyQhjWqASv1amwWzCU854Twp15SnCWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YoCF4MWf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YoCF4MWf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FF9C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 16:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716396202;
	bh=c34qqzqZ8tWkszIMDQW7S935yEFgI5HRQ+7yxNjgKno=;
	h=To:Subject:From:Date:From;
	b=YoCF4MWfbmhvX+W6uM+kMtBl/uGuQDTdOpN7ORpslWni9dY/NHcoMCY3J3A8O78xm
	 BCFwHZT2Lh6dQAM+20V86WTn20+o+IWQkDfyTB3YNJEsIHMkp5DSRcQi9wgbHUDSA6
	 DtWVo4LhQnI1935p2XE5l41/r6oHJdA6VrZ/SSU95FK4UmcVfCsUMps1Nbd4g1B/ec
	 ZgeEYdZ1tAq3fSqY8dO9icRfHQTAFllFosEn34oncY3HuyzjfzVVuiheRG1w5LZI8q
	 9bULNGWxxcrQ9t9sOrZgDpZ1BeiiEtjRCU1Wc+MSEtktaT0fNhM75fv88T8eblmhbQ
	 5mvq2RwDP3wOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0977C25B79
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 16:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171639620278.6930.16750313579504770947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17b9d9f78c2330a4e3af0d9c087a977b56443b6ce8a122af7124a3fc4a960255
Date: Wed, 22 May 2024 16:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716396202
