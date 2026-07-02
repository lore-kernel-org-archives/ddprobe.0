Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350FE29DB6C
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 09:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782984514; cv=none; b=Qs32clYpabSdo8J+bB2vE2MrnFjrjnclka9rSbP4VYFmj5GOJBMU7Zyig7lJQ4D/40s0uGiJZMYNS4sadVmxAEg4SAR/nG3II5782UaneltMEAHQrpnTJcxuA1BThKqoANyVuBecT5ZWRfp1GP1Mde9kJo2FYAXWu4RBWomUOYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782984514; c=relaxed/simple;
	bh=6AMoXCa1TJVAJFdnUC5XCAGYAqc1f5+iroIV+zDDTwo=;
	h=To:Subject:From:Message-Id:Date; b=emIJJjJLKwN4K9JO7dIWz1e7O6/KP/+6KtfxBJ2oI+rWq9Fk0R7ABkKCwrJC7mLy6LxLUGVePitL8N7ZrLX1CusQcHqDGHHYfDQIJnNk2VCtk6jXrR9wDfSzZ9p2eIy1W+Ro3kN5H4+tgvADzgUFm2D/d0VDZ9AeJu9YJtGZBQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N1IF0q6O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N1IF0q6O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C95BEC2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 09:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782984513;
	bh=6AMoXCa1TJVAJFdnUC5XCAGYAqc1f5+iroIV+zDDTwo=;
	h=To:Subject:From:Date:From;
	b=N1IF0q6OuZ9NQ5cLgLywAcD41IsxW/dtK7wkzggrfBLxhE4npuk3BMEET2ozNtB+k
	 l5ALyq5pfPCAEAmquWVXNOJsxbxkhKfocUilYQJzDpdC8lseQV2jYO7A+Y6nds68i6
	 wkc3lKN5v9+FwuaMfWo6BtuSMtYW0aegLRKHrGSDhRcSMt5i9I1JHBwSs5Koeo0hJ4
	 svBqQhQV/2B3AEbY8rZPhjDkV6HwFzAyZUBX8Kyoz7IAXgSNDwEGaBtlzNEVT0AJIL
	 FY6TRG72lXwSBBC3d1gcap4i+I45Ssb4OdFKs86fFYDmxVuGFirzdVPl0wktUc6hfB
	 H8udrS64QFrxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88E1C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 09:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178298451368.18368.7953399908058791666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ec15d1b9490b6ec27ecc85765e81aa1ee0c7f6d90b50df92974b839e1a8f273
Date: Thu, 02 Jul 2026 09:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782984513
