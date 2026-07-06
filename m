Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B183A8747
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 02:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783305514; cv=none; b=jbd2wl1sTVra2JP97iDrE2XjRrmhuU3FLwkRWHM+s3DcoVFIVFnkmuqqkCpczzN22PRADbNo1BtDtvKCMURubAhospW8YMdBcOYVu/NSNW97el0uXBNipWLE/+8EZek3+ABqexSCXVB1XY9pw4SWpRhHwpwM6HNX7yuKHJOckzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783305514; c=relaxed/simple;
	bh=vRTdipSRfJjBuVeATQBZeCcf6Sx0DHuqA7COnbsE3Zw=;
	h=To:Subject:From:Message-Id:Date; b=F3vBnSEhyttnv8Wmt9BRbvXhpfPVc3kzq8RyxrO/8fLMmsOeHaEBcwjFY+FGPjs5w7lwyFWzI7QTf+HLt0FHb5NgGvAInKYBe6EVnR0EnVoXou3h+e1yYJro8RRhrkyRIJU7mHJzKiYlNJT6hGf0j5hXx9SsS7MpHgR3x2WtGNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qEuMxjUb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qEuMxjUb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4287C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 02:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783305513;
	bh=vRTdipSRfJjBuVeATQBZeCcf6Sx0DHuqA7COnbsE3Zw=;
	h=To:Subject:From:Date:From;
	b=qEuMxjUbb3iMWZigbqw94jU4h0DinYyTBAXyzDmXAFJIHLjhA9uZINbomGYHH8iui
	 yw1d9vtbiBdAg5d65z4nT+Dz+YoseL8UvMAuhb2CVD6+Q68mwJn2OQMbA2B5RRncsu
	 PS7/f0bKjdSMyiywOfU6+h0IgYpqU4Sft6z0pulOEL5zQZwMwMeTRkfS0AVqdP51yG
	 xkRi7ES2U5d6pl0xGmvr+NSqn6yXES49+Afo5u1g7ow/5kIm1yiVIsPKrm20v7S9KD
	 Xjy09ygdO5BTsqyI9b4hFMsDgS1EKC+LitApIE7sqJAPiWYaLtczVd7OJ8FVUdoQUs
	 jlUp8gYLSVCCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFACAC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 02:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178330551371.17026.4038348117252183284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58f8ed01652472509e6a9c180d8f0ab5fad6b092d14a70dbeb3c93313df8d64b
Date: Mon, 06 Jul 2026 02:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783305513
