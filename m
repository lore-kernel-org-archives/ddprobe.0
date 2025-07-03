Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F442D3A6A
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751583595; cv=none; b=fBsNXm9j1jNARLAD9kJkuWyEhfgtjT6Tqa4rPHjwDUnXGLHvIerUmhdlkCEUXp9g0CccGX4PBRFkmEymjdn/weKjK48u1J3xsEDv20D21yGsvry0kscvqZUz/nEMUDYQBIkbymeC69IAxntp+YnRameQ3NHBWjW3BnnU9TEW6zM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751583595; c=relaxed/simple;
	bh=jta/g7NzsFd/8wgXUsxo6gWor1jTr3KEuQNsEnX6q9A=;
	h=To:Subject:From:Message-Id:Date; b=SvkNCXg+zPml87rZYQNcbxR8yJSv7F5xr54Tqxy1GgjNtYLTOEFFzr4D4AZqUeIMxR71QXXnro0JNT9gSDBRUzN8QqTFUWSWgN4S2ZymUQcUlIyU7vaSSiKWqkL4yXpCMUfHMFrIbEhRX+ykrqHj/EKsBSYB1kywLqIqW7KaGG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oFeDbcKS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oFeDbcKS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CE9C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751583593;
	bh=jta/g7NzsFd/8wgXUsxo6gWor1jTr3KEuQNsEnX6q9A=;
	h=To:Subject:From:Date:From;
	b=oFeDbcKS0N0ntkgceM1m6y2Fdn5VAk5XncKuvJQSCOKTeqVR4PMCcW4f1N/ehsUb3
	 +pkC7EmjOHE6b8l1Nubs3v//i+u1qwzF02eDGOxAqatGYg1OLOEGCEPNnE/i3956kh
	 03QX+H/7dGh+X2HU5N8HIGVbmSSDO+2LtvrHAECuNSYTL0QZl2tWRGkg/Vb17W46IB
	 sR6MCC8MDZABppOBXrmHPZvbbeyGG+oELpV/0ILSe3kLcHiWIH7q9+0+Rtpg7CgDZu
	 tUmauRtx3KBm77uPWQdI+iPylg71MuLgVwgg1ae/Q2zn21mHozNhlWVwmdAPxFqh+P
	 LeAhszn2rDZzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6F9C83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175158359357.32513.10809537764594348578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a439f522b73ac1a83539827b503d0f106cef0eef956eab8e7fbd39a1a07c3870
Date: Thu, 03 Jul 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751583593
