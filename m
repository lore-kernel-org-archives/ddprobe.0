Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2640E25A32C
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746973795; cv=none; b=lbVJBIVMLoZyzajwFhHJ9T4IlA+Zwhby10cVYsDK8o6FtIiX8zqbX/TtSG6OcaAz8KpwL3ukim8MRS9L94Wk+3uGe8+pRGC7MKmP3Z3177HmDTEGCMKNC4G+rHp5u7U18m2XwCD80BmmNJwxqo+JHqdaIopij7V+w5CCGBSQmsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746973795; c=relaxed/simple;
	bh=/CEOfTuUzzoW42JFwyKtald7Li5ukBCC+HTi1ic2wVg=;
	h=To:Subject:From:Message-Id:Date; b=V2ns292FFR0Aar59sUjs+FInRrVA70bA/ClcLXxJPtR0m0F9LjnY0xPBrdJwR6DTi2EanznjtxEx7nJWJahkqQL6jT8H2rxUHdJBXr2+f/voQ7wojqjWj8L751D6tpKBx+NgMWETBtYO0IgMcHNBJ6bWm0+VBvgvBLsOKymqxiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLeMLZfq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLeMLZfq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29C4C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746973793;
	bh=/CEOfTuUzzoW42JFwyKtald7Li5ukBCC+HTi1ic2wVg=;
	h=To:Subject:From:Date:From;
	b=RLeMLZfq9Y60V3yGm3128upAhy6R3k8NXcDH9if+ywFjbY+76QgfzwoQP3cWfrNGV
	 bc5J9lS00qVpCmnRB/GR8AA2pFZ3MDaldH25sfeqfRpHDLGG62vLvnPJOUHEEjMQA9
	 jwLAjgwXOvBNL5DVoXuybNK/ctxkSzKNsq2gyjQo/u0vw5/TVTpWCjKOdfocKZmUzv
	 wm/47WtPAFiq+r0Ap3KNyV7e0QlUGZHdVcxLEVlWTMGirwlgzHhq2inW57c2OusT9V
	 1ImA9oHzEkQyI5fMlqoQXrqHykI1eO1zDNWBFuWLR1xZmiINO6ZQ5VdPJxXBNDTCCx
	 r2fqHeyfngJUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F956C3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174697379358.7774.5843225680075086317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3185e1cf9c03b1f89d946b90e2184430de2475eb7e138d200ad8a1318d0d50a4
Date: Sun, 11 May 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746973793
