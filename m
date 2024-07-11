Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514C620E3
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 06:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720678043; cv=none; b=kXicM9nwFpiTg/f75+h4cC5yviaxvD0P+kcF4epXwYBHQ/zqyBfU0Bzz8e11lhtDLJyy4tBxW+iUkx7lEnUrB+SkA23GH0Puzb8uNgjmOr4HztwxFtDTtg6rv/1m+XxTPQHctROxCvfc/Qm55K0GRXLBKGBG3ZE2q+B4M/bJ7cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720678043; c=relaxed/simple;
	bh=bbxOxk/LJlRirMnJKCN94kJBhQdZr7vQwjDBaUBzxR0=;
	h=To:Subject:From:Message-Id:Date; b=uDTRwtQlYrlMKGWW241pjxekiUaKRozqIEgZTGa8IRHBss3UthY2g/tpKD0gOoIDxCpqB8rx9pCxN4jWIghgnKVwEo93GIgMwNqJtwobxNu3Xu/A+E9mqU9Kur9kh19X1O5PBn289oz1IeVb9PuT6n2FafO7FdnfIE1eMb/vbz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KPE8mG+Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KPE8mG+Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC43C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 06:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720678042;
	bh=bbxOxk/LJlRirMnJKCN94kJBhQdZr7vQwjDBaUBzxR0=;
	h=To:Subject:From:Date:From;
	b=KPE8mG+YJ1Z7xQhwGqJ4FcmZQNAEB10uDs3fbyCSyukx+/B+P7x8MBUFheKzE4F/m
	 OsA8C5SWj7izEqEZW6DeRC9odqfP8uF33/j8Y/MqoxNK1uBrTv1VtuYDysU/PDg0Z1
	 5UHTUCOYbfukvhjJQjP8yGH7YSG3Z46CbBEHmfScBZgSWus80nCTu6eTsnVQ8xVSKq
	 xUvtC53SFVFuDPs/NCgtccpCoewxKKXudnGmEu6eKQ10nj8xfVZxDBElxvMp0zzwP6
	 mmVs4QpCnEB/KS74y6eLcIh0Kcv1nd33JOTFQ/SQos3rtK8x2bIYJwUuhvI4O6B1BF
	 K95+kwk3A800w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC98C3271E
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 06:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172067804276.24425.8083140176782106662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6941adf1789445cf6d4e52118659cb3509ac77abecdb6acdb9c90fd38141da2b
Date: Thu, 11 Jul 2024 06:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720678042
