Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200BFF50F
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750823994; cv=none; b=hJDXacitLQSg5BPRTc1XfgNblXCTv8eeO//bi3rwTK/8LWcKHTt23FklLpwVJ6dh11dgLQSU70W0+b0YB3YlHISr84deQ3plESVxgauLvV9l5yAtZkXAhB1HWSv20lBrFsrxpQPs9UH6/7EcxxMsG0Dvc3ejb3hrqujHoeg59ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750823994; c=relaxed/simple;
	bh=ICDJqo/wvypAMHyzE99+rC+0orTbDoqPmSdg2Xbpqf0=;
	h=To:Subject:From:Message-Id:Date; b=FOaCBvLJgmB3ZTsRxQul6Ccj7dVaAY8xjRoPr28/+ri2Yx1chATe8U3/7oKmIeLjZgZlQzr6/HxUgqDFcz84sTl51fZ6D9DAa89EDQ2dgYj6fPkIPCg7qLkLgvTLGal/VVba292DMOLU5d2TYIhstse7zJGH3vbLy3v11zf1XOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LrHSTEbX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LrHSTEbX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33E8C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750823993;
	bh=ICDJqo/wvypAMHyzE99+rC+0orTbDoqPmSdg2Xbpqf0=;
	h=To:Subject:From:Date:From;
	b=LrHSTEbXtpW6AbBpHRezJz7x4F0E7eo+ddxpTHKMhJN3qcgL7dLoig1KUuHw7ziAy
	 o8AkbcJThXqkeKuq8bmdTzpq4XttIY+pkOXINuWdfvbHXRKm4PGEg7jkUp9u5VSA65
	 H/5GDxbl5A2/myk7b/yzwjWK66XC8rrwIQyRxGeSe0Hqy9JgRDoF4FmozX/qQt9h16
	 5Gyck/rSESRpWYiCA83a71ivBp01vDyCoROCXX4Y4I/Ag8BlmsORgGzQsj9pl02YYA
	 6/Fs58WtptRd20AGbaZfB58ajE9eJ++4DQGdNHwl8zahzJzjAVKpOVBjkqmE5EFva9
	 eUh5tbSZ9rNeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDC2C7115C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175082399357.29670.11924214897480092621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dd612640012e2400cc1a1444527bd88994941cec8c626506398bbb8b47f45c3
Date: Wed, 25 Jun 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750823993
