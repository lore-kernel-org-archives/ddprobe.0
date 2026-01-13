Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1715722127A
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768263834; cv=none; b=JK39kaEzXofPjTsX4hCbD8Gx/qW3SzwG63bg0AdJh872AYoAocNRIO4YUVL1BE8kudcGT1fFuAgTnivf0k6lPDZeRzsljyYPiIqFIAj/F1ol8BIn0Uc9nfKUQlhahLZCZGbUa2abV5Y7cCdrzQboSld/TEqwwed4gruCA0rIpBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768263834; c=relaxed/simple;
	bh=lTxgC6oCx38N+OjkZ49PLLR3K4JxJ0i4dGWVUZ+hFHg=;
	h=To:Subject:From:Message-Id:Date; b=bC23AwoVrwKORIxeTDP3RJAlIMtJB7fGCtfd8azMI20I0Av+QRU/SuJWZQ9sH+tAh4qA9ralgjw1pYzNxZIGrIR8ZNcgPJh0AWOdlTUCwFpPXyG+gFlh7oiD5iG/0vtJSq7glX5I9L7FKj0m/s5rVxvNM4hAaKekN6Tnlgjz510=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HfiNQryB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HfiNQryB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7F6C116D0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768263833;
	bh=lTxgC6oCx38N+OjkZ49PLLR3K4JxJ0i4dGWVUZ+hFHg=;
	h=To:Subject:From:Date:From;
	b=HfiNQryBAJDl5jOgjm5iY9nvxJZKoSsNv6pNPdP+8qt5fNeU2iupZqmGjpQw188yg
	 huMWOVieLATyyUQ4WBSeFO0r72ZpGyQJwZseTF50/Gd3GYschKK62gAAjKPwi0Zq6S
	 xqxhuGhqmDAITTfcCu98NCe7sn7TtdkHAh81ieKxGjVUa7MF/qck6m3Q/qmQv2CwIw
	 JZrZUAdWlYby3+N2bHNO/s116O0DW+CVnRkyzUPJjx9Tb2Q/Pp/UFcydXdmMH6bMFN
	 9rkc34LAX+XeWGO8dOfS9ZOhg1D1CgyymoZSuBHm7iSoWAk1FSK5ZlZe9PuACCR5YJ
	 NMOB3Z+k/ay6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAADCF45D7
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176826383357.7135.2467257422950035933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fd61caf9c3ea3dfb4fe6734131277784075fa56bb75b505293c8533f3fe6111
Date: Tue, 13 Jan 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768263833
