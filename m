Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFD4F23BD06
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773317094; cv=none; b=k0BD3dlZVf0zEmn18NrlO9rJQV53NbgoI0ecjYiFnTsVPxFVYIp6j8X/xkmr7E8zjefE7ikxkXYNMf/LGkCY7WHGvSzHq+s01fBC2ja3Cv5ayEBnd+//stBvCFh+nEzsEniVztaVzF0Oz3imdRYXOf+bZRPn4VkJNaz/8x79XJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773317094; c=relaxed/simple;
	bh=RzbwCytvcZbEd0d1xXNjjUfIKwf/iBodHJHaM750b7g=;
	h=To:Subject:From:Message-Id:Date; b=Bg0Ew3LuDQ3SWeWxembJCk+uHPuxQ3QyY/SO+7JeZtvC/HFJTyrKz78/dTi8YHDAke1zudL/JwOUM8GXtrTKzBP4xbcdJHj5ihsJjdd7EuGIUIeanbIhOGG7rMTnv2cOwp4BGTmq+iQCZdMN2SciwcrJDb1SwzmTZnLLDCzWOpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4WIPK5I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4WIPK5I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47F3C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773317093;
	bh=RzbwCytvcZbEd0d1xXNjjUfIKwf/iBodHJHaM750b7g=;
	h=To:Subject:From:Date:From;
	b=L4WIPK5ISQA0oVdpXzi93vtvpO0ss6N94H+hpmNRsBVlBTbT8ZHIbueBI0IlvCb0h
	 aRClLKCyCJ9xiIbO7Gi4cuITIyW4/OnIcCdnlBueRDsmQ6t6fovaFjzN2/R3XCBhQx
	 3rEgMWK27PMAZ07KI9Of+g+Zmy4IC0bxWSh9393LwFlZCVhrZyTqF8fmlWFW0gc+vR
	 WneYfX7wU3KLiQpca2ZcR6f62qKt978S+ewErOh/32mQlucR63i303s5+ca+WHqee5
	 /KtOYuY14Co69zIA2bJnnF9wXIVt0PDV5x56xM/fBaKUGvGhXttco+ipx+ASFl6/TV
	 UQQZ/KUNogA+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91011105A58D
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177331709358.9089.6040571461901206429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 866510a8882ddebe13053b8c1984609bc0dc91b6e48928630f8bc87f0e248cd5
Date: Thu, 12 Mar 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773317093
