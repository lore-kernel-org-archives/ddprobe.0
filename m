Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBDB14B940
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 15:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720191923; cv=none; b=BkrxYodpe8nfT++exP6ZpDZjhCftcaxl63YZ2iZ2GHIg8Cy6IP87s1XkBzuYMFYSQ1Vx3Q4871YENy6w3K4RTBRJtRQY6TACARQn9CVyPsXw8SZOgUPIWTB3Ev/raa9kFWP33n02ptqTUu4/5R1N7WKi/i7oGlASJP9Wj8Z2SPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720191923; c=relaxed/simple;
	bh=wRXC6GQix5tEVkRlOPyeZkGDf6unc4k+ljrmaP40Dyo=;
	h=To:Subject:From:Message-Id:Date; b=VQ8f9tZ7eO/JU11bdHMbRfC2wNi/D2UmjMrtWbu51anKnlYsbiPx6XVYMRJz86Z+jCx4W/ZYme+PKFPqhzWdiQ9geLPyQJiCjWctnNYg6p7yYIMvKvaoPSX44lPfyTXFZ/AWrN526bGjy+jyK2x2Mcp2kFppD5zK+MypgSgmxnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BsCJeotS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BsCJeotS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE0BC116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 15:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720191922;
	bh=wRXC6GQix5tEVkRlOPyeZkGDf6unc4k+ljrmaP40Dyo=;
	h=To:Subject:From:Date:From;
	b=BsCJeotSferVDkshUxuWCgSNv+OZOsE6ZSwKU1IJPWkFhZkCljqAnGKQrWCf6RErH
	 VxDbANuy9QCJ8/3Xkj2p3Yti/28okcHwlrNZRHUFPjRWHMJu0n1uWvf72L4I8b3ybx
	 lyBD0BHBcNxl92yvy91xRpQ8t9utQV0cy3Md0HNrzBIuXu4Zw40Biv+ccoQbXjjc4J
	 qOhbo3SW8CAIJa1dAbG83FnAhMKF4Xt33ESiJm3/yWLzXvOO4ydt9TTCFx2v76gOX5
	 CnTq8LfAGSAPiJ/uH1nWp1fotpNxdBMDuaD3EkUTsy9cgZz3LAd4gKX1h7XSCjUIe2
	 rQBjzlImK7mZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7603C3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 15:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172019192280.26365.9817075280762896693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1cc8f89397bb5c97aba554d25f4c473b5e840366fdd03b96d913f345ee7e437
Date: Fri, 05 Jul 2024 15:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720191922
