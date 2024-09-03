Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFDD1DC725
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725393954; cv=none; b=rXcGzlf3Lwqt0nz2m+cyC0BjqfkyFLU6nGh8Vl0NWB1GO8nVUxTo/vMAsyW7+I+NtJwkCKJoFi5piAmOEd6rtcXrNsaS7hEjptNB795nFdqbly4pavFWgrJsO8p3W/RPnWRyvgjfC23yqwAKD5OiyVWyP4+mAgAbzSTjINOBhvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725393954; c=relaxed/simple;
	bh=wrFAip/aJb6Nisd7UAmNoTY6ZEcYHkg83G6b6O/gxJI=;
	h=To:Subject:From:Message-Id:Date; b=jAE6X487DZpk0EP6AM0yKv6fi8RjdcRTEYj/JQJaYnPwm3tpnRruBcdfBA0YIVQPjVOVEbfWOWdUDv5YRTzyjBxZDs4lC2k3NRBDEpmND52eLcSSlEbb4G/H+Km/FItJ3wtc5iXpfLSh5DSPz8lt1XXbf/ld/84lfr2Ezka92rQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6/cXX2m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6/cXX2m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D83C4CEC9
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725393953;
	bh=wrFAip/aJb6Nisd7UAmNoTY6ZEcYHkg83G6b6O/gxJI=;
	h=To:Subject:From:Date:From;
	b=C6/cXX2mbc9KsArqN9VlE6xvJ1CANDsI5IADwt3IPl2rVGEHe5+mYOsroqE+GdAN1
	 L2w2FAqwAVNuQ38iNGeyQXS7z5Z/Ox3pZESb31DYz2wmoKnVyFuD4RnoOzkbUdENDJ
	 0w7bLjuzndv1W68sCbYOrdhP0HNg0I9zgowY7Vl6M/B55fIXhFyYQgoy4aAK2XdSkf
	 UnVP8u/7Q+cf0pnXV19v1H8fouEBnvuPUmRSt58eT7B0Sshu/0lX2HFWwwZ+7LBNV7
	 bdVdFvvWXzBbXI+/3jJsd07hr8PnUs7te9/acZzMCsTdECI6D3ddgHJZ4prJy+pnIy
	 ljdZfHgXTqZew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97264CD37AA
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172539395360.6284.15107860784901069830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd875eafa3a8b278154f7be557e329dcee123a7ba71ca19ca50cea260cd64f23
Date: Tue, 03 Sep 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725393953
