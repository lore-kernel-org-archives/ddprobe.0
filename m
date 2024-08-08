Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A92C2E400
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723086354; cv=none; b=XGsYLyp0Y82tSD7XrunRU1hP66+OBX6Egk36trjVFJS91rc6anFrk2wb7lhlW5Piw2k7dGrUhdoul/7frbIrne8KpTxdf1TToHW7GyR1obCz/yiwZBzIZUsP7GdUW0PMoSYKkGf+i5M60vNONjdym0yFtiEHxKbiEp4Z8P/sLeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723086354; c=relaxed/simple;
	bh=6pDYZoqAr/mm4rdreXQCb/P0C/TRXvnxUHrcuRaQjJk=;
	h=To:Subject:From:Message-Id:Date; b=eaL356cCNoiPGCvjj8qsP8pcsMu1Vc3rShbRpJ00fwheBiygSldOj8ZZlClXCZfdlQqWRwc7rPM7od3GAqmUH54d3twJ2XTMNwta844M3BL8L4mdsWFJ3C7tsZOavutgWxWv3lhRaKIyhWfCOio0lLZa7WUl0PMKfXnG+UhFAOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cjd0q3EV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cjd0q3EV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E133C32781
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723086353;
	bh=6pDYZoqAr/mm4rdreXQCb/P0C/TRXvnxUHrcuRaQjJk=;
	h=To:Subject:From:Date:From;
	b=cjd0q3EVzKMgedA/RTKv8B2EOzZyDbNzYF7MxH3cKAzORuM3TU09MYDN7DO6lmB9i
	 TuGEtQGygveUy92vwfcDqdn8i9fu4GvwUyDdXKsekZkYsc13hfh1oKs9RSuu2uLhM3
	 YuUbUtxl+mkMZiZj1aDUSVb7Ty4AzPkqMeVc8TpC6VzSJGyxkPHEd+a7UwjXh82Fao
	 6/9BjIV2BGqCi5jWStUioiZ33MXmo34+G/gJvk+otFG9nZqFmDjgNtexOjC3QWcMjG
	 0rGIamL/amXwSxsi0JPiQyhnYd7rltZ+Qjb/7+rjc2jAh0ZMJsK5vEiIiP+rzGpGch
	 mn2QgxBvBPVPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A53C52D6F
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172308635358.18429.105318051469811375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9efe1a7d9c1484151726c51478fb6e4cfa3a2967261293a29652acb10f53286a
Date: Thu, 08 Aug 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723086353
