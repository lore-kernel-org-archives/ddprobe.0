Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2593B1F4C87
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759424394; cv=none; b=Me/dTJUvjZl4SV7mJojGBF65nI4whY3VeAHB/Hu1/NzLnRuq/UfuvGHCvaq9eLtxQsCljd/t5OPJ1b1jT3rXMevnVfR5hjxOLggR+oMkEiYTA/AhH+mAdR+7EOiA3zEtifguxI1RLLX57HaBVdoff5s2e2t9KVgDGspQ7nViOHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759424394; c=relaxed/simple;
	bh=LY/anx9PtUAUVWCSN9Hewa2kOJ45sNmlRwMrfC/DLxk=;
	h=To:Subject:From:Message-Id:Date; b=FozX5r96fbdcNFmYHfLIQDmknzoy2DRPuMEggeAIPMHtB1QBHAWYlR5GxL14yVDTeQJnMTCqffgJT8iwnV3FCcfU0E6ckfo8I7dRJgw1Y1r3fas+e2oBUOWngRE/rM9tF76TuImnQ/r22vhMNjUecQVtnH4VnAQkyOWRRgjHsk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=amCBqwJO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="amCBqwJO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86F4C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759424393;
	bh=LY/anx9PtUAUVWCSN9Hewa2kOJ45sNmlRwMrfC/DLxk=;
	h=To:Subject:From:Date:From;
	b=amCBqwJO4w1v4vRnd8AkA23uiuIUFK8IMEENp2HdBEINQ7jVIH1T8n48lPWy43C3a
	 4yxKgShezcp1holyzvIdpVEBfupBZJ5hjg6vm1+MQKJMRlW2TNHs1Swr3UfQsgZhiz
	 FZywEtgBka52EPmtOt+zWPeRFmmU0DMtPFO4kJIrKw8G5Mk6e8S+mNWuQBv1XiLS5z
	 nGxyfNPhZs61CE2H2OOe8lCNGhirwHIZgSLNZUklDnXIV7l1Mxml242M3wG1hL3Hyx
	 MFGbCiW+9Q3foSVdlYvaxogwPwRr3bdaWB/3vJWuRPqdTK35bpAAER55fadwY+uYMU
	 f9fuQ7AwjWgIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C9ACAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175942439358.18810.17360473216931755317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bf001fc9f4cd5894577be6f02ce9ae06679bf471f5dd8fab157708cfafc65e2
Date: Thu, 02 Oct 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759424393
