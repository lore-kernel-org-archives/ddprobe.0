Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BA351FF601
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 12:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741090134; cv=none; b=GQ7ZsmpDF+nuYZ/7RJaJ7NB/eSAY8AX9eSr1vghDLlYc7UBzUbuAsgVuUfDintudBGPCFXlyW5EQExqNSkx/PJOpxB24B9qxDqF0T1gZkPEoIbR/01u6PViZkeu88Yjnunl5OTIRuqlLvIFRJp9p0O577hyV8PaNRJSSm8z+8pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741090134; c=relaxed/simple;
	bh=TUwWSe9wg9jlg5PSxLJbq/8NtL+Yae4I/X57lpaLnvM=;
	h=To:Subject:From:Message-Id:Date; b=cDGKbOaBRHMuW/64XPUy8iwUqFFnvanO7gxk19gJva/geih52DBEfFIuD0YkGYlWDaLFc60wmu47i6tmd0oCRxjB4dJKAXyrST8w+QRGN3HNeC9G2K8kVegrv+rcc/kqEQ7UHbX5gt0wT0xOPbnuwM6PEEpYXMq9ea8u8+YzHj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HfrCRXz4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HfrCRXz4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E350CC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 12:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741090134;
	bh=TUwWSe9wg9jlg5PSxLJbq/8NtL+Yae4I/X57lpaLnvM=;
	h=To:Subject:From:Date:From;
	b=HfrCRXz4zVg08Kc1vyrVtTwboimmpM/FsnMPSi2JWa7TUogcQBIB4Rp98zPpADsKl
	 IYs0cQKpujdOxIVHTJiKqi2WJ9pdKM6X4ZL571ffOedaycfEuYHCitz6WK8AD0h99y
	 e2IkLMGN6OW7MvkrZGz85gDrRdEqiCqlFKUcOiwan2s8oM/bm1GrLCyBnllCLh+09V
	 97OyZ7YzkIBBBDGiaO3bt/RDAraWUkA9NzZh0h3rBuuLAdntZtwgn53D7+U4SEVT1F
	 kJ66Jo2rSPctVcQewFaBzHrS+kH3w8JQU4Vd2qb/f2z7TPP+Bmgb6KtBoPh872t866
	 aHKmG/0a/drdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A897C021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 12:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174109013361.21688.11193057600933892403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc12cb324c2de55746e513817ed130f7b2d5ffa398b7c8426081a0fc99748284
Date: Tue, 04 Mar 2025 12:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741090133
