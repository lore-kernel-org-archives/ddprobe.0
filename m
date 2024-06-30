Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69618A21
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 00:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719708863; cv=none; b=EX2AYUSktzNm8LFlxEZB1IhnRv6GLOFRPqI0A5uF2DcGLjuNkDh+DvLfEERbIyCz2H8i7cl26s03QvQonaTcU9KgyDPVte3hLdK6IJ3eRKa6ktIcrR6uGqfLvBr/RfJWO3BaeA5gJDbfszsn5qv5SLtAdwYpdu/TU5JeegMFXkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719708863; c=relaxed/simple;
	bh=7UNcMHgzcVjyaeRRmx6hsy6F5HWsJ/13Mn/6dtn9Lfc=;
	h=To:Subject:From:Message-Id:Date; b=uZCAPQq5XFXJaRBXz9gAuonaHU143pJzKii/PFhLisDr5OVGN5KGEFMe3sVmdDbJcjzo53E4DbbeG/a2VDupK6mew5z3M6VCqr0Od/NxyFvqCJztTywGrAe8QhR4Vo1xdHRZECuvJzB4hn6IYU0hGklpNNJDWmLruSXPVA2mXxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ugPgAxEM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ugPgAxEM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0186C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 00:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719708862;
	bh=7UNcMHgzcVjyaeRRmx6hsy6F5HWsJ/13Mn/6dtn9Lfc=;
	h=To:Subject:From:Date:From;
	b=ugPgAxEMsVwIXfOiiTESpsf7ahXoTbmC6lVSVZrGG6DeRgpwRopcF+grNVy174IsV
	 zpjEzNtkaO3itfqBhMGF8EE51AgnqCoF5Tm+Uh3jmhrGqS+lNlEKiXiEoAva1KRZKg
	 /GX8XJW14mbQ1/qatIECoU5Ep9F77QFcbnOlLfW8EcAYvZHUdVS/30kvQYl0aPL+fP
	 /mybjzsi0FAqbEPqnCbynuabyqLETzVCDxoYvKDirouuTpnmQBxjXxSpuN6pzNqM61
	 p6F3e1HdErNg2wPOhq4g96gFIbbnBvxNeTtJj57NNAduTirrSkMwG7euj+VGAgr27u
	 NmPlKCqvQCsyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD585C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 00:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171970886280.19839.8532563053383457620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 992d7a65688b68495196e2f5803209ef968cc42667e6c12ac565b7b082aa3754
Date: Sun, 30 Jun 2024 00:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719708862
