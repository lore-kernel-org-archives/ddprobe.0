Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3042627FD54
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758583794; cv=none; b=jGxeIR37LkjW4rSKQKv9TXowmivHz+fzDq0YZ88h52WuI1rcCBQzP0lnnFOpesavzldRbBAn6MU9mCMbai5xxtjV+u4+X9qIRSIUnJXoQRelWWY9PcPQYyHKCdrq2nQ6Hu4z5vXmdEq+yH5sH45wRiEDZq+NjJplujfI5Z0Lm8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758583794; c=relaxed/simple;
	bh=OwmA+PD/kI2n0kedIHl9Xmib0VuogyHxU0OvLeDTMkU=;
	h=To:Subject:From:Message-Id:Date; b=bDZsgUg8VpWhto3BQcld6rHCUjuuCuQdOmnMQt4leeG4zho3lehU4nZg90kRUePrbsJwvfXsVFOs9qTGFR9w8Ez5ARayVazMpjeYndBFFzP/Uv7jFh/iVv2EJ4UOV6yYeGt0Bs6mfBq0AIi303eg/6FkSxp5c8n3ATZr+NNPPBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TUXcFYBC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUXcFYBC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E6CC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758583793;
	bh=OwmA+PD/kI2n0kedIHl9Xmib0VuogyHxU0OvLeDTMkU=;
	h=To:Subject:From:Date:From;
	b=TUXcFYBCVEHb7VIqh04Wcc5RHqFw8UraHaED/s7+5Sn97LypIGTghuwGL1N+nK7tA
	 U7gH8gUCeKcoVlVQBQAowndvor19RVt0dIdPuNqgF4diA1T5KE8mqP+IdEUX2c8fa/
	 LJ83/Wtem+V7PmVAU9rhi0Gf4ApcEAdOXNCICn0FCYqkOtv+XOSjXeAXMXhcg91Bcz
	 1st4N2s1gL/vKM5cJN5GJvAW8yrcO7BwNYdD3FXhBEz2KFzxCzjlesTfgYA2+R9m8w
	 FkTmtZem39zIJU3U77S0kNhOsceupcL4w9vt1Kg5FOjsqKU3CK/lerir/DVRT7hg3Q
	 VgVyCRJiz7Atw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BD9CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175858379357.13679.379886016310926452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 708264bbf14fef0397256a272f96454d91947a81c1f022d013058595bd374ef2
Date: Mon, 22 Sep 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758583793
