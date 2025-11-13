Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184FE301004
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763018394; cv=none; b=atw7tX6Ba1dFiB10M61r8x7F4Ert3fUl/jdvdqrPWtS8ojGstsracnq4uenvmZ58zLESuM4YL0ml2Bxr8KwaqdtuYD4EY0CKdi7UMeCDqqkwi2jzupdy94Gyfl7TBkeREknFOT1nM6+ihcRN9d/5s5VGxEIa+QtObhC4mBr9k0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763018394; c=relaxed/simple;
	bh=THOe1w7gDBQL/DrpLkhTqJgr5JzGViLK370DgLJnjd0=;
	h=To:Subject:From:Message-Id:Date; b=fM/FvI+NzjSCxJgI/yIdI9uNXRhgbNPaNEUnS6P891O2AbPrYz60G1YWjV+2dAENGd6/0WXiO3kyWBl0HlmEJBHXsWjR1oNwsmILRj1DwItqD9RybA2s3NB6znFQbHcCTIfThzZZr+EcT6kJ3SnGt0wVPzrE1bV4CMDNVCm9S0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=INZ2otbx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="INZ2otbx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DC9C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763018393;
	bh=THOe1w7gDBQL/DrpLkhTqJgr5JzGViLK370DgLJnjd0=;
	h=To:Subject:From:Date:From;
	b=INZ2otbxf53mfv8WgejU2FFPhvs45zJGH6mRXs9uNuQZSsG4eZ/codeekWpqNtvUj
	 Rja7GBej1JupCGaKIAq1L+TKzchycWu24xkzPiigSmZ8d92W1swuL8xzc3r059FStY
	 3mx6N3IHj0qJCiF+JUwL0bJd3kdMG+86F8Hi1vBAuTWWu8DXbl4uCz3DAOwcLaMNQW
	 vnRlMgR+18A3StewZ1JS2P7Nt1lStW9rAXcBNiUx7GhpjPPCWw64imhKSALmbaXv7A
	 gYaBbmaA7g3Q64adK7CahvYOzKKw5Kpbd0xpa9fZ/F06GIgf+MkZ+yPPay959Xkr8a
	 QgT5GOHAMxAyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0B6CD4F28
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176301839362.15778.8381318918454161651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 087c06516e5b26c018d829442f7f644c75eef0ef20694764ad5ad10dc61529e6
Date: Thu, 13 Nov 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763018393
