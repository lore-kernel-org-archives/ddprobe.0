Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29ABE1DFCB
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736690154; cv=none; b=pQlWu4+s6FD16+m93cnsNhySn/pWE3TW8haryKZb//n4qrDjXNLVINrcrPEVpRIFT6IlpUgAIJQD4a7tdSM3W/vw1Qipp5cXLWr7OPJSmimW44s1J0RZeQjI8F7vKbmfLWVVF/72u54tLYsLtjv5Ux0P+MHV+2BffxugZhD/46o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736690154; c=relaxed/simple;
	bh=H0LXaELqRbOx1h0Car3V9Bz0UxRrg7Zjb27g8eebdx4=;
	h=To:Subject:From:Message-Id:Date; b=h+a97A16LNVos117KeHmlUyAo1mlHMqOZ1H82UhP48bNqNX8ZLkIkInISzWNK9fdT+z/pmAU0PjmcTTR3M1/ZnjhSMzSjJKZd1Rf/IC9si0ZlR6J3Rvgkh6GR5BpdwpBLEoPB53OAc+lqgBLhssum028DUBlGIyot149HZJIgkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=seEa490e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="seEa490e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72E7C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736690153;
	bh=H0LXaELqRbOx1h0Car3V9Bz0UxRrg7Zjb27g8eebdx4=;
	h=To:Subject:From:Date:From;
	b=seEa490eP9osO3V7PbneK0m36lr0c92UF0XEck0lKBbYmXZ/J8wfhCPn4O+cwgq1P
	 ESRRfs7477c3vNZg1wVJxPgtzAOxN7zmOjM3+s2rsAfpHBuaq5BjrYZXDCawFKfbul
	 rDeB2EIF2BaldLy31zEM7O18z5OT544lAT1Ehxeoqojn6Zp8EpN9pw6bWHVO3avOPx
	 YwEWKvGPkFiXC+RpVo3XqTtBKN784aPVtniFu4FQs2LFqviXSw25JBGlXS8wFx4uAV
	 WhkYkT7ZtN/Odo+oyt4EFbsXkTEKB57fnjfsa3wSE1EgvhQzj/eUSfPRWYHaIBSuwd
	 LVrmf/nFBvfog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9808BE77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173669015359.17543.10615551340508242528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d066f9aba0d375845e46c2f0406669874513e970da6824011a13872f982f4b63
Date: Sun, 12 Jan 2025 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736690153
