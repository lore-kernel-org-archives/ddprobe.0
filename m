Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 620E0839F7
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 08:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719823463; cv=none; b=MiYRs8QKBEmM+Vawm55B/CxS8mfowxRJQYHE9WAdn9bh7AKS/+/19xk59c/VNGoWHGbRLp5R3wdWB6wFW1J7otqr30EmKiqnkPPCyMyeZyLNjnNHky44ReK4dZes/1dJcHPD9nAf7C8Jf8B/+jxqxHo+oiaMZF0uBGTiR+xhreo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719823463; c=relaxed/simple;
	bh=b8GxE/aYqeIoLA92Q6ngl5o872uSYISRzxXYLeo9OzI=;
	h=To:Subject:From:Message-Id:Date; b=lXLx+qb3z3FAigqd8ZRNDLQEx5LuilvDO9fXvs4l80M45yQ5zcN+9Y6ojI58Vkh1CEU+6LHr9THfqyG1bpOO0jrClrB3def9G4nilWw5wuNUQp4B29bJ2RGmH1XwwrQPHVSVAz3DlajUZ2bcS2iz4fp8IsTwqhD++b4+mO6eFqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tbf7YS8W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tbf7YS8W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA1B6C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 08:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719823462;
	bh=b8GxE/aYqeIoLA92Q6ngl5o872uSYISRzxXYLeo9OzI=;
	h=To:Subject:From:Date:From;
	b=Tbf7YS8WHToFcGVyYGpRyL6SrXtzBUbxo0ofeFagLcFdFv4LcLQzasBvukNfImyXy
	 zuP8CZYZ1pn8X/M4HIlRG9pN8/L/odDbJqox48/oW8JO/WxwTfDqN4By3h+RB4jzP3
	 GhYmLDHnLjqqPDoLra4BCKBNqKfS5lKphuX9bLM0tbKHfzgxxxdqEiz+YEUqSegfLh
	 XDOETjcgGEZjb7ZVMrB9kcNeffIoJCPUFUlOOgWuTdAAVaChZ16Yr2Cdc6RSrvsjlX
	 iyQsfQ/opCSIW+ib3i7qVC+xHMuDQh/xX1UDnKM2GuWJukzMVvAblsBo8Gf5DWOQYj
	 UT3hncFZJ9llw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEED1C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 08:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171982346283.12626.7298662763827689454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a7f21654afdb937a962113b7c1aa3f4f534bb342242fb7cab9f95dc1ff34fae
Date: Mon, 01 Jul 2024 08:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719823462
