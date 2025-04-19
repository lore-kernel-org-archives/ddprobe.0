Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45DA22AE66
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745047194; cv=none; b=rTtDznR0ZS82VRtorGptVSKIjGeTd6uIqSwGnfrMryM5sjEnjhdG6RvUzqJIXD0/2xpVfWrpO+UNPV4SwgXFHS2Iw/Imp+Ema0HZt5cQpNRuGJ57+y1ZzHVLbfa00OcgFbg5ioKOnR+C0csPuw22NF+6NX6uJBS7i3x8ucsCslI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745047194; c=relaxed/simple;
	bh=0+QeRpcCDXh36F+55LuEfUnPHydv4pbK3nbG4tIA0Yw=;
	h=To:Subject:From:Message-Id:Date; b=XA0iykq0Yef1DujO8YDkoikPZJCP1c5NdW++h90vp7Zt2wTVWNw1tzdZ61d59SCWO5CnOdkn3Tztc74IaPaNiINFHVyKPXRzSVusY6zB0g2EmIMW1qxL0dmt/Nw9WBPcRzVfndSQBILzhl/QD7zZkqpMTBqSdgnTbGPufcUJAnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G5mskLbJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G5mskLbJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B30CAC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745047193;
	bh=0+QeRpcCDXh36F+55LuEfUnPHydv4pbK3nbG4tIA0Yw=;
	h=To:Subject:From:Date:From;
	b=G5mskLbJdmT9HrQdGk6Upzt2aYeRhs1asCUmO1R5Uqra93BXJrQw5GElKEDwHhwap
	 WjHKBZgshuzPPN/cB/p2Cyo1bSBMCqEMA8Ku7rawP2wjmB9QYD8w8nz4xCYCoKsfX+
	 Afk6Ghi4mSq8uMWQVziw5TKaIaThppdrbJ+aQ61KTm5mXopV/0/ccmtWuNLSH4EAse
	 Xo1ieWRtlxMf33Sy19GXa81IMlZkV3HgrDiZi4sFOlzn5t2WoXPWxMJY0qQ0TzFbLm
	 KGmfwCekIxF/SnVZ7NDyAclPunpAnGMQ3/H/vPcw+Ft/uHko/aewNn5ptRp+nIQsEU
	 Fxhw0ADQqngEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B21C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174504719358.7906.7736746006804005250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19a46994e1eea116c0a66d9deae366d3b012c7ca4b1731b08e5e6692fd3bd959
Date: Sat, 19 Apr 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745047193
