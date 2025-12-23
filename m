Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202B02D0C9F
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766506434; cv=none; b=nfCIDsNXmWDRXCb++DKAyVnVX1SuLi/fj5x9SB7a9gdyON4YOQgOWW3kvIWcbhUT/w4sJaJGDjDSpPDAsYaVIRp3m+zvIOML2vDR0blFiouedVhTd6Mb9W4AlnBW3783d3d3lJ6Ja0umwD6TOTqqmZS/yel38xkCK2wuukTgPEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766506434; c=relaxed/simple;
	bh=zyDTuNTKZ+dXwXIQ/8rA6byaYqippNkeAHGmFhpuXd0=;
	h=To:Subject:From:Message-Id:Date; b=LLIryql0PBN8in8VDLf8yn1hFkK6ipXeVNi0bQ9GrHWL9LsosrvkVlHDXcW8rjKJAHyERK1q7I6ijseTcecBgbldY9oIE8IoJY+cJLyGZskI3lr03ZphTBcYfzZJop1x4MI8stIUh+wCa9iASiBHjCwnDiJSZveq+8EDPNenVPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DuZATgd0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DuZATgd0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1889C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766506433;
	bh=zyDTuNTKZ+dXwXIQ/8rA6byaYqippNkeAHGmFhpuXd0=;
	h=To:Subject:From:Date:From;
	b=DuZATgd04y0vzHDPjW/gvScMzHH0GVkJc4Xri/1dCXW9ZFQy9iBKc19fw7U0JXdcT
	 fyNZYMy06/70QtP823HPB0lLmlRbLF1LjKAFPsV9Sin9iSWdvQofwLOxJqcDwh8J5y
	 L5oWcDRkAr5eBYaEAqlqqdvhn22pbsYJ/bFFvTSOLNlYlccfaEY+RQvc++G6FrLgLM
	 anb12uIf/hcJ9NxyEB9QNsBrTzwbkWuleHYLv7Wp9jrt1aWUHXL+2Tbyl4lBlslksc
	 igoV5TpGr5qyqTavFnj0H39/u2LjipJEAT+7WFDNg2ZRSjjJyJTDUBlBJ1alopUkbH
	 FESNTcg8NCpyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90851E6FE24
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176650643358.24224.15222195785504443509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 263c848c6e71f9e368d5ea45f5b71cfd258b08337df124f37c39615de67e4b6c
Date: Tue, 23 Dec 2025 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766506433
