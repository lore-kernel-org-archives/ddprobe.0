Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BA923ABB3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754640594; cv=none; b=tlrOZDnfa6pfMhQYHKJLsbq+lFoqEYQPdZym4cglXYSh1rZDZQ+1rQ+UaB2av6FmfbD8NN9Y7fmxBXpDBk48D8hcc/HHmgkQNWFIpZw0xDSbS86gpoIYL7qfgvHCLu5Vq+YrHmE3it6IQx1oULoVGlmnOfTE0ic13t8TwTcRync=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754640594; c=relaxed/simple;
	bh=PkHRTbGn7DhrTV8FGEBmb8jAqKyy/737Ib9HKT4uUlc=;
	h=To:Subject:From:Message-Id:Date; b=heIEmx36I5BM4QVAHKOj5nakYwt7mObp8aUbERbIY1vetveV18+TyUx8c8MzLtytN1aTclwDc+CeDAoEDuFIhxJSURNvQ2Npx73CGgA82DbVECt65zHOGbG4gaFOXSQiK1sz4XN7PlgWKOOGNaYzzu/u/FE/KKRB4Ut5+1i8skc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+NCadYA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+NCadYA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC10C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754640593;
	bh=PkHRTbGn7DhrTV8FGEBmb8jAqKyy/737Ib9HKT4uUlc=;
	h=To:Subject:From:Date:From;
	b=m+NCadYAfrTWycVlFF6z/+lNQN8htoyjR0fGBiRc8qsgC002eyZCPWH3ss5/b3Ssm
	 h1slVJEKXG+Xn3rjBM5cIs20AoOLNk7MG4axpwemk7cpaxtN5Jd+Yb2cyNTEfDLBiX
	 JSvAzBm46HMA+vsToPI8OQ4zM33Fi8tSW5SxjLtjAV7kZkKW8Cjn/naaum/aZZGLsp
	 oEr08JoUch7dCOqLh2zPiT6Mz2K49NrtjK/yOaTt0lNEBNE9f+zdfv9QyZJeFkirJY
	 G7cjyQXqvhjBQdxtlMIh6DncfnnNY844c57x9KeYpbIkT8qILUfMI55lSr3ARMjM2S
	 qU2xa+Rg/IU7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E542C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175464059357.2516.13628944718983241521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 992870f9a8bfbbb2235a471c7ecb165dfda3e13bb5a3fa5a89c079490a85ce6d
Date: Fri, 08 Aug 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754640593
