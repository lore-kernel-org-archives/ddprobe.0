Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463FA1DFFD
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766890434; cv=none; b=F/aARulngT0wuqnqJOF5BtIDiDZnUo8HI8M+EpNKeBlCKJJwiQijhzPubmjI4N5wypa6IuxvpIMHmVaES94zsFrNks4rRM+Efisu+oV/swH8ngqQr9J/6NbvDMSW6v9Mvwg9EMVQgCEdBSvN8hm4AjPt2Ob0eLxU37wGr+rR32A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766890434; c=relaxed/simple;
	bh=QI8SHmRyTlCzyuem4V+jjB0IwFhUeKWOuvVdH4HcPgI=;
	h=To:Subject:From:Message-Id:Date; b=GCyUvdik8WrIJ6RdYN3V/P8pMft1oX8fzv+LRSwa2NRZl8F+7xM7CinxGiFY2pO8p95Jp0MPO7Rf1QU0PjM20DLkre0CrzhJiwjIbHdzvCWQudcJdeUMQNVFa9lDjTZMOik7gAlttz7Jy3C9HKS9aR6NsGe+s+7SBltqIvGYtfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rrRDY0nx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rrRDY0nx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11F3C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766890433;
	bh=QI8SHmRyTlCzyuem4V+jjB0IwFhUeKWOuvVdH4HcPgI=;
	h=To:Subject:From:Date:From;
	b=rrRDY0nxufGDe2uXH+tEBBHRZeaiIlEuq3w9ZzBvkxGrOpRAwjq2XI3PCTx5sSWLx
	 4UgoBQhFQzVCd1TKaygjddC0MRf6To5bCpscIJydO5Fhjjth8tZmup4667Zp20zwts
	 vqlaLhe7SpHg5LD2PYabDRwJAErsGEPaJHK2sSRhK4gRakyZcOpDNql7fqmJD95Sqn
	 NygfFscBYPufoV/JaRPCgWMcWbGySBwkwRes3geEGxDpCxbmo+er8yR1tYDejMult4
	 ovlX8igIheGfPD7LqyXf9NkpwIsto/P6GGHl2Zk98gmxsJl87St3SdxhCSFsF00F1F
	 iKr+UT+2yPqEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF12E9271B
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176689043360.26919.11798656781019534249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9702b86699dc191a32595a1828f049bbf5110a0ae0b8b0e01d8ab5844e16fa6b
Date: Sun, 28 Dec 2025 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766890433
