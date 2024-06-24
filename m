Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6688F45C1C
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 22:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719269003; cv=none; b=D7t6QZk7tR50ag4ixpUj0LD+lZLA3WPcCPQjlWp3Qp5MHJxsc7iUhQC+Wqyus/J6dbb6+auRrvXRLOCLE2YOVZV8WGLTuedUUDkAqIljSgWBKefeGW7fTijNSxSLSQ0F6IfbeUaIVeoY5/7r/cih7Y6bsEQSqTJ7YnIZezhJ2u8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719269003; c=relaxed/simple;
	bh=40jc9Slk3e9gvZIcQEZhXFQeKzS5GPhNURml1FEI4Gg=;
	h=To:Subject:From:Message-Id:Date; b=CFRUYGR0i6vImVwJynLTSh7H8Knt2/RdiaC3q2lo5o5Ufuqx4zuCc70gsWMmSyCzB6IA/c93tluSxyw0cto195o83eCCHxsofQhCtxvozuefeyigtXntPoWY70ff+uMX0JULGZJkkNg76NXAoFtkAhvlf7OZtgoqNhjbrM7GUGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cc41z93I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cc41z93I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D80B4C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 22:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719269002;
	bh=40jc9Slk3e9gvZIcQEZhXFQeKzS5GPhNURml1FEI4Gg=;
	h=To:Subject:From:Date:From;
	b=Cc41z93IuoPHgPxwxbfEv2PycsUrZdfk1SrTogaibHQOzf4ZMnjV+xwzS+UhtP8dY
	 44fpD+XXGieihwUHtn4atD9H+CuX16HDa6NFZA665w60+AgTQLuLad3ieomcQOBrlY
	 1daReihPM8o52WjQvB/pdeFwxDJzZo/aCXcpRqWjGYHvtZlOfKjkOS7HpE5uLeQY9/
	 jU+k2j01hMi28Hw7sGqVeZj6loY6xEWa08VWX+rPTW0nkGS4XLiIyfyxIUWOPh7rzx
	 79F66jCIZ+7ALAnVk5uPmryYKaZu+9h7YZgLdFY04R3m1moYPJHR0PWUnJaGerE4r3
	 Tiygj7/2flMdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1EC1C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 22:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171926900276.20287.1948653374356100258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 109a10bb7429c63d3afa04980fec32c4b5cb0c0b9cd5c776c23cbe3b8f3784c5
Date: Mon, 24 Jun 2024 22:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719269002
