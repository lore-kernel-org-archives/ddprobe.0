Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4327D634
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743727194; cv=none; b=H3QTa52fweqRrYRs68yTlcBOVrcdOwfB15R/llrHC6aBHekFZ5uUIIG6polPkCpaFxh+6rEcghGKgIq6LGQtRT67VWdHjK/yw2PBhbl5UVYyDL+FzBUAXFAFGB/jlbgzq1rakPjoIwGHtDgvIfCsDW8/vk8dKAk+uKrOZkPkC5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743727194; c=relaxed/simple;
	bh=kPrEiq1+QVHTCPHNGQvJWIVaYcF4y6BZjvtJ0aZ2j0Y=;
	h=To:Subject:From:Message-Id:Date; b=RWUujBlRecrDaeLD3s7FpXyFFFCCcw2yw/M96egExcMdt/8pX4+I80i7EkNZpagHaUxNqM3x3OyivyuPPOne211nfpl7g0AMwSnz1i9VPLqoWMJcTl8Op/RCXOffCIFljWqMLTe8mPr/bXI1fob/dw7aVwPll3Jt8n3IriqtwuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQtpkAig; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQtpkAig"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD87C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743727193;
	bh=kPrEiq1+QVHTCPHNGQvJWIVaYcF4y6BZjvtJ0aZ2j0Y=;
	h=To:Subject:From:Date:From;
	b=dQtpkAig0kXbAokD4A1zOf9nnUrmTP33Y7oErjhTRkzIcGeJudRohk+TlO46V/Rzq
	 2CQfYjvuc9SUF560SIPfoqSkV6gAEeD61uqaNLU+I5hE/naZzE8LYIBHJNeAeW6Twg
	 tKO5NZoYP0dZ1TLUraewea1k5u9hgMnacdbyIiRUurD3mox4EC5uEorzo4OHWREA7m
	 pYSVBq/zG6HhZb6t6oAvRBXT+9E3IZgEnq0A8TpkpiRc9TnHj8hVh0V1yY1aPREVcO
	 ZHZLLmNXYigfJrw98YkJkJ6J7luBbRbHiPeaz11sxVRCt/TlbpHJwNe8qZlXQE24Gw
	 tsTbq3Tb95wUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C80C3600C
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174372719359.20057.1381283786226832898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72592e5c24901f909b249ede7d271f5d459473d57acba2ff8a7fa0e73b6854c1
Date: Fri, 04 Apr 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743727193
