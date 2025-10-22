Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF41241679
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761148194; cv=none; b=TGCsugy/0oHP6cwPxe+S+Ya7kgXhrHB+bM7mpBQdr9CC9CbdekKzYGPt5KJ1tqC+VqzusGq3qRvdIVoh/3z4NYarFNN3ltLPFS/HQCmUmoTtfANOYyvPuaBbE3FcvrdGT5ZaHYBuSlXVEajJBWRgZdEj866iaHiiYtUUfpI5uIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761148194; c=relaxed/simple;
	bh=RZAxSSOJY9U2/Wm0sPPVMDYJkRdLK+CAd7p1Sz6B4QU=;
	h=To:Subject:From:Message-Id:Date; b=dtZvkPq+ScWFlbCrrzg7Z3KeZwPm2H/N9EybzUXFa4oq9ZwLJWP/kKmE0y9NEoV7DVcOrg4uYPF4qT3BuVvT0kQYKlrHV3ClvBPSs9aOvUL+ERHOtEjY8Tbb12XCz0zIZQYSddIUJ3F0N0belpvuTBKOZTOL/5eeFXdyI1sSx10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JXt9QwRX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXt9QwRX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7726C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761148193;
	bh=RZAxSSOJY9U2/Wm0sPPVMDYJkRdLK+CAd7p1Sz6B4QU=;
	h=To:Subject:From:Date:From;
	b=JXt9QwRXdWN9WugHoDMDx+H98niKohHtwZiemzJCUcxX52U9JK/kP/KJHs/V1D2Bp
	 r3gnypS+dNcdSfpq9OuIYscK3qcCyNFg8TZs0ZB6ldXtDgKKN272OhRSs1covTX0au
	 axfEtvlTN2Z8vqy7WwJR4Mh9/uH6FSNYlWP8QRva6iU47AcZoiup/ESASclCwWm0Lh
	 B084/LIuTpzxY8yBo80EYjsMo44Gmq/7aUbcQCSDgw2saj8sjFkykXSa6SxndieWbq
	 wow0DK56+FYeLTWb47iNu17U6aQdZQIrlqnqRTJ2KSUrFaEC0bxDb5ysXBSKQKANhP
	 vINl3ty7YAUtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93788CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176114819359.3562.11899219991855266290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9f1fc8c8b841dc007d27ad80cc4559b56d556b5cd3cf1a694d0c84a6f412ac4
Date: Wed, 22 Oct 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761148193
