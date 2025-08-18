Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2921F37D3
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755493794; cv=none; b=hApD0G941n/cXtgL8glIc7aG8QnDCCIqZ3vWczCJlcUetcKyLsnqltxwRwljAvfscTNEpPJVjbKm28EvHDVmwljKLm2LhPXDiPW0tA7zes1pkRHRl5RjB+AePGmPgeyQWTn20xt63M2ZWer7ZwBr/WhbPTlp2mc2vlsv3ABRtXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755493794; c=relaxed/simple;
	bh=e7zOKOCOqUANsBjK80jRQ0D/xbWGJQGxmDuKlIQDd4I=;
	h=To:Subject:From:Message-Id:Date; b=HHpdYaN1xOzS6Zvk0HmXPe6ZZK87r/A7TaFbw9vMfppr8MtSpPe64JmQWsKH1XAdrxPlXmpqC1yCZvYKbQAJjfzXGa+h8yqlK3zo2Ogku1LB4VihmkGibon8MFAt4m4OG6i12ldV6dw4CGh6kFCKvJcyeSSy0oEQZs4mASTtZ0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PMzBX9Ps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PMzBX9Ps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A1CC116C6
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755493793;
	bh=e7zOKOCOqUANsBjK80jRQ0D/xbWGJQGxmDuKlIQDd4I=;
	h=To:Subject:From:Date:From;
	b=PMzBX9PsZgGDc+scCIIJ1ea4asaNyiGW0lxI/FEu6DfnvuNhFBU+RRdjc7jBdGW3m
	 iG2TXrIt148qw7eScRhSlBOE0xMgh9cSE1JHR8cPfrWyQsuJnhaIj+Z2j6x5XeLapj
	 XyyOPUqV5AjqZ6SDgVgpv7nXdal10bsxxm8qxhhMzz2NeXyJjdMG7wfOt1dGvEV0Rx
	 ocKw14ICTLoFurbZUzRyUlDOcJ9qv2Zvu33EEv0b6smjAWs0MnVM9kI1MlQAGbPEq6
	 yebjgN7pizl2FZ0nVX2U5g9ZaHwgso0IgpH+29QKou1biSWxP4zj06hzzHuxXbyBO/
	 weRbfVXidP2dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0E6CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175549379357.22867.7876051847477534042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cdd260e46e6f63b856476231ae462c55025513c2012949b3596121e51f5f846
Date: Mon, 18 Aug 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755493793
