Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE3E2C21EF
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754934594; cv=none; b=UsQTYLWkx1KbCuLTBCiqlh1tPY8cgWhGiH6h0KqXI4MIo2wyd1vvpT0Ipfimo+dMj/k2eEYzLRaQr7FqYkUHkFSmddMRRe12VNsy8LKlCrPC8uVCqi6qlz3KSQYE7VCsivUbKiFknmoQeO2IbxOufuNWfCZ34SXpXjvsoIOhTDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754934594; c=relaxed/simple;
	bh=paKuLPYO9iQaKqnrK/Qphdk2O/EzGkbrZn0d5bkj6Fc=;
	h=To:Subject:From:Message-Id:Date; b=EAOF6dt5IcesVnpLnj7GPvgllmRXl+Pcw/WDTsgm03wNnQrhid/q70/DnUr/HYOTtAKJ7WrSznpVf9pZmF/q322ISpxlW0YQDzC2SWLe3FS6NyYq2+cYe5lp+HyCL5K+pyYmO4gO2UVFNIdO7YD4Cdrv/FtqL72a8XENT2nZqoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XhgwEWF0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XhgwEWF0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A091BC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754934593;
	bh=paKuLPYO9iQaKqnrK/Qphdk2O/EzGkbrZn0d5bkj6Fc=;
	h=To:Subject:From:Date:From;
	b=XhgwEWF0s0nfMv/njfuF44/AVb4INWNRh1U8cjjMcB5FDgPdEt0nSeIdJ/L9rjLzr
	 o+e71URN8DcZPitx4V7As7K+5+Fc4JR6NluQntCqrsJle55go77zSEndioRA3Im02I
	 muqJCG7aMEa9q+ZoBxvJfsEV4FfvTO0nuZr2Ej6skyqp+0Fr+drmTlXC5vTa3ggsbs
	 RLhgEJxSkZ/JBrQ7euYaL56jE5/qvZ11gIEVdi9LBUDvFlzVXVYXbSdXrNqw6p9p7b
	 c/8KxPB+7FRvaYPgMkIzscWlBClXbDn7+mwbU7gncE5EC/EK6fu99UYMmqYgOO95gD
	 5fObYoV0Fgg+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F94FCA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175493459358.17605.17540777381132126095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f886ef062b3de2ffad6d03c0948d5696a20085b65a99069bd9b7e910db18e1ba
Date: Mon, 11 Aug 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754934593
