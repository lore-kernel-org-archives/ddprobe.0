Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57AA72749ED
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785191434; cv=none; b=mlQWCvN6SOM+IkmOtA/58NT/3VGRHgojrSYAXf92JuPFSqhxpZryLDFT4E1U6ZWQNbevfQ9McoHS+MjQqEwAXQQNc8ERhTjsvqldL9kFaV2od+YAk2FG+kuWqBgGdFtK0sWd/g/cJ3AN9wqpgGmTBM4+lw7PFKgFL3WwlfEocN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785191434; c=relaxed/simple;
	bh=cigV0/YwpfOGdzHciMr5wcPK6yD0wQhuju5KeJA9uyU=;
	h=To:Subject:From:Message-Id:Date; b=mkpNZPMrVacKl8QFn3m26XGKx8YgxkH0iJtxJu2SD2LropucOTNcltx/l8Bx+cWKTXFmRIp/uDheecsBbk6Zc8bCNn5vADtWXb/emNio4aCLkDdYbCoC9CFm9SqeZHK/FsufxNAqq8zNW3Vczj4zHq92lL02gM6SUXqRsfEMfHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jP2n2Qwi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jP2n2Qwi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCBAEC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785191433;
	bh=cigV0/YwpfOGdzHciMr5wcPK6yD0wQhuju5KeJA9uyU=;
	h=To:Subject:From:Date:From;
	b=jP2n2QwipO29AWyRk4UZpzn/GBUuv+wu3iM3u6Xg7ecAsEbTiXk5C0ZXrKHiu1oBv
	 ZA0Fn4Imne4MzyEc8Pmvw6nyN5LQbThrMrpR/mjnW7tkD6g94X9Embi/eKNJuLxIAU
	 4aBMnko86NCcwva78cFkYO87hrOgwXb6n4e5yFnIQfLi4TH+e+IWq7UzJkWgJ2O6XF
	 NyMKkCYUDWQ7E7vu3ZJtSzxQU48fBJBzpS4c7OinXQwDbuiiicY5Od+snXCzMHJITM
	 RdTIWaA2XpMj1+tSi85eGHXD0I1eF+niCPCTZLI3MaGw380mI7eN62Lju+GjsTnlQS
	 Fdjg5yRTvgZHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B59F7C53209
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178519143373.26571.1266377104741028061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bb5b533f48b072487226d3e3b4f7ce8c25e05c15fbcab12e4edf908718ffcc6
Date: Mon, 27 Jul 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785191433
