Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D3C25F99D
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744092594; cv=none; b=M+vDjrZJlQUo14Bd8Gm5VcBmHqL4uOcVrFq9/x60CDjmMV1nhrWbhSmFKplviaNMonFBY9U5wzgt4+GwJQ7bUFtdCZFD2HuWLFfXQO2Bu9n/jG5sqw6l1b3vl4Z6uTxEo1zt0SrJnDvWo0DaeXNrSGonvFGjhV1cPEBb9JzkQe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744092594; c=relaxed/simple;
	bh=1YTNO4Y8REgsF8zSmuSg4j78g78xccG+P6Za+xQXPaw=;
	h=To:Subject:From:Message-Id:Date; b=gMgr4empPWPcoK9HdTgBAhn0K+mg38G0CMwCpLSTyx+AXG3Gu5Fp3h6QdnKMGSJYqm2JPb2LVTbrsT/WoKckX2KVpU+rxLR8gyLTjvFSMCiDwzZa5ahF7AAoz/QP4Kpnc0rMwk+c717xCEg8hiZj7lXl+vclu1ZU4+ozPFnhhK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RygYqdcs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RygYqdcs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B06E1C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744092593;
	bh=1YTNO4Y8REgsF8zSmuSg4j78g78xccG+P6Za+xQXPaw=;
	h=To:Subject:From:Date:From;
	b=RygYqdcsNgQ88rRbVedXefLBMjNizE9WlGAUieakEwWXN2dHAqlx8ygq/SDlJWgbn
	 XUV6iEOYwXRx4wAx5UMzjOW5L0MKbukkjzTVEADkQX04DRT6MfnYqiaYUDjqhyI+q8
	 66d5J3UA18iXEXGPGvlHiyAK8MVdLt9Tel2dh2hLvD7DfkbsbtavKH80M117VThGOu
	 CR9fsstSsRAc5xqewKj4yVgdreQPFNr/Tn5L1a+WePdZeepF/bPD09MOBA7cAh7zdv
	 2TrTKtdETNfFhU8EykdP7XqKoRxvpQl5R2gKeuIRh9e7qC4TUd29cuyvD1s8wosJyY
	 eejkJBcHvnbdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980C9C369A1
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174409259359.6722.714626233862808736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 094dfb74c831998c00132a869be42991a4dc009c61d5e23f09a250da7cf407c1
Date: Tue, 08 Apr 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744092593
