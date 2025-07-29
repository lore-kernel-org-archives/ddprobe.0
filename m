Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2A527CCF2
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753788594; cv=none; b=DDN9/eb03QspK1L+P9UmVhtyMbmeNZp4dKLHQswcykGffrWMMQ8TNLgx2/l9wHbS+9rTxJ39ATFjy+o/6+p+ZrLTd8Oml+gAGS5V5/Z/qVuM5ReciowmIIZlDYZCuWnLzpt9fUjdeEcKkXSd2dmf+HaMyfqdXq1WnVBMEbhUnM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753788594; c=relaxed/simple;
	bh=g/AK5s/Sj0VG0DP4CtlKB/xXy2eG5KgobRknzKz6CqA=;
	h=To:Subject:From:Message-Id:Date; b=b57gwGOWoDhPTB/53eSTila7/2KjlaQigDYVKuFGKGok/qQB+TAMQ97c0Yc4E4SOqISpvQiZumkefgt+5Fi8WrmoTBfsMEBVZvwu8rxXIPj2ubnSfjMbuubC8s20D4F4oquX1/h3ppsKGgjsE4BpHjaZ1XwC7c2UkvT+5N8c9FE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g405ik+7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g405ik+7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4318C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753788593;
	bh=g/AK5s/Sj0VG0DP4CtlKB/xXy2eG5KgobRknzKz6CqA=;
	h=To:Subject:From:Date:From;
	b=g405ik+7zbOSqMukq133IpJ6qMeS9GXIiFuBhOYTcTyVA7CaTozSaFtN5A8Rf650v
	 3SIjeIJicBvvmmNDkzJ5FxeOyFI9YjWtsklpluThDBrdhbHcgx2LigACeoN5tgBsRx
	 lqjvsgVqz4KfXUKkhBy/sSQVTLITEMq3pqctMDbEB0Dzz0Ps/6XwBIJRYTkH+1z6S2
	 959ztKSIci0Emo2AxF6gpfoL8a72+PoNq9788HxfgUJVAL9FzcYMJJn+uL8ayR+FpY
	 1LkWmO77oazs1mRg/QNatUvfgSiOih8+vbrfey4ohY1tgFjzO8ACIwg8i7bYY2zUq9
	 BhoPSVpzl/OAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94171C87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175378859357.26126.17201533860743477700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3879eecaa1615896cce61ebae4b5e47b52afdc80a477a59dd100d5bd38c1c588
Date: Tue, 29 Jul 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753788593
