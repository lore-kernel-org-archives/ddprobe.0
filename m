Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109EE23D7D4
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755877794; cv=none; b=dRL9QISpKyGjkKCwl7LRarGE/MT9ubQk9GEZUURL89D/PbDYNOXDVsnjhf0/3TvOGvZILJmkNHg/l+kVNak2EYI2MEWzhVUbnHEXHSnzUSWjkV32MOetDeCnDLktTgDsqBCp83Qeg0o0ICMw6n+oqJ4tHr67glUdSMk7YWvEYXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755877794; c=relaxed/simple;
	bh=fClvqzb5eOBdYXGP5NJF6eRwb3efK7ZaIhggNjFECeA=;
	h=To:Subject:From:Message-Id:Date; b=XWWUCEAx3xdAANYt87YoR0dksrzMa5Mv4iAGyU7/BX4gHlzb+P4SUIFAgGRGA5FdAWDhbaVEA4fZBJpjcprsPTJXEWmJ6ucslrRPIHPyQQPaUPjPjmQ/j0DU+nSz6wMHPXJ5K45+PjgwMcSUdZOTrMmvzolbz40r2MU+pcQnoTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=egb/im5J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="egb/im5J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF97C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755877793;
	bh=fClvqzb5eOBdYXGP5NJF6eRwb3efK7ZaIhggNjFECeA=;
	h=To:Subject:From:Date:From;
	b=egb/im5JgU5t1trBbSAKdo7QBZEFPS7PukE+INAUGNH5x50gqOFfHAjz1gbaTzuj3
	 wiPlizIbTPUZyuKHfxUJEbw/mQwqjTUkycC2EGnQwAOux4ITl7EFrkHF9fPUFaov6g
	 XPs0sO4XI98rYf5gibmWtjSJjLR+In/FFlvd5zG2AD+P5swY7ah85D0oH10BKZXhxs
	 WB1LinJedrgvWDFthp5JTER6BP8K8VdS4LyjxLLZb3OqiS/4vW9sJsezHaptZteL/C
	 M0iILefPVBT5M0/YZ8A/19m8VZm93q/O2hEREe2pfv2H3L8+yUKCcuKjk7S44A4dCW
	 sH1698LsdyxSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3F5CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175587779357.19408.3092166143177247137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f435af1cab02197d5596f11ec814ec33fc36f89a0078fa84223992c651cc626b
Date: Fri, 22 Aug 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755877793
