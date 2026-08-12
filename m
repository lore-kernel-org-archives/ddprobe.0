Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26425352027
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 08:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786522234; cv=none; b=urxsLIslB5+x0wQENhyRVEQ9V9KGk2clhVYuoTUeKa9rjko9S3xG3GqwfHO94jJuHAvJhoGfkggX0NtvLu7BANYNsQ86HpMscnVUBx+6eZ65rycZwstRhbPFx8KC80dQc8KR1dR5NiP4gxgE/FIJtPluIfxiKkKooiYywKZHktE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786522234; c=relaxed/simple;
	bh=0ZyeLkQZFwdGkehxi8UMeJT8DTeguDCaBjFcZq46K7g=;
	h=To:Subject:From:Message-Id:Date; b=fR8m5nucRMsTF+KhPAFjuw8CSALtFaL2GzikVV5AH0XrfYYqU8LEqIfcJiUjk4qmpMVyCXyQgxDcQcMb1ldrjSJUk7aaI33+t7E6C1LGKboVeLhCtMjf8jV3Y5a91azDhuU6VGhMEei62MV6k3+blo/SPqVXW8azrJRB/wLRw/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSYXTY9B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSYXTY9B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF71BC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786522233;
	bh=0ZyeLkQZFwdGkehxi8UMeJT8DTeguDCaBjFcZq46K7g=;
	h=To:Subject:From:Date:From;
	b=oSYXTY9Bk/+ymHDQa84ui1fc4su3WpQedAeuejFw/iiDazzbYCRmnvZbdSPBjBbji
	 frd/zXyGsYNHVlmveGcl7ybgHB6drLTyI77tOiZEHtQFuyu9FzSlN1X0z+rqtjkcfQ
	 2tK8nwpXML/qSQFPWqFCZIAkRHSuavvvC5ExwDnno1KKqC+J/mtJmFkrnNtCPO/YWK
	 Drw+J9Q5Sf8MchMFzUbflew6/72/6oBhRsq7KOfqwlXDIEThWcmWZWAAjyDBw5LhM5
	 ycM14yAbFMXjZuZGV7+i2DWZh8uGXpmmduMUloytafow3CPdRpmqjyx2Ixyl3nmVZ1
	 hFnKalejVUn2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D48C5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178652223368.26967.6008040886981139694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8284e71b5e4f13c445b513e0863afd47ae8419b8eabd0198983bec25801dcbb1
Date: Wed, 12 Aug 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786522233
