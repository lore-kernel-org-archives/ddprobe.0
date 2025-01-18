Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4431E126C1E
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737183954; cv=none; b=P2gI8P3kJIzueIFCj/M+fW5pb6yiGHRzfv4iFyoTD4Sqf9eWvcM4Xwp612/zRcdPgVxSL1gKo9/rsYo3sObpn46Ip3kuSIEG46DZfbXAnn71CIDx7qNN2bxVQXMMAFzZYwcQzWLDCWluRbW9mFDz0PcOLdEQg5YJWVnCzgZRu9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737183954; c=relaxed/simple;
	bh=jlvpWml777rU1otf9aKzgwYzPJdgOfVASaA99cTxMjM=;
	h=To:Subject:From:Message-Id:Date; b=Q3WSi7aERG7MnsgtuQVKLD7xN9PGf4hLGTByoVgmwyRTb2Mj20VU6OLmGIhaN0JS/zoD85xLuMHisAyMaZVrs+EJ1LydHX49L1IDSE35UOtyuj9LD22A9CLS3S2h+dc5hxZFUNSK2ZS2FhGFDATjBn+tUjsFGL1GiZ++kfGwgbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Or6cuqhg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Or6cuqhg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2399C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737183953;
	bh=jlvpWml777rU1otf9aKzgwYzPJdgOfVASaA99cTxMjM=;
	h=To:Subject:From:Date:From;
	b=Or6cuqhgZMU1j+wXpwnVpAykbIxwL990mmepOIc2CMXERni8NBvpOPBS0G3sUqyE0
	 MY+NMv5oJM+d2Zro79Ai1ztjYl+RkkBTeGVnzUXTttNvkdk2ZzsIyqo+NHphGvtlFd
	 iNuuw3X38r1lazseR7UenckUJ5V00rV+woucH31wdwRecR+oKw2LRJA/omE5hTgwus
	 M4OQoSVA/y5g7lr2e9QG06Va0zXY8eR2c15YfhCyM9TuaRLIKyrHGMCaBo71+LoQKW
	 T2i24bMYMB3b6MEaolhAQIgQNmkHh/EkbZTASDc+L9fYkunSoSaxqJqFf2L35NMUqr
	 tx7KOLQ7Pwr1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A34C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173718395358.28529.9507940004047234216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee5658e1c0209efd943835c64f4ef91ca4621d8dafb5256bf6c260811ea16f50
Date: Sat, 18 Jan 2025 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737183953
