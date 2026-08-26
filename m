Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF27285058
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787709034; cv=none; b=ovNVDWQtmdZkQ/MtavQ3jNdI8LZAqIgO+xbVkza+XTWjwjvrocyneMimVHtp71KlraWsDPp37GXp6+Lx/Bb3Ordlxy7VWQu2MTjqv3PMSWEv9YmspivNU2cCtrCdWYwyJDN3mZxDFjosOJgx2rNsUKxWTk0tab71YP9DtsZpCc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787709034; c=relaxed/simple;
	bh=EzVckRKISyq2Jym/XPWLfukZuT0W6XBr2LLnIhDTOdY=;
	h=To:Subject:From:Message-Id:Date; b=EFbqT1BucDxhtF0tquNOyzO5ZGVirGD5dxY4+Y4Os13bkboKdNiKwHBTc72xAQEZVIMbWPYeI5ed1nAdOaQsiGU1vdDO4T+AseUOjQzokUm8kim2AGYz5moR8Wvjf+u5BeKid2jfuUckPzZN7eKdXV0e9YKfUHCoZsXoWiE5HBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GtSkXfOv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GtSkXfOv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44DCC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787709033;
	bh=EzVckRKISyq2Jym/XPWLfukZuT0W6XBr2LLnIhDTOdY=;
	h=To:Subject:From:Date:From;
	b=GtSkXfOvsXT1F2I1V+XyyNjyA/VHlAM4SZTZ9C+XMx1yCuZtKsBB4qRUTnvxQxGNV
	 7iFYRq19A79434o/9m1Ve1xxDwZl6+FmtzB0S94MdyVfbg8xbZatu5OQzAiWgonI41
	 PKNrF3WsTOj69YAsbUZvbZ/dwuLflmKfiNTPSyD7ysiCTE11b4AMXaxfILhquznRRP
	 xwWgOp9hK7qrbbtyH0V1pLr6OiEbJTJoeAKzsyjYN21GRb3ceZRTMmzhwthO2Pvf3M
	 R7d7rpsmwtoNbhcfJdxdPWq6T45sWYdrK/DRhMyprObDaXLvhVe2l45QStt3pyCTeT
	 gsTRNelml7Jvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF888C61DB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178770903370.10298.1661596109554314196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f99efe6cd6fc3fd07ffe4e43752043d6235ee9884f7687a7c46ca7f2149a57f4
Date: Wed, 26 Aug 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787709033
