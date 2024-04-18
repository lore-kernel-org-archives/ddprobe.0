Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E576165FD6
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 20:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713472163; cv=none; b=LpYxNZ7qH89KArSX983BBKUlvSNaJf8h/6jGa0FieqLQz+U+wKRq2IR0AOjMbBd2pRE0xlamaFu/8av6ShZtMlW1qepehkfCYZoqurxFqV232Se/pxP6gcX5iielD6jXO+71wmAww+wHisUBWUrJm1Dbefs4aF9Cuew3Knl4LDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713472163; c=relaxed/simple;
	bh=PoiNYQwCihw70plg6bh+UfzXjfBb9jENvVjM9X2kBEY=;
	h=To:Subject:From:Message-Id:Date; b=PKkaCuc7lgtT5uiny/+0/36ivLALSHTu//OSb5y3C801KD3CmrNmSxuEoVQESMciko3rmX6e8DdbeUzTofXg5XmxlXo0DuxVNrj1+MeQPkkDDOUbKMptovEZQW1dq9Fmeo8qzTDoTNe86z3vaWlkKQYJx/85ey8QHFspGZ4qjN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+TrlTFs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+TrlTFs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC275C113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 20:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713472162;
	bh=PoiNYQwCihw70plg6bh+UfzXjfBb9jENvVjM9X2kBEY=;
	h=To:Subject:From:Date:From;
	b=U+TrlTFs9h8JjmHS0RgEhU5vK8gnu/84p8MrrG25S5MHw9DhupcIhdrd0i0z4F/Fr
	 nLIcoVkbbj0JKSuNrSnygsxK/pUpfLFVSbOWmxLhGQYb1C0/seIK0Vf8xF06lUfM6H
	 blEfQM0Di4aYPt0rhIJ0Bl6cvGmg1eA+WGwIfN0kYvJzEy/9imeUBjgBmnhEppC0lA
	 /T0y3B/Zd3hOIaPQTWkRYTTH3sQGWl8Ot4qoQ+hBaY5XoUJP/Ub2Syaf1j79dTKoMl
	 CEk96YqJaCOeU822uMJPNlOo314md3sZ7m+8lwtA5Cyd8oUdJVljEhx1GRXX4gn85r
	 hYFS0SEeuW8Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB798C4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 20:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171347216282.16666.966621232198888786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 848692d01e0fc374803aa4069ab712b9f1b11fd2676472797b1a383db5b80e74
Date: Thu, 18 Apr 2024 20:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713472162
