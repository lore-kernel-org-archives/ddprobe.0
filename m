Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1072522A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766225634; cv=none; b=oCyKEM/D7EmoArzq8i6TN2aBVjHXgeFRDLAgdkmYEpt1NFR/0opKD07mV6ug/sUJ970VUt4ZKp1IttPoMkinbn92ij78mClZ21on1aSY9HfM1MnHkLfeyTk0UoB5ywjwCsBAhWdFqCcYwN9BSXs9GIXr5oIq+mPxxxoBpNkCJuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766225634; c=relaxed/simple;
	bh=z3VcWITHC+Dl7JhtCkvc1xAYhUqBeXHoarYLfQiPJ6Q=;
	h=To:Subject:From:Message-Id:Date; b=DN29+aOOeLC+pKxg8pSmSUpoHxqa5/WUcDv42W995ud5mYjAj5HI5or5PrUyVHeshBFKiWkbROaon6FMpbGjQz4pSWmlIMvqcygiwodOBpm+e9MQKbPYr4kF5olbg9Y61pWu6StJYJjdMPO2UgXKAY81HkzXBHOwwHQy1ukrQ6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LqEnl5ms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LqEnl5ms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0176C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766225633;
	bh=z3VcWITHC+Dl7JhtCkvc1xAYhUqBeXHoarYLfQiPJ6Q=;
	h=To:Subject:From:Date:From;
	b=LqEnl5ms3S8sDTQMqkU6IOSBnZSFUKbmwmO6+2CKIjZWAvTjeMm8X3nweMESfV6jk
	 TlGFqAckfWtrgxYNqviyhj8CZOY4xuhz6h3B3w+yuVe6B0xvPLW29WVSAVBLTAbdlk
	 u/sPPkCJgjcLKnPPZZyPkivBu75eZ7AxLKm/Iw0dEDPJyAstNp4mb6kVzCS1ZOVHww
	 vvUT1kQ+N5K6zvLNq1Yh/fKRvOgQVRb2VoY5dAjgy6uyw9M8i6EgkIeLoc/Ql42Kar
	 sNyLpW1aaweW+WuNymLUwmuNkkZyGUbQArJj1Zv9n9AJxymjo9Rxn2gZKpkQ+M6eO+
	 MY6HDKLl2OGug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F784D637B2
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176622563358.3956.113749494085331240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de8a948f80723dd8d4076e963d67dfdacfd09ab87d71d6e890018a7e807771aa
Date: Sat, 20 Dec 2025 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766225633
