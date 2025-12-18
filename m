Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8542BD022
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766099634; cv=none; b=hRrWcMmukyuNfRrV4T0VxOpNRrJHR7K9DVDqnAawXysHh+noNAL9esUHKead9Ef/MdwxvtZtjk/kVNhtxs1QxkoR/WUlNLeMhVIkIC4ZvVTpqAkPEn45+FZswiJQgasy8PdeyLslXau9Q4xnvQ6G1qhuYa5oCxSjUN+AGXCME/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766099634; c=relaxed/simple;
	bh=jnMCq/kNjEADbrRJobmPtBtP1DNfgacaIDspN1ohTV0=;
	h=To:Subject:From:Message-Id:Date; b=ck8l6AjeOar0O2YlkpaTtucHXJ8Ag+l/TpfqbAwbBqg898rkjyDFKzjseMRNccH6/MxRBc6sbfXiuEHVuDIVAvh3FfM6EperLmFItxjYDRxL2tiTfzYc5YYwcOsqNiiD5fWzI1oZiMBc0+aaGrpYWUKZfz/zRL1k0p8o77iL5Z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nfu+FV3+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nfu+FV3+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5131C116C6
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766099633;
	bh=jnMCq/kNjEADbrRJobmPtBtP1DNfgacaIDspN1ohTV0=;
	h=To:Subject:From:Date:From;
	b=nfu+FV3+wGrmDvgF3zUm1NDb+FxNtPdc5K7ALEWgaHckYMBBfIxrmm4/HAPBWtseW
	 LHJYre9Jy+pjYOZzcdcxAl2qB9e3E5Q0eb4OhTL8v+/UhDzjbdKl155n5aFrUqHdMN
	 r8wPfk3afyciGsnoHdMuD9a/mIO5+w6lCKl8c3a9IMhqgW3y3JOIZJM/CaSBrKI8iD
	 q/SEIeJv+7io6nbeZ2X0lLDoBDYExSscyIE6HZQ7cRhl1esDZQ696KVVP1XwNb3md/
	 eQ66uxVGBM0iC4eQpkB27PLTkGZvewFVRdG7GdS/6QHrcRardgh2aqrEbrcpz/Jc3F
	 FuoCHLjrm7Bmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9406AD711C8
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176609963358.28098.14607313355689282499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a99d886a9fd0b3de724b2bcf8b8dc701279817663eeb43aef7dbdbf9e833b912
Date: Thu, 18 Dec 2025 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766099633
