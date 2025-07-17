Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3637F2AE8E
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752754194; cv=none; b=TlopeSOhv/ZyQZ5ku/AnoNU6KgZZvcMutfvpNBbYG3vBIwY8htXw0NZGtbF/rOIVnwTZlKlIVDZuz5V61c6ag0aNxdW7frbm5Gq9tItYdmnLQOu1oepqM3wnD+I13In7ny5OMlDnQPXMuErd6+ZBO2Fog90uaPfv8QSszNtgF7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752754194; c=relaxed/simple;
	bh=K9WasUPyXUZSopa7IW3xlduWO/RLMM/fYKVkTPLkNTI=;
	h=To:Subject:From:Message-Id:Date; b=W16nW8tUX4HVDdxYZGSCt8lMJIuQ2skM645BjfrdKwwhBd8jt7CL5+l67r2tPI5wD5hBnZK0gH1/JBAJX566ZXpTO7Fs+wu+bTR7C36CNn4KtBh6kWGzgLmy+qoztx3t0hIbdgKXimv1gupOieHRX9+np8N75qZ0QyJiT6tnLcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tR7fPbGb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tR7fPbGb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C66C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752754193;
	bh=K9WasUPyXUZSopa7IW3xlduWO/RLMM/fYKVkTPLkNTI=;
	h=To:Subject:From:Date:From;
	b=tR7fPbGbxCFwWuct+VT3dZfNLW3CpBcMJgOFFl57aIADp29w9/T6B+fBvo/C+uTP4
	 DVNSENFxXYMAg6mYhqdr7Ay5k1GGmvrlZ54MngyHWEtm8l/5HgbvugRKdnRfG67RjN
	 Xi1SXb+WX87QNa32vF528kl1cYSIhAKiptnvQ9gAxxSPvAa8bmIgibgp9JgFqsep6U
	 otxdhIRpIZ+8SUl++6qr0S/G7yioTFsyx9tscLajxz3oOzfm/6/GNVN6/HDByWZWDG
	 Ay1mi5NwxfoJGITCUSFJYqxamTOAZVPzPc8qQ22X3gXqCPjXvMvp/vB/fARg+0IeCj
	 Nfd2bQZTkul6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F140C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175275419357.13641.2278263636654348705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ed598d87bc67f9f80fd606072d2e1696d5a38492123a248b8e8fc759ef2617d
Date: Thu, 17 Jul 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752754193
