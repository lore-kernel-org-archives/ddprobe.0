Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EDFE3A1CD
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735733154; cv=none; b=Z/98DKFlVn+joALrxbkSXJOYmJcHDFJ9L0yPRxSL6uUfpHPijYLND1T8mSQIfv6tr74mX5mQWFlvGF8hNuFm6NOcS5MA6+EWRKOy3Xqp1YwZKBJAVgcM8hamkSA4iGFryTGDCHsxGG8ZbXLQRWEaK6dBdh5d4Nk0oZvvcWNhMfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735733154; c=relaxed/simple;
	bh=8RZ2cTsmZSJ4dmcxGuHdnyH8hXYQctHhRxTjlzHOB34=;
	h=To:Subject:From:Message-Id:Date; b=RtDT7n8hkx6uNQc/OPf2SyezIY7fSgBj3lfTfNzr4n30TSKMTqWmyf4p1YmBL+iexXHoFy8BcNlFU30l/o+1Ounms+FNJPJ/o9kLNMIn0UGyUUb+Hp6eAWu9VlB6L/qtxDohNP3i7rwXUNo734m4VcvMGqnJE9X1BKR4ZTIfm0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BYDQFLGI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BYDQFLGI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4DE6C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735733153;
	bh=8RZ2cTsmZSJ4dmcxGuHdnyH8hXYQctHhRxTjlzHOB34=;
	h=To:Subject:From:Date:From;
	b=BYDQFLGItYuU0Ypld9HRhrZCIb/8OVHHD/2/cmt+6xCkjMr34hrK8C96a6ErssVah
	 A5lWzXdKtbCcaa+D0Fy5ZvHFy2uhObGiZDGvQ3IG26v4Fuv12eqTo2Z5rgurym2785
	 AtBKeg6F68T/hTg3OPgg7DW/48NcrsTiJJjbYatRuaqlSVnJNfUdXqkJlsNeStnmb5
	 77BMNPLpy/y/pkQfaDuxhtLeiFkGT3PkTuNPjML48Vqn7vHVh8REJQ8sSmieH6OuRu
	 XMkBPofFPMVkPsUJCfoT0uJ+gomRQo1mPuW/nzdPErfWikV0/nEPZN/GSTD00J67jA
	 tY9PLdMa00RQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F501E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173573315360.13262.10577943689412927046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e371359c6c41d51215c43cfa782826e85fb356cfc80f5804cd56230fc3d2a0b5
Date: Wed, 01 Jan 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735733153
